#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <errno.h>
#ifdef WIN32
  #include <winsock2.h>
#else
  #include <sys/socket.h>
  #include <netinet/in.h>
  #include <arpa/inet.h>
  #include <netdb.h>
  #include <unistd.h>
#endif

#define MAX_MSG_SIZE 1024

/* #define END_LINE 0x0A */
#define SERVER_PORT 9876
#define MAX_MSG 1024

void server_driver();

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
   fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
   exit(1);
  }

  server_driver();

  return 0;
}

void server_driver() {
  int sd_client;
  int sd_server;
  int rc = -1;
  socklen_t  client_length = -1;
  struct sockaddr_in client_addr;
  struct sockaddr_in server_addr;
  //char buffer[MAX_MSG_SIZE];
  char *buffer = NULL;
  struct hostent *host;
  unsigned int addr;
  #ifdef WIN32
  WSADATA wsaDat;
  #endif

  #ifdef WIN32
  WSAStartup( 0x101, &wsaDat );
  #endif
  errno = 0;
  if( (sd_server = socket(AF_INET, SOCK_STREAM, 0 )) < 0 ) {
    printf("INFO: server errno=<%d>\n", errno);
    fprintf(stderr, "ABORT: server initialization of socket failed.\n");
    exit(1);
  }

  server_addr.sin_family = AF_INET;
  server_addr.sin_addr.s_addr = htonl( INADDR_ANY );
  server_addr.sin_port = htons(SERVER_PORT);

  addr = inet_addr("localhost");
  printf("INFO: server addr=<%u>\n", addr);
  addr = server_addr.sin_addr.s_addr;
  printf("INFO: server addr=<%u>\n", addr);

  errno = 0;
  if( (host = gethostbyaddr((char *)&addr, sizeof(addr), AF_INET)) == NULL ) {
    printf("INFO: server errno=<%d>\n", errno);
    fprintf(stderr, "WARN: server gethostbyaddr failed.\n");
  } else {
    printf("INFO: server h_name: %s\n", host->h_name);
  }

  errno = 0;
  if((host = gethostbyname("localhost")) == NULL ) {
    printf("INFO: server errno=<%d>\n", errno);
    fprintf(stderr, "WARN: server unknown host=<%s>\n", "localhost");
  } else {
    printf("INFO: server h_name=<%s>\n", host->h_name);
  }

  // bind server port
  errno = 0;
  if( (rc = bind( sd_server, (struct sockaddr *)&server_addr, sizeof(server_addr))) < 0 ) {
    if( errno == 98 ) {
      printf("here\n");
      server_addr.sin_port = htons(SERVER_PORT - 1);
      if( (rc = bind( sd_server, (struct sockaddr *)&server_addr, sizeof(server_addr))) < 0 ) {
         printf("INFO: server errno=<%d>\n", errno);
         fprintf(stderr, "ABORT: server bind port failed rc=<%d>\n", rc);
         exit(1);
     }

    }
    printf("INFO: server errno=<%d>\n", errno);
    fprintf(stderr, "ABORT: server bind port failed rc=<%d>\n", rc);
    exit(1);
  }

  // listen for 1 connection
  errno = 0;
  if( (rc = listen( sd_server, 1 )) < 0 ) {
    printf("INFO: server errno=<%d>\n", errno);
    fprintf(stderr, "ABORT: server listen() failed rc=<%d>\n", rc);
    exit(1);
  }

  fprintf(stdout, "INFO: server waiting for data on port TCP<%u>\n", SERVER_PORT);

  client_length = sizeof(client_addr);
  if((sd_client = accept( sd_server, (struct sockaddr *)&client_addr, &client_length) ) < 0 ) {
    fprintf(stderr, "ABORT: server accept() failed.\n");
    exit(1);
  }

  fprintf(stdout, "INFO: server attempting to recv message.\n");
  buffer = (char *) malloc(MAX_MSG_SIZE);
  memset(buffer, '\0', MAX_MSG_SIZE);
  errno = 0;
  if( (rc = recv( sd_client, buffer, MAX_MSG_SIZE, 0 )) < 0 ) {
    printf("INFO: server errno=<%d>\n", errno);
    fprintf( stderr, "ABORT: server recv() failed rc=<%d>\n", rc);
    exit(1);
  }
  fprintf(stdout, "INFO: server received message length=<%zu>\n", strlen(buffer));
  fprintf(stdout, "INFO: server received message=<%s>\n", buffer);

  buffer = (char *) malloc(MAX_MSG_SIZE);
  memset( buffer, '\0', MAX_MSG_SIZE);
  sprintf(buffer, "some message");
  if((rc = send( sd_client, buffer, strlen(buffer) + 1, 0 )) < 0 ) {
    fprintf( stderr, "ABORT: server send() failure.\n" );
    close( sd_client);
    exit(1);
  }

  fprintf(stdout, "INFO: server sent message='%s'\n", buffer);
  fprintf(stdout, "INFO: server complete.\n");

  getc(stdin);
  close(sd_server);
  close(sd_client);
}
