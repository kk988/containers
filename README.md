# Containers
This will hold various Dockerfiles for different bioinformatics tools in the hope to utilize for quick testing and pipeline building

## To build containers
I build the containers on my MacBook Pro M1, and I use docker buildx. Building with M1 apple chip will make some containers not work correctly on other platforms. Therefore with docker buildx I can specify multiple platforms. There may be requirements in order to use docker buildx (extra installations on your local machine). Check the docker documentation for more information. The general command to build looks like:
```
docker buildx build -t <name_of_container>:<tag> -t <name_of_container>:buildx-latest --platform linux/arm64/v8,linux/amd64 --push .
```
Where `name_of_container` is the name that you give the container (ex: star, nextflow, etc), and `tag` is just the tag you are giving this version of the container. 

## Building containers -> singularity images locally
For our purposes, we need to create docker images, and then we basically make them singularity images and use them with singularity. Sometimes though we don't want to push or images to dockerhub or some other online repository. To get around that, I have `build_simg_locally.sh` which will create a local docker respoitory on your machine, will allow you to build and push your docker image to there, then use singularity to pull the local docker image and change it into a singularity container. I'm not sure there is an easier way to do this. I guess the easier way is to learn to build images straight into singularity. To run this, simply `cd` into the folder where your Dockerfile is, and run `build_simg_locally.sh <img_name>` where img_name is the name of the resulting simg image (to create an image named hello_world.simg run `build_simg_locally.sh hello_world`).

## Note:
Some containers were build with execution on AWS in mind, therefore they have aws specific items included. Please read the `README`s of all the containers to see if there are any specifics. I tried to keep the containers as bare bones as possible (only including the tool that I'm containerizing) but for AWS some things needed to be added.

## Note2:
Some of these containers may not have actually been built, or may now be defunct or old. Please test for yourself.