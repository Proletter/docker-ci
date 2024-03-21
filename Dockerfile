# Install R version 3.5
FROM rocker/shiny:latest

# Install Ubuntu packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean


# Copy configuration files into the Docker image
COPY . /app

# Install R dependencies
RUN R -e "install.packages(c('shiny', 'ggvis', 'dplyr', 'dbplyr','RSQLite'))"

# Make the ShinyApp available at port 80
EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/app', host = '0.0.0.0', port = 3838)"]