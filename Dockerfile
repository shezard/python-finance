FROM jupyter/scipy-notebook:latest

RUN python -m pip install pandas
RUN python -m pip install pandas-datareader
RUN python -m pip install yfinance
RUN python -m pip install requests-cache
RUN python -m pip install beautifulsoup4
RUN python -m pip install requests-cache
RUN python -m pip install scikit-learn
RUN python -m pip install mplfinance