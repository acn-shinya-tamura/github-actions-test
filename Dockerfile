FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y && apt-get clean

WORKDIR /usr/src/app

COPY test-script.sh .

RUN chmod +x test-script.sh

CMD [ "./test-script.sh" ]