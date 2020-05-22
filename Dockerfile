FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
COPY . /usr/src/dnsseeder
WORKDIR /usr/src/dnsseeder
RUN /usr/src/dnsseeder/scripts/before_install.sh
RUN cd /usr/src/dnsseeder && make
#RUN ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | head -3  > ip.txt
#RUN tail -n +2 ip.txt
RUN /usr/src/dnsseeder/./dnsseed -h seeder.bitcoincore.dev -n ns2.digitalocean.com. -m admin.bitcoincore.dev 2>/dev/null
