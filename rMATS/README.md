# rMATS container

Just kidding, creators of rMATS have a dockerhub: https://hub.docker.com/r/xinglab/rmats. Their docker file is in their main repo: https://github.com/Xinglab/rmats-turbo/blob/master/Dockerfile in case someone wanted to slightly alter it, or if it needed to be rebuilt for a different platform/arch type.

They have STAR installed in the container as well as rmats. I believe that is required if you are going to run mats using fastq instead of bams, but am not familiar if it is needed for mats when alignment was previously completed. Will update if I remember when I figure it out!