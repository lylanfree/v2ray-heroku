
FROM alpine:latest

RUN apk update && apk add tzdata \

RUN mkdir -m 777 /file
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ADD config.zip /file/config.zip

CMD /entrypoint.sh
