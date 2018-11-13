# shinyapp_db

FROM rocker/shiny
MAINTAINER Tamas Szilagyi (tszilagyi@outlook.com)

## install R package dependencies (and clean up)
RUN apt-get update && apt-get install -y gnupg2 \
    libssl-dev \
    && apt-get clean \ 
    && rm -rf /var/lib/apt/lists/ \ 
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

RUN apt-get update && apt-get install -y unixodbc-dev unixodbc-bin unixodbc
RUN apt-get update && apt-get install -y freetds-dev freetds-bin tdsodbc

RUN Rscript -e "install.packages(c('devtools','lubridate','DBI', 'data.table', 'dplyr', 'shinydashboard', 'shinythemes'), repos='https://cran.rstudio.com/')" \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds
RUN Rscript -e "devtools::install_github('nik01010/dashboardthemes')" \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds
RUN Rscript -e "install.packages('odbc', repo = 'https://cran.rstudio.com/')"

## COPY ./app2 /srv/shiny-server/usa-trade/
## COPY ./shiny-server.conf /etc/shiny-server/shiny-server.conf

COPY ./odbcinst.ini /etc/
COPY ./odbc.ini /etc/

