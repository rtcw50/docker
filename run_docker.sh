XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
sudo docker run -e DISPLAY=$DISPLAY -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH  -v /local/rtcw50/Projects/riscv/:/mnt/riscv/ --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -it base_adl31614_ubu1604:latest /bin/bash
