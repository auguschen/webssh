FROM python:alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN pip install webssh -i https://pypi.tuna.tsinghua.edu.cn/simple --no-cache-dir

EXPOSE 8888

CMD wssh --encoding='utf-8'
