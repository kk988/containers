
ENV VARDICT_VERSION=1.8.3

RUN /bin/sh -c apk add --update \
&& apk add ca-certificates openssl bash perl \
&& apk add openjdk8-jre-base \
&& apk add R R-dev \
&& cd /tmp && wget https://github.com/AstraZeneca-NGS/VarDictJava/releases/download/v${VARDICT_VERSION}/VarDict-${VARDICT_VERSION}.zip \
&& unzip VarDict-${VARDICT_VERSION}.zip \
&& mv /tmp/VarDict-${VARDICT_VERSION} /usr/bin/vardict \
&& rm -rf /var/cache/apk/* /tmp/* \
&& chmod +x /usr/bin/runscript.sh \
&& exec /run_test.sh
