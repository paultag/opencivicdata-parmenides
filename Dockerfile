FROM debian:unstable
MAINTAINER Paul Tagliamonte <paultag@sunlightfoundation.com>

RUN apt-get update && apt-get install -y \
    python3 python3-pip


RUN mkdir -p /opt/sunlightfoundation.com/opencivicdata-parmenides
COPY . /opt/sunlightfoundation.com/opencivicdata-parmenides
WORKDIR /opt/sunlightfoundation.com/opencivicdata-parmenides

RUN pip install -r requirements.txt

ENTRYPOINT ["./ocd-to-parmenides"]
