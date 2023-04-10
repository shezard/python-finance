#!/bin/bash
MSYS_NO_PATHCONV=1 docker run --name jupyter -it --rm -p 8888:8888 -v "$(pwd)/work:/home/jovyan/work" -v "$(pwd)/data:/home/jovyan/data" jupyter