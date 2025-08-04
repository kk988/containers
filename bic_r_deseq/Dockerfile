FROM r-base:4.4.1

RUN apt-get update \
&& apt-get install -y libcurl4-openssl-dev libssl-dev libfontconfig1-dev \
    libxml2-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev \
    libtiff5-dev libjpeg-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages('BiocManager',dependencies=TRUE, repos='http://cran.rstudio.com/')" \
&& R -e "BiocManager::install(c('DESeq2', 'apeglm'))"
RUN R -e "install.packages(c('tidyverse', 'funr', 'openxlsx', 'logger','ggdendro', 'ggrepel', 'sysfonts', 'showtext', 'R.utils', 'cowplot'), dependencies=TRUE, repos='http://cran.rstudio.com/')"

COPY . /rnaseq_analysis_modules
