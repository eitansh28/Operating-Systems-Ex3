all: originalserver threadServer client

originalserver: originalserver.o
	gcc -Wall -g originalserver.o -o originalserver -lpthread

threadServer: threadServer.o
	gcc -Wall -g threadServer.o -o threadServer -lpthread

client: client.o
	gcc -Wall -g client.o -o client

client.o: client.c 
	gcc -Wall -g -c client.c 
originalserver.o: originalserver.c 
	gcc -Wall -g -c originalserver.c 

threadServer.o: threadServer.c 
	gcc -Wall -g -c threadServer.c 


.PHONY: all clean

clean :
	rm -f *.o client originalserver threadServer