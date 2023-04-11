FROM jupyter/scipy-notebook:latest

RUN python -m pip install -U pandas && \
    python -m pip install -U pandas-datareader && \
    python -m pip install -U yfinance && \
    python -m pip install -U requests-cache && \
    python -m pip install -U beautifulsoup4 && \
    python -m pip install -U requests-cache && \
    python -m pip install -U scikit-learn && \
    python -m pip install -U mplfinance && \
    python -m pip install -U quandl && \
    python -m pip install -U nbqa[toolchain] && \
    python -m pip install -U nasdaq-data-link && \
    pip install python-dotenv

RUN jupyter notebook --generate-config -y
RUN echo "c.NotebookApp.token = 'token'">>/home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.password = u''">>/home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.open_browser = False">>/home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.ip = 'localhost'">>/home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.port = 8888">>/home/jovyan/.jupyter/jupyter_notebook_config.py