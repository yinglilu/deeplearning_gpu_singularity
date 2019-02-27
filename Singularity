Bootstrap: docker
From: continuumio/anaconda3:5.1.0
# Python version: 3.6.4 

%post
/opt/conda/bin/conda update conda

# will install cuda 9.0, cudann 7.3.1
/opt/conda/bin/conda install tensorflow-gpu

/opt/conda/bin/pip install torch torchvision
/opt/conda/bin/pip install niftynet
/opt/conda/bin/pip install opencv-python
/opt/conda/bin/pip install SimpleITK


