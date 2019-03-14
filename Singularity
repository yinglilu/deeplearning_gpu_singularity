Bootstrap: docker
From: continuumio/anaconda3:5.1.0
#Python version: 3.6.4 

%post
/opt/conda/bin/conda update conda

/opt/conda/bin/conda install tensorflow-gpu
/opt/conda/bin/pip install torch torchvision
/opt/conda/bin/conda install theano pygpu

#/opt/conda/bin/pip install mxnet
#/opt/conda/bin/pip install dm-sonnet

#apt-get install openmpi-bin
#export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/openmpi/lib:$LD_LIBRARY_PATH
#/opt/conda/bin/pip install cntk-gpu

/opt/conda/bin/pip install niftynet
/opt/conda/bin/pip install opencv-python
/opt/conda/bin/pip install SimpleITK

