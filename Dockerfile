FROM apache/spark-py:v3.1.3
USER root
RUN apt update
RUN pip install notebook==6.4.12
RUN pip install pyspark==3.1.3

COPY runner.sh /

CMD ["/runner.sh"]
#CMD ["jupyter-notebook", "--allow-root", "--JupyterApp.token=''", "--JupyterApp.password=''", "--ip='0.0.0.0'"]
