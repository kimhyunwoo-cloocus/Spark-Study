#! /bin/bash


/opt/entrypoint.sh
/opt/entrypoint.sh
jupyter notebook --no-browser --NotebookApp.token='' --NotebookApp.password='' --ip=0.0.0.0 --allow-root
