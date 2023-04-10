# Run Jupyter 

## Build the image 
./bin/build.sh

## Run it
./bin/start.sh

## Lint
docker exec -it jupyter sh -c 'nbqa pylint work/*.ipynb'

## Format
docker exec -it jupyter sh -c 'nbqa black work/*.ipynb'
