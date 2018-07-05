
FROM debian:latest
RUN apt update -y \
    && apt upgrade -y \
    && apt install -y wget ntpdate unzip
    
RUN mkdir -m 777 /file
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ADD config.zip /file/config.zip

CMD /entrypoint.sh
