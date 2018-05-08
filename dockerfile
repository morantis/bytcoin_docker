FROM ubuntu:latest

ENV DAEMON_VERSION=3.0.2
ENV DAEMON_ZIP=bytecoin-daemons-${DAEMON_VERSION}-linux64.zip
ENV DAEMON_SRC=https://github.com/bcndev/bytecoin/releases/download/v${DAEMON_VERSION}/${DAEMON_ZIP}

RUN apt-get -yq update && \
    apt-get -y upgrade && \
    apt-get autoclean autoremove -yq && \
    apt-get clean -yq

RUN apt-get -y install tree wget unzip

RUN cd /tmp && \
    echo $DAEMON_SRC && \
    wget -q $DAEMON_SRC && \
    cd /usr/local/bin && \
    unzip /tmp/${DAEMON_ZIP} && \
    tree

VOLUME [ "/root/.bytecoin" ]    
EXPOSE  8081 8080

CMD ["bytecoind"]
