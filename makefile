#target: dependencies
#[tab] system command


#CC The name of the compiler 
# DEBUG The debugging flag.  
#This is -g in both g++ and cxx.
#The purpose of the flag is to include debugging information into the executable, 
#so that you can use utilities such as gdb to debug the code. 
#LFLAGS The flags used in linking.  But that's fine. We can use that. 
#As it turns out, you don't need any special flags for linking. 
#The option listed is "-Wall" which tells the compiler to print all warnings.
#CFLAGS The flags used in compiling and creating object files.  
#This includes both "-Wall" and "-c".
#The "-c" option is needed to create object files, i.e. .o files. 
CC=g++
CGLAGS=-c	-Wall

all:driver
	
driver:	main.o
		$(CC)	main.o -o driver

main.o: main.cpp
		$(CC)	$(CGLAGS) main.cpp

clean:
		rm *main.o driver


