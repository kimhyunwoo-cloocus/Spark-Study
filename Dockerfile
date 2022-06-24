FROM bitnami/spark:3.1.2
USER root
RUN apt update
RUN apt-get install wget -y
RUN apt-get install -y gnupg2
RUN wget https://download.docker.com/linux/ubuntu/gpg
RUN apt-key add gpg
RUN apt install gpg-agent -y
RUN apt-get install -y ca-certificates wget
RUN apt install software-properties-common -y
RUN apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu focal main"
RUN apt update
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.10

CMD ["jupyter", "notebook", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''", "--ip=0.0.0.0", "--allow-root"]
#CMD ["jupyter-notebook", "--allow-root", "--JupyterApp.token=''", "--JupyterApp.password=''", "--ip='0.0.0.0'"]
