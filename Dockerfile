FROM lavaliere/jenkins-base

#base image uses debian:jesse
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
      sudo \
      docker \

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
CMD ["/bin/bash"]

