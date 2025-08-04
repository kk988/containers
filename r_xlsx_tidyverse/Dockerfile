FROM r-base:4.4.1

RUN apt-get update \
&& apt-get install -y libcurl4-openssl-dev libssl-dev libfontconfig1-dev \
    libxml2-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev \
    libtiff5-dev libjpeg-dev procps \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c('openxlsx', 'tidyverse'), dependencies=TRUE, repos='http://cran.rstudio.com/')"

