dev: 
	mkdir -p ~/.irssi/scripts
	for script in `ls *.pl`; do \
		ln -s $(CURDIR)/$$script ~/.irssi/scripts/$$script; \
	done

build:
	mkdir -p ~/.irssi/scripts
	for script in `ls *.pl`; do \
		cp $(CURDIR)/$$script ~/.irssi/scripts/$$script; \
	done
