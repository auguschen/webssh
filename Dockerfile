FROM python:alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN pip install webssh -i https://pypi.tuna.tsinghua.edu.cn/simple --no-cache-dir && \
      sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
      apk update && apk add font-meslo-nerd && \
      ln -s /usr/share/fonts/meslo-nerd/* /usr/local/lib/python3.11/site-packages/webssh/static/css/fonts/

EXPOSE 8888

CMD wssh --encoding='utf-8'
