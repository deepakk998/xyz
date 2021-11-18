#include <stdio.h>
#include <unistd.h>

int main()
{
    int pid;
    pid=fork();
    
    if(pid==0) //child
     {
      printf("\n PID of child process: %d\n",getpid());
      printf("\n its Parent PID: %d\n",getppid());
     }
     else //parent
     {
      printf("\n PID of parent process: %d\n",getpid());
      printf("\n its Child PID: %d\n",pid);
     }
}
