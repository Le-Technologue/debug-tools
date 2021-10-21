# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marousta <marousta@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/15 12:41:53 by wetieven          #+#    #+#              #
#    Updated: 2021/10/21 18:54:39 by marousta         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && apt-get install -y \
	gcc \
	lldb \
	make \
	valgrind \
	clang \
	&& echo "cd /host_home" >> ~/.bashrc
