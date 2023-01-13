FROM python:alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN pip install webssh -i https://pypi.tuna.tsinghua.edu.cn/simple

EXPOSE 8888

CMD wssh
