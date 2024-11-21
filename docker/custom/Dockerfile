FROM ubuntu:24.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget curl git

RUN echo 4

# COPY ./docker/custom/setup.sh /setup.sh
# RUN sh /setup.sh

# COPY ./docker/custom/setup-conda.sh /setup-conda.sh
# RUN sh /setup-conda.sh

COPY ./docker/custom/run.sh /run.sh

ENTRYPOINT ["sh", "/run.sh"]
