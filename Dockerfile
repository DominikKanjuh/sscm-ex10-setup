FROM rocker/rstudio:4.4.0

RUN apt-get update && apt-get install -y \
    gfortran-9 \
    build-essential \
    libcurl4-gnutls-dev \
    libxml2-dev \
    libssl-dev \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-latex-recommended \
    texlive-latex-extra \
    && apt-get clean

RUN update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-9 100

RUN R -e "install.packages(c('stringi', 'stringr', 'rmarkdown'), repos='https://cloud.r-project.org/')"
RUN R -e "tinytex::install_tinytex(force = TRUE)"
RUN R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/DPpackage/DPpackage_1.1-7.4.tar.gz', repos=NULL, type='source')"

WORKDIR /home/rstudio

COPY /rmd-scripts /home/rstudio/rmd-scripts

ENV USER=rstudio
ENV PASSWORD=rstudio

EXPOSE 8787

CMD ["/init"]
