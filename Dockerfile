FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && apt-get install -y \
	gcc \
	lldb \
	make \
	valgrind \
	clang

WORKDIR /home
