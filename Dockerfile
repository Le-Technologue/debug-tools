FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && apt-get install -y \
	apt-utils \
	clang \
	gcc \
	lldb \
	make \
	valgrind \
	gdb \
	git \
	libreadline-dev \
	fish

RUN	which fish | xargs chsh -s

ENTRYPOINT	fish

WORKDIR /home
