# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run_dbg_tools.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marousta <marousta@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/21 15:11:03 by wetieven          #+#    #+#              #
#    Updated: 2021/10/21 18:49:55 by marousta         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

CONTAINER=$(docker ps -a | grep dbg_tools | cut -c -12 | head -n 1)
if [ "$CONTAINER" != "" ]; then
	tmp=$(docker start $CONTAINER)
	docker exec -it $CONTAINER bash
	tmp=$(docker stop $CONTAINER)
else
	docker build -t dbg_tools .
	docker run -it -v ~:/host_home --security-opt seccomp=unconfined dbg_tools
fi
