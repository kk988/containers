FROM python:3.8-slim-bullseye

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
    unzip 

# install awscli v2
RUN curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" \
    && unzip -q /tmp/awscliv2.zip -d /tmp \
    && /tmp/aws/install -b /usr/bin \
    && rm -rf /tmp/aws*

# install htseq
RUN python3 -m pip install numpy pysam htseq==2.0.2

# Set default working path
WORKDIR /docker_main

