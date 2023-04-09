# Run Jupyter 

## Build the image 
docker build . -t jupyter

## Run it
MSYS_NO_PATHCONV=1 docker run --name jupyter -it --rm -p 8888:8888 -v "$(pwd):/home/jovyan/work" jupyter

## Lint
docker exec -it jupyter sh -c 'nbqa pylint work/*.ipynb'

## Format
docker exec -it jupyter sh -c 'nbqa black work/*.ipynb'