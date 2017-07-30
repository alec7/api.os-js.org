all: clean index server client

clean:
	rm -rf build/*
	mkdir build/client
	mkdir build/server

index:
	cp -r src/* build/

server:
	node node_modules/jsdoc/jsdoc.js -c jsdoc-server.json --verbose
#	node node_modules/esdoc/out/src/ESDocCLI.js -c esdoc-server.json

client:
	node node_modules/esdoc/out/src/ESDocCLI.js -c esdoc-client.json

.PHONY: server client clean index
