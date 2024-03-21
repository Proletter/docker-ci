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

Pipeline can be used on any container registry of choice. You would need to generate a PAT from the registry.

Link for Dockerhub: <https://docs.docker.com/security/for-developers/access-tokens/>

After which you would need to create a variable called `REGISTRY_USERNAME`for your registry username and a secret called `REGISTRY_PAT` for the generated PAT in your github repo variables like below:

#### Secret
![ScreenShot](/images/secret-example1.jpg)


![ScreenShot](/images/secret-example2.jpg)

#### Variable
![ScreenShot](/images/varible-example.jpg)

The pipeline is set to trigger on PR, merge and push to main and also on a timer schedule for 7PM every saturday.
On PR, the pipeline simply builds the image but doesn't push it. 