FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    curl \
    python 3 \
    python3-pip \
    && apt-get clean

COPY requirements.txt .
RUN pip3 install -r requirements.txt

WORKDIR /usr/src/app

COPY test-script.sh .
COPY sample_app/ ./sample_app/

RUN chmod +x test-script.sh

CMD [ "./test-script.sh" ]