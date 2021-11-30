#include <stdio.h>
#include <memory.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

void AllocAndCommit(int size) {
    char* block = (char*) malloc(size);
    for (int pos = 0; pos < size; pos += 2048) {
        block[pos] = 13;
    }
}

int main(int argc, char**argv) {
    int sz;
    if (argc == 2) {
        sz = atoi(argv[1]);
    } else {
        sz = 100;
    }
    sz *= 2;
    int at = 0;
    while (true) {
        at++;
        printf("Allocating: %d.%d Gib\r", (at/2), (at & 1) * 5);
        fflush(stdout);
        AllocAndCommit(512 * 1024 * 1024);  // 512 Mib
        sleep(5);
        if (at == sz) {
            sleep(300);
            exit(0);
        }
    }
}