FROM jupyter/all-spark-notebook:notebook-6.4.12

RUN pip install pyspark==3.3.0

CMD ["jupyter", "notebook", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''", "--ip=0.0.0.0", "--allow-root"]
#CMD ["jupyter-notebook", "--allow-root", "--JupyterApp.token=''", "--JupyterApp.password=''", "--ip='0.0.0.0'"]
