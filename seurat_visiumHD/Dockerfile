FROM kaizhang/seurat:5.1

RUN R -e "install.packages('hdf5r',dependencies=TRUE, repos='http://cran.rstudio.com/')" \
&& R -e "install.packages('arrow',dependencies=TRUE, repos='http://cran.rstudio.com/')"

