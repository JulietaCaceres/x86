#include <unistd.h>
#include<string.h>
extern void my_exit(int status);

const char msg[] = "Hello, world!\n";

int main(void) {
    write(1, msg, strlen(msg));
    my_exit(7);
}
