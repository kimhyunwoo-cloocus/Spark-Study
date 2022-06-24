FROM bitnami/spark:3.1.2
USER root
RUN apt update && apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa && install python3.8 -y
RUN ln -s /usr/bin/pip3 /usr/bin/pip && \
    ln -s /usr/bin/python3.8 /usr/bin/python
RUN pip install notebook==6.4.12
RUN pip install pyspark==3.1.2

CMD ["jupyter", "notebook", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''", "--ip=0.0.0.0", "--allow-root"]
#CMD ["jupyter-notebook", "--allow-root", "--JupyterApp.token=''", "--JupyterApp.password=''", "--ip='0.0.0.0'"]
