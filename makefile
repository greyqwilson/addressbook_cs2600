#Build the addressbook program
CC=gcc
DEBUGFLAGS=-g

all: addressbook

addressbook: src\\address_book_menu.c src\\address_book_fops.c  src\\main.c
	$(CC) src\\address_book_menu.c src\\address_book_fops.c  src\\main.c -o bin\\addressbook

debug:
	$(CC) $(DEBUGFLAGS) src\\address_book_menu.c src\\address_book_fops.c  src\\main.c -o bin\\addressbook

clean:
	del bin\\addressbook.exe
