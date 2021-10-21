#!/bin/bash

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run_dbg_tools.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wetieven <wetieven@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/21 15:11:03 by wetieven          #+#    #+#              #
#    Updated: 2021/10/21 15:14:36 by wetieven         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

set -e

image_name="dbg_tools"
container_name="dbg_tools"

if [ -z $1 ]; then
	volume=`pwd`
else
	volume=`realpath $1`
fi

if [ "$(docker images -q $image_name 2> /dev/null)" == "" ]; then
	docker build -t $image_name .
fi
docker run -it --rm --security-opt=seccomp=unconfined --volume="$volume:/home" --name="$container_name" $image_name
