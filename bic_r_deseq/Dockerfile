FROM bioconductor/bioconductor_docker:RELEASE_3_12

COPY DESeq /usr/local/lib/R/site-library/DESeq

RUN R -e "install.packages('BiocManager',dependencies=TRUE, repos='http://cran.rstudio.com/')" \
&& R -e "BiocManager::install(version='3.12')" \
&& R -e "BiocManager::install(c('BiocGenerics', 'Biobase','genefilter','geneplotter','piano','limma'))" 

RUN R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/locfit/locfit_1.5-9.4.tar.gz')" \
&& R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/bitops/bitops_1.0-6.tar.gz')" \
&& R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/RCurl/RCurl_1.98-1.2.tar.gz')" \
&& R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/viridis/viridis_0.5.1.tar.gz')" \
&& R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/dendextend/dendextend_1.14.0.tar.gz')" \
&& R -e "update.packages('vctrs')" \
&& R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/plyr/plyr_1.8.6.tar.gz')" \
&& R -e "install.packages('https://cran.r-project.org/src/contrib/reshape_0.8.9.tar.gz')" \
&& R -e "install.packages('https://cran.r-project.org/src/contrib/GSA_1.03.2.tar.gz')" \
&& R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/openxlsx/openxlsx_4.2.3.tar.gz')" \
&& R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/logger/logger_0.2.1.tar.gz')"

RUN R -e "install.packages(c('ggdendro', 'ggrepel', 'tidyverse', 'Rserve', 'RSclient', 'cowplot', 'pheatmap', 'showtext', 'matrixStats'), dependencies=TRUE, repos='http://cran.rstudio.com/')"

