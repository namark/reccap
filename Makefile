PREFIX	:= /usr/local
BIN		:= $(PREFIX)/bin

./xrectsel: ./xrectsel.c
	$(CC) -O3  -c $<
	$(CC) ./xrectsel.o -o $@ -lX11

clean:
	rm ./xrectsel.o

distclean: clean
	rm ./xrectsel

install: ./xrectsel
	install -D -s $< $(BIN)/xrectsel
	install -D ./reccap-start $(BIN)/reccap-start
	install -D ./reccap-kill $(BIN)/reccap-kill

uninstall:
	rm $(BIN)/xrectsel
	rm $(BIN)/reccap-start
	rm $(BIN)/reccap-kill
	rmdir -p $(BIN)

.PHONY : install uninstall clean distclean
