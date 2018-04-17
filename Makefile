.PHONY: all clean visualdiff realclean grep pup
.DEFAULT_GOAL := all

all: clean visualdiff grep pup

clean:
	-mv images/current.png images/previous.png
	rm -f images/diff.png

realclean:
	rm -rf images
	rm -rf node_modules

node_modules:
	npm install

images/previous.png:
	mkdir -p images
	node index.js
	mv images/current.png images/previous.png

images/current.png: node_modules images/previous.png
	node index.js

images/diff.png: images/current.png images/previous.png
	compare images/current.png images/previous.png -compose src images/diff.png

visualdiff: images/diff.png
	open images/diff.png

grep:
	curl -s https://ultimatehackingkeyboard.com/delivery-status | grep --color=auto 22832

pup:
	curl -s https://ultimatehackingkeyboard.com/delivery-status | pup '.post-content ul li:contains("22832") json{}' | jq '. | length'
