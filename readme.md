
[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/2388)


# A deep learning singularity container

## Aim

- Quickly set up medial imaging deep learning research environment on Linux(singularity container based)
- GPU acceleration (CUDA and cuDNN included)
- Supported frameworks and packages:

    - TensorFlow
    - Keras
    - PyTorch
    - NiftyNet
    - Scikit-learn
    - OpenCV
    - SimpleITK
    - Scikit-image
    - Anaconda packages: https://docs.anaconda.com/anaconda/packages/py3.6_linux-64/


## pre-requisite

- your host system must has an NVIDIA GPU card and a driver installed(you don't need to install cuda and cudnn)

- install singularity on your host

    ```bash
    # ubuntu
    sudo apt-get install -y singularity-container
    ```

- pull singularity image from singularity hub

    ```bash
    singularity pull --name deeplearning_gpu.simg shub://yinglilu/deeplearning_gpu_singularity
    ```

## usage

### 1. enter into singularity container, run command in the container

```bash
# enter into singularityh container: imagine it as SSH into (passwordless) another machine
# --nv: leverage the nvidia gpu card
singularity shell --nv /containers/deeplearning_gpu.simg
```

You will get:

```bash
Singularity: Invoking an interactive shell within container...

Singularity deeplearning_gpu.simg:~>
```

You can type command now, for instance:

```bash
python /path/to/<your_script.py>
```

After finishing your work, type

```bash
exit
```

to exit the container.

#### note: /path/to/

- Singularity will bind your host's $HOME to container's $HOME automatically. That's mean, if you do modification on your host's home directory, you can see the modifications in the container's home directory, and vice versa.

- If current working directory is in your home directory or bind path, Singularity will replicate your current working directory within the container.

    Therefore, `/path/to/` can be a relative path or absolute path of your home or bind path.

## 2. run singularity container command directly

```bash
singularity exec --nv deeplearning_gpu.simg python /path/to/<your_script.py>
```

### example: run NiftyNet command

```bash
singularity exec --nv deeplearning_gpu.simg net_download dense_vnet_abdominal_ct_model_zoo

singularity exec --nv deeplearning_gpu.simg net_segment inference -c ~/niftynet/extensions/dense_vnet_abdominal_ct/config.ini

# The segmentation output of this example application should be located at
~/niftynet/models/dense_vnet_abdominal_ct/segmentation_output/100__niftynet_out.nii.gz
```

---
## build your own singularity image

```bash
sudo singularity build deeplearning_gpu.simg Singularity
```

## test 

```bash
bash test.sh
```
