PREFIX	:= /usr/local
BIN		:= $(PREFIX)/bin

SCRIPTS	:= ./reccap-start ./reccap-kill

default:
	echo "Use install/uninstall, there is nithing to build"

install:
	install -D ./reccap-start $(BIN)/reccap-start
	install -D ./reccap-kill $(BIN)/reccap-kill

uninstall:
	@-rm $(BIN)/reccap-start
	@-rm $(BIN)/reccap-kill
	@-rmdir -p $(BIN)

.PHONY : install uninstall default
