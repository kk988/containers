# use the upstream nextflow container as a base image
ARG NF_VERSION='24.03.0-edge'
FROM nextflow/nextflow:${NF_VERSION} AS build

FROM amazonlinux:2 AS final
COPY --from=build /usr/local/bin/nextflow /usr/bin/nextflow

RUN yum update -y \
 && yum install -y \
    curl \
    hostname \
    java \
    unzip \
    python3 \
 && yum clean -y all
RUN rm -rf /var/cache/yum

# install awscli v2
RUN curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" \
 && unzip -q /tmp/awscliv2.zip -d /tmp \
 && /tmp/aws/install -b /usr/bin \
 && rm -rf /tmp/aws*

ENV JAVA_HOME /usr/lib/jvm/jre-openjdk/

# invoke nextflow once to download dependencies
RUN nextflow -version

# install a custom entrypoint script that handles being run within an AWS Batch Job
COPY ./nextflow.aws.sh /opt/bin/nextflow.aws.sh
RUN chmod +x /opt/bin/nextflow.aws.sh

WORKDIR /opt/work

