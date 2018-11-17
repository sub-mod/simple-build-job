ARG  CODE_VERSION=7
FROM centos:${CODE_VERSION}

#FROM nvidia/cuda:9.0-cudnn7-devel-centos7

MAINTAINER Subin Modeel <smodeel@redhat.com>

USER root

# DONOT uncomment. uncomment for dev.
ARG BAZEL_VERSION=0.13.0
ARG NB_PYTHON_VER=3.7
ENV BAZEL_VERSION=$BAZEL_VERSION
ENV PYTHON_VER=$NB_PYTHON_VER

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
ENV NVIDIA_REQUIRE_CUDA "cuda>=9.0" # depending on the driver
ENV TESTCMD "/bin/nvidia-smi"
ENV BASHWAITCMD "trap : TERM INT; $TESTCMD && sleep infinity & wait"

CMD exec /bin/bash -c "$BASHWAITCMD"


