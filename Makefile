INCLUDE :=-I./
LIB :=-lhiredis -lpthread
CC	:= g++ $(DEBUG) -m64 -fPIC -g
LIBPATH := -L./ 

test:C_MyRedis.o test.o
	$(CC) -o test $(LIBPATH) $(LIB) C_MyRedis.o test.o
test.o:test.cpp
	$(CC) -c test.cpp
C_MyRedis.o:C_MyRedis.cpp
	$(CC) -c $(INCLUDE) C_MyRedis.cpp

clean:
	rm -rf test.o
	rm -rf C_MyRedis.o
	rm -rf test