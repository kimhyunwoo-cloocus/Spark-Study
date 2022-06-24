FROM apache/spark-py:v3.1.3
USER root
RUN apt update
RUN pip install notebook==6.4.12
RUN pip install pyspark==3.1.3

CMD ["jupyter", "notebook", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''", "--ip=0.0.0.0", "--allow-root"]
#CMD ["jupyter-notebook", "--allow-root", "--JupyterApp.token=''", "--JupyterApp.password=''", "--ip='0.0.0.0'"]
