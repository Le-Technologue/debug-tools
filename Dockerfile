FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && apt-get install -y \
	apt-utils \
	clang \
	gcc \
	g++ \
	htop \
	lldb \
	make \
	netcat \
	valgrind \
	gdb \
	git \
	libreadline-dev \
	fish

RUN	which fish | xargs chsh -s

ENTRYPOINT	fish

WORKDIR /home
