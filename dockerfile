FROM ubuntu:latest
WORKDIR /usr/local/bin
RUN apt-get update -y -qq && apt upgrade -y -qq
RUN apt-get install -y -qq sudo curl git vim htop wget bzip2 screen
ENV bytecoinVersion=2.1.2
RUN wget https://bytecoin.org/storage/wallets/bytecoin_reference_client/bytecoin-${bytecoinVersion}-linux.tar.gz
RUN tar -xvzf bytecoin-${bytecoinVersion}-linux.tar.gz && rm -f bytecoin-${bytecoinVersion}-linux.tar.gz
RUN cd bytecoin-${bytecoinVersion}-linux && mv * .. && cd .. && rm -rf bytecoin-${bytecoinVersion}-linux

VOLUME [ "/root/.bytecoin" ]
EXPOSE  8081
CMD ["bytecoind", "--config-file /root/.bytecoin/bytecoin.conf"]