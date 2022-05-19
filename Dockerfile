FROM continuumio/miniconda3:4.11.0

LABEL maintainer=soulteary@gmail.com

ARG USE_MIRROR=1

RUN if [ "$USE_MIRROR" = true ] ; then sed -i -e "s/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/" /etc/apt/sources.list && sed -i -e "s/security.debian.org/mirrors.tuna.tsinghua.edu.cn/" /etc/apt/sources.list; fi

RUN apt update && \
    apt install -y libgl1-mesa-glx && \
    apt autoremove -y

RUN if [ "$USE_MIRROR" = true ] ; then pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple; fi

RUN conda install -y pytorch

RUN pip3 install --upgrade torch==1.9.0 torchvision==0.10.0

RUN pip install towhee