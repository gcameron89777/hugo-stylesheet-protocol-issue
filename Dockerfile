FROM rocker/verse:4.2
ADD install_packages.R /tmp/install_packages.R
RUN apt-get update
RUN Rscript /tmp/install_packages.R && \
	rm -R /tmp/*
