FROM registry.access.redhat.com/ubi8/ubi:latest

RUN dnf update -y && dnf clean all

# install bison
#ARG BISON_VERSION=3.8
#ADD http://ftp.gnu.org/gnu/bison/bison-${BISON_VERSION}.tar.gz /bison/
#RUN tar -xzvf /bison/bison-${BISON_VERSION}.tar.gz -C /bison/ && cd /bison/bison-${BISON_VERSION} && ./configure && make && make install

# install flex
#ARG FLEX_VERSION=2.6.4
#ADD https://github.com/westes/flex/files/981163/flex-${FLEX_VERSION}.tar.gz /flex/
#RUN tar -xzvf /flex/flex-${FLEX_VERSION}.tar.gz -C /flex/ && cd /flex/flex-${FLEX_VERSION} && ./configure && make && make install

CMD [ "/bin/sh", "-ec", "while :; do echo '.'; sleep 6 ; done"]
