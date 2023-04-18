# Run Jupyter 

## Build and run
docker-compose up -d

## Crawl yahoo finance
./bin/scrap.sh

## Lint
docker exec -it jupyter sh -c 'nbqa pylint work/*.ipynb'

## Format
docker exec -it jupyter sh -c 'nbqa black work/*.ipynb'
