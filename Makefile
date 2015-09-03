build:
	mkdir -p ~/.irssi/scripts
	for script in `ls *.pl`; do \
		ln -s $(CURDIR)/$$script ~/.irssi/scripts/$$script; \
	done
