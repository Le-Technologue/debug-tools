FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && apt-get install -y \
	apt-utils \
	clang \
	fish \
	gcc \
	g++ \
	gdb \
	git \
	htop \
	lldb \
	make \
	valgrind

# Readline library for 42 school's minishell project
#
# RUN	apt-get install -y \
# 	libreadline-dev \

# Networking debug tools for 42 school's ft_irc project
#
# RUN	apt-get install -y \
# 	netcat \
# 	weechat

RUN	which fish | xargs chsh -s

ENTRYPOINT	fish

WORKDIR /home
