# Run Jupyter 

docker build . -t jupyter
MSYS_NO_PATHCONV=1 docker run --rm -p 8888:8888 -v "$(pwd):/home/jovyan/work" jupyter