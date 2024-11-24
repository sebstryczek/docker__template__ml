FROM nvidia/cuda:12.6.2-base-ubuntu24.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget curl git

COPY ./docker/custom/setup-conda.sh /setup-conda.sh
RUN sh /setup-conda.sh

ENTRYPOINT ["sh", "/workspace/app/run.sh"]
