# Run Jupyter 

## Build the image 
docker build . -t jupyter

## Run it
MSYS_NO_PATHCONV=1 docker run --rm -p 8888:8888 -v "$(pwd):/home/jovyan/work" jupyter