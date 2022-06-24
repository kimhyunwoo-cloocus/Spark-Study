FROM bitnami/spark:3.1.2
USER root
RUN apt update
RUN apt-get install wget -y
# RUN apt-get install -y gnupg2
# RUN wget https://download.docker.com/linux/ubuntu/gpg
# RUN apt-key add gpg
# RUN apt install gpg-agent -y
RUN apt-get install -y ca-certificates wget
RUN apt install software-properties-common -y
# RUN apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu focal main"
RUN apt update
# RUN add-apt-repository ppa:deadsnakes/ppa
# RUN add-apt-repository universe
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add –
RUN sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list \
    && apt-get update && apt-get install -y \
    ...packages-you-want-to-install... \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update
# RUN apt-get install python3-pip
RUN apt install python3.8 -y
# RUN apt update
# RUN apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
# RUN wget https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tgz
# RUN tar -xf Python-3.10.*.tgz
# RUN cd Python-3.10.*/
# RUN ./configure --enable-optimizations
# RUN make -j $(nproc)
# RUN make altinstall
# RUN python3.10 --version

CMD ["jupyter", "notebook", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''", "--ip=0.0.0.0", "--allow-root"]
#CMD ["jupyter-notebook", "--allow-root", "--JupyterApp.token=''", "--JupyterApp.password=''", "--ip='0.0.0.0'"]
