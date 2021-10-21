# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wetieven <wetieven@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/15 12:41:53 by wetieven          #+#    #+#              #
#    Updated: 2021/10/21 15:16:44 by wetieven         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && apt-get install -y \
	gcc \
	lldb \
	make \
	valgrind

WORKDIR /home
