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

docker build -t dbg_tools .
docker run -it -v ~:/host_home --security-opt seccomp=unconfined dbg_tools
