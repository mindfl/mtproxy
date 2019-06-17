FROM ubuntu:16.04

RUN apt-get update && \
    apt install -y git curl build-essential libssl-dev zlib1g-dev && \
    git clone https://github.com/TelegramMessenger/MTProxy /usr/local/src/MTProxy

WORKDIR /usr/local/src/MTProxy
VOLUME ["/build"]
COPY build.sh /usr/local/sbin/

CMD ["build.sh"]
