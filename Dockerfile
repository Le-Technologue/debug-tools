FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && apt-get install -y \
	clang \
	gcc \
	lldb \
	make \
	valgrind

WORKDIR /home
