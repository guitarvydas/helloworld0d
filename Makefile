LIBSRC=0D/odin/std
ODIN_FLAGS ?= -debug -o:none
D2J=0d/das2json/das2json

run: helloworld0d transpile.drawio.json
	./helloworld0d 'Hello World 0D' main helloworld0d.drawio $(LIBSRC)/transpile.drawio

helloworld0d: helloworld0d.drawio.json
	odin build . $(ODIN_FLAGS)

helloworld0d.drawio.json: helloworld0d.drawio transpile.drawio.json
	$(D2J) helloworld0d.drawio

transpile.drawio.json: $(LIBSRC)/transpile.drawio
	$(D2J) $(LIBSRC)/transpile.drawio

clean:
	rm -rf helloworld0d helloworld0d.dSYM
	rm -rf *.json
	rm -rf *~

