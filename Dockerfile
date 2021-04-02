
FROM alpine:latest

RUN apk add -U tzdata curl && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

RUN mkdir -m 777 /file \
 && mkdir -m 777 /v2raybin \ 
 && cd /v2raybin \
 && curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/download/v4.31.0/v2ray-linux-64.zip \
 && unzip v2ray.zip \
 && chmod +x /v2raybin/v2ray \
 && rm -rf v2ray.zip \
 && chgrp -R 0 /v2raybin \
 && chmod -R g+rwX /v2raybin 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ADD config.zip /file/config.zip

CMD /entrypoint.sh
