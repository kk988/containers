FROM perl:5.32.1-threaded-bullseye

LABEL container.base.image="perl:5.32.1-threaded-bullseye"
LABEL software.name="SpliceTools"
LABEL software.description="Suite of downstream RNA splicing analysis tools to investigate mechanisms and impact of alternative splicing"
LABEL software.documentation="https://github.com/flemingtonlab/SpliceTools"
LABEL software.license="GNU General Public License v3.0"

RUN apt-get update -y && apt-get update -y \
    && apt-get install -y --no-install-recommends \
        python3-pip \
    && wget http://ftp.us.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.8_all.deb \
    && apt-get install -y --no-install-recommends ./ttf-mscorefonts-installer_3.8_all.deb 


# Perl requirements
RUN cpanm Parallel::ForkManager

# Python requirements
RUN pip3 install matplotlib seaborn pandas scipy \
    && ln -s /usr/bin/python3 /usr/bin/python

ADD https://github.com/flemingtonlab/SpliceTools/archive/refs/tags/v1.1.tar.gz /usr/bin/

RUN tar -xzf /usr/bin/v1.1.tar.gz -C /usr/bin/

WORKDIR /usr/bin/SpliceTools-1.1/bin

