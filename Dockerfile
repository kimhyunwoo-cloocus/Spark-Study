FROM bitnami/spark:3.1.2
USER root
RUN apt update
RUN apt-get install wget -y
RUN apt-get install -y gnupg2
RUN wget https://download.docker.com/linux/ubuntu/gpg
RUN apt-key add gpg
RUN apt install gpg-agent -y
RUN apt-get install -y ca-certificates wget
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.10

CMD ["jupyter", "notebook", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''", "--ip=0.0.0.0", "--allow-root"]
#CMD ["jupyter-notebook", "--allow-root", "--JupyterApp.token=''", "--JupyterApp.password=''", "--ip='0.0.0.0'"]
