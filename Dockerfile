FROM jupyter/scipy-notebook:latest

RUN python -m pip install yfinance
RUN python -m pip install requests-cache