#!/bin/bash
xhost +si:localuser:$(whoami) > /dev/null
docker run \
        --privileged \
        --rm \
        -ti \
        -e DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
        -v ~/docker-vols/wine:/home/docker/wine/ \
        -v ~/docker-devs/winbox/winbox.template:/home/docker/templates/winbox.template:ro \
        -v /etc/localtime:/etc/localtime:ro \
        -u $(id -u):$(id -g) \
        yantis/wine /bin/bash -c "sudo chown docker:docker ~/wine/; sudo initialize-graphics >/dev/null 2>/dev/null; vglrun /home/docker/templates/winbox.template;"
