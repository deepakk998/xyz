#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main()
{
 int pid = fork();
 
 if (pid>0){
   int parentid = getpid();
   print("[From parent] Parent PID:%d\n",parentId);
   sleep(5);
   system("ps-s");
   }
   else if(pid==00
   {
    int childId = getpid();
    printf("[From child] Parent PID:%d\n",parentId);
    }
    
    return 0;
 }
