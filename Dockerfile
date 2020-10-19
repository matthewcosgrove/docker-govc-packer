FROM mattcosgrove/govc

RUN apt-get update && \
    apt-get install -y unzip

ENV PACKER_VERSION=1.6.4

ADD https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip ./

RUN unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/local/bin
RUN rm -f packer_${PACKER_VERSION}_linux_amd64.zip
