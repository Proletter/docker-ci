## Shiny app CI/CD pipeline

source project: https://github.com/rstudio/shiny-examples/tree/main/051-movie-explorer

CI/CD tool: Github actions

### Instructions on how to build docker image

open project and ensure you are in the root folder that has the Dockerfile.
Run ``` docker build -t <image name>:<image tag> .```

To run container from image run:
``` docker run -p <host port>:3838 <image name>:<image tag>```

REGISTRY_USERNAME: ${{ vars.REGISTRY_USERNAME }}
### How to set up pipeline on own environment

Pipeline can be used on any container registry of choice. 
What you do need is to create a variable called `REGISTRY_USERNAME` and a secret called `REGISTRY_PAT` in your github repo variables like below:

