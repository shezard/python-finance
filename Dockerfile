FROM jupyter/scipy-notebook:latest

RUN python -m pip install -U pandas && \
    python -m pip install -U pandas-datareader && \
    python -m pip install -U yfinance && \
    python -m pip install -U requests-cache && \
    python -m pip install -U beautifulsoup4 && \
    python -m pip install -U requests-cache && \
    python -m pip install -U scikit-learn && \
    python -m pip install -U mplfinance && \
    python -m pip install -U nbqa[toolchain]