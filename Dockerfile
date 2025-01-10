FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    python3 \
    && apt-get clean

WORKDIR /usr/src/app

COPY test-script.sh .
COPY sample_app/ ./sample_app/

RUN chmod +x test-script.sh

CMD [ "./test-script.sh" ]