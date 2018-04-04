# data-science-stack
Customised docker image for data science based on [Opinionated stacks: data science notebook](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook)

## Run
`docker run -it --rm -p 8888:8888 codles/data-science-stack`  
or
`docker run -it -v $HOME:/home/jovyan/mirrored --rm -p 8888:8888 codles/data-science-stack start.sh jupyter lab`  

