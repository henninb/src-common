#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

#if defined(WIN32)
  #include <winsock2.h>
#else
  #include <sys/types.h>
  #include <sys/socket.h>
  #include <netinet/in.h>
  #include <arpa/inet.h>
  #include <netdb.h>
#endif

#define SERVER_PORT 9876
#define MAX_MSG_SIZE 1024

// AF_INET = tcp

void client_driver( char *, char * );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    //fprintf( stderr, "Usage: %s <server_ip> <string_data>\n", argv[0]);
    //fprintf( stderr, "Example: %s <localhost> <anyways>\n", argv[0]);
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  client_driver("localhost", "example");
  //client_driver(argv[1], argv[2]);
  return 0;
}

void client_driver( char *serverName, char *message ) {
  int sd_client = -1;
  int sd_server = -1;
  int rc = -1;
  //int server_length = -1;
  struct sockaddr_in client_addr;
  struct sockaddr_in server_addr;
  struct hostent *host;
  char *buffer = NULL;
  #if defined(WIN32)
  WSADATA wsaData;
  #endif

  // server_port = atoi(argv[2]);

  #if defined(WIN32)
  WSAStartup( 0x101, &wsaData );
  #endif

  // input is the string ip address
  errno = 0;
  if((host = gethostbyname(serverName)) == NULL ) {
    printf("INFO: client errno=<%d>\n", errno);
    fprintf(stderr, "ABORT: client gethostbyname() failed for: '%s'\n", serverName);
    exit(1);
  }

  server_addr.sin_family = host->h_addrtype;
  if( host == NULL) printf("host is null\n");
  memcpy((char *)&server_addr.sin_addr.s_addr, host->h_addr_list[0], host->h_length);
  printf("INFO: client host->h_length=<%d>\n", host->h_length);
  //printf("host->h_addr_list[0]=<%s>\n", host->h_addr_list[0]);

  // convert the port number
  server_addr.sin_port = htons(SERVER_PORT);

  // create an instance of a socket
  errno = 0;
  if((sd_client = socket(host->h_addrtype, SOCK_STREAM, 0 )) < 0 ) {
    printf("INFO: client errno=<%d>\n", errno);
    fprintf(stderr, "ABORT: client socket() cannot open tcp socket.\n");
    exit(1);
  }

  client_addr.sin_family = AF_INET;
  client_addr.sin_addr.s_addr = htonl(INADDR_ANY);
  client_addr.sin_port = htons(0);

  // bind to an open local port given by the system
  errno = 0;
  if((rc = bind(sd_client, (struct sockaddr *)&client_addr, sizeof(client_addr))) < 0 ) {
    printf("INFO client errno=<%d>\n", errno);
    fprintf(stderr, "ABORT: %s: client bind() cannot bind port TCP<%u>\n", serverName, SERVER_PORT);
    exit(1);
  }

  // connect to server
  errno = 0;
  if((rc = connect(sd_client, (struct sockaddr *)&server_addr, sizeof(server_addr))) < 0 ) {
    if( errno == 111 ) {
      server_addr.sin_port = htons(SERVER_PORT - 1);
      errno = 0;
      if((rc = connect(sd_client, (struct sockaddr *)&server_addr, sizeof(server_addr))) < 0 ) {
        printf("INFO client errno=<%d>\n", errno);
        fprintf(stderr, "ABORT: client connect() failed.\n");
        if( errno == 111 ) {
          printf("INFO client port refused=<%d>\n", errno);
        }
        exit(1);
      }

      //reconnect on a diff port
    }

    fprintf(stderr, "INFO client errno=<%d>\n", errno);
    fprintf(stderr, "ABORT: client connect() failed.\n");
    //exit(1);
  }

  // client can only send messages
  // client cannot receive messages
  errno = 0;
  if( (rc = send( sd_client, message, strlen(message) + 1, 0 )) < 0 ) {
    printf("INFO: client errno = <%d>\n", errno);
    fprintf(stderr, "ABORT: client send() failure.\n" );
    close(sd_client);
    exit(1);
  }

  fprintf(stdout, "INFO: client sent message=<%s>\n", message);

  buffer = (char *) malloc(MAX_MSG_SIZE + 1);
  memset(buffer, '\0', MAX_MSG_SIZE + 1);
  errno = 0;
  while( (rc = recv(sd_client, buffer, MAX_MSG_SIZE, 0 )) < 0 ) {
    //printf("ABORT: recv failure: %d\n", rc);
    printf("INFO: client errno %d\n", errno);
  }

  fprintf(stdout, "INFO: client received message='%s'\n", buffer);
  fprintf(stdout, "INFO: client complete.\n");
  getc(stdin);
  close(sd_server);
  close(sd_client);

  #if defined(WIN32)
  WSACleanup();
  #endif
}
