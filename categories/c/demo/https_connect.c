#include <stdio.h>
#include <string.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>

/*
 * http(s) proxy
 * test it on tower.im
 */
int main(int argc, char *argv[]) {
    int sock;
    struct sockaddr_in server;
    char server_reply[2000];

    // Create socket
    sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock == -1) {
        printf("Could not create socket");
    }
    puts("Socket created");

    server.sin_addr.s_addr = inet_addr("112.124.24.183"); // 112.124.24.183 is ip of tower.im
    server.sin_family = AF_INET;
    server.sin_port = htons(443);

    // Connect to remote server
    if (connect(sock, (struct sockaddr *) &server, sizeof(server)) < 0) {
        perror("connect failed. Error");
        return 1;
    }

    puts("Connected\n");

    // Send some data
    char greeting[] = "CONNECT 112.124.24.183:443 HTTP/1.1\r\n\r\n";

    printf("connect header is %s \n", greeting);

    if (send(sock, greeting, strlen(greeting), 0) < 0) {
        puts("Send connect header failed");
        return 1;
    }

    // Receive a reply from the server
    if (recv(sock, server_reply, 2000, 0) < 0) {
        puts("recv failed");
    }

    puts("Server reply :");
    puts(server_reply);

    close(sock);
    return 0;
}
