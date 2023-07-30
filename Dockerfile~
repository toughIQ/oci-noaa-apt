FROM debian:12-slim
LABEL org.opencontainers.image.authors="toughIQ@gmail.com"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y wget unzip

RUN mkdir noaa-apt
WORKDIR noaa-apt
RUN wget -q https://github.com/martinber/noaa-apt/releases/download/v1.4.0/noaa-apt-1.4.0-x86_64-linux-gnu-nogui.zip
RUN unzip noaa-apt-1.4.0-x86_64-linux-gnu-nogui.zip

ADD renderall.sh /noaa-apt/.
RUN chmod +x /noaa-apt/renderall.sh

CMD /noaa-apt/renderall.sh





    
