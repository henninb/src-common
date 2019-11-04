/usr/src/sys/sys/syscall.h

#define SYS_syscall     0
#define SYS_exit        1
#define SYS_fork        2
#define SYS_read        3
#define SYS_write       4
#define SYS_open        5
#define SYS_close       6
#define SYS_wait4       7
                                /* 8 is old creat */
#define SYS_link        9
#define SYS_unlink      10
                                /* 11 is obsolete execv */
#define SYS_chdir       12
#define SYS_fchdir      13
#define SYS_mknod       14
#define SYS_chmod       15
#define SYS_chown       16
#define SYS_break       17
#define SYS_getfsstat   18
