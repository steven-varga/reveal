# Copyright (c) 2020 vargaconsulting, Toronto,ON Canada
# Author: Varga, Steven <steven@vargaconsulting.ca>

install:
	npm install

view:
	grunt serve

speaker-view:
	node plugin/notes-server
upload:
	grunt  	
	rsync -a  js osaka.vargaconsulting.ca:lightning-talk/
	rsync -a  css osaka.vargaconsulting.ca:lightning-talk/
	rsync -a  images osaka.vargaconsulting.ca:lightning-talk/
	rsync -a  lib osaka.vargaconsulting.ca:lightning-talk/
	rsync -a  plugin osaka.vargaconsulting.ca:lightning-talk/
	rsync -a  data osaka.vargaconsulting.ca:lightning-talk/
	rsync -a  index.html osaka.vargaconsulting.ca:lightning-talk/
	
.PHONY: upload


