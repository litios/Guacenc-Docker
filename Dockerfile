FROM ubuntu:18.04

ENV LD_LIBRARY_PATH=/usr/local/lib

RUN apt update && apt install -y libcairo2-dev libjpeg-turbo8-dev libpng-dev libtool-bin libossp-uuid-dev libavcodec-dev libavformat-dev libavutil-dev libswscale-dev wget ffmpeg

RUN wget -O guacamole-server-1.2.0.tar.gz "http://apache.org/dyn/closer.cgi?action=download&filename=guacamole/1.2.0/source/guacamole-server-1.2.0.tar.gz"
RUN  tar -xzf guacamole-server-1.2.0.tar.gz
WORKDIR /guacamole-server-1.2.0
RUN ./configure --with-init-dir=/etc/init.d
RUN make
RUN make install

ENTRYPOINT ["/bin/bash"]
