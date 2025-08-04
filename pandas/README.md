# Pandas image

This is so silly, but I like containers.

This is just a python container with pandas installed. 

To build do: 
```
docker buildx build -t <name_of_container>:<tag> -t <name_of_container>:buildx-latest --platform linux/arm64/v8,linux/amd64 --push .
```
Where `name_of_container` is the name that you give the container (ex: star, nextflow, etc), and `tag` is just the tag you are giving this version of the container. 

Then to change into singularity image
```
docker run --rm --platform linux/amd64 \
-v .:/home quay.io/singularity/singularity:v3.7.4-slim build /home/$SIMG_FILE docker://kk988/<container>:<tag>;
```