FROM python:3.9-slim-bullseye

LABEL container.base.image="python:3.8-slim-bullseye"
LABEL software.name="htseq"
LABEL software.version=2.0.2
LABEL software.description="Aligner for sequencing data - with updated base image from mgibio/star"
LABEL software.website="https://pypi.org/project/HTSeq/"
LABEL software.documentation="https://htseq.readthedocs.io/en/master/index.html"
LABEL software.license="GPL-3.0"

RUN apt-get update -y && apt-get update -y 

RUN apt-get install -y --no-install-recommends \
    curl \
    unzip \
    gcc \
    g++ \
    python3-dev

# install htseq
RUN python3 -m pip install numpy \
&& python3 -m pip install htseq==2.0.2

# Set default working path
WORKDIR /docker_main

