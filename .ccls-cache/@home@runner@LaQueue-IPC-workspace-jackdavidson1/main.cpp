#include <iostream>
#include <pthread.h>

int main() {
    pthread_t p;
    pthread_create(&p, NULL, NULL, NULL);
    std::cout << p;
}