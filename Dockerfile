FROM centos:7

MAINTAINER Subin Modeel <smodeel@redhat.com>

USER root


#ENV NVIDIA_VISIBLE_DEVICES all
#ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
#ENV NVIDIA_REQUIRE_CUDA "cuda>=9.0" # depending on the driver
#ENV TESTCMD "/bin/nvidia-smi"
ENV TESTCMD "ls -l"
ENV BASHWAITCMD "trap : TERM INT; $TESTCMD && sleep infinity & wait"

CMD exec /bin/bash -c "$BASHWAITCMD"


