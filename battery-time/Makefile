PREFIX = /usr/local
src = $(wildcard *.c)

dwm-bat-time: $(src)
	    $(CC) -Wall -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f dwm-bat-time

.PHONY: install
install: dwm-bat-time 
	mkdir -p $(DESTDIR)$(PREFIX)/bin
		cp $< $(DESTDIR)$(PREFIX)/bin/dwm-bat-time

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwm-bat-time
