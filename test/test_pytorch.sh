IMAGE_NAME=~/test/pytorch_gpu.simg

# test pytorch
singularity exec --nv ${IMAGE_NAME} python -c "import torch;print('pytorch version: ' + torch.__version__)"

# test simpleitk
singularity exec --nv ${IMAGE_NAME} python -c "import SimpleITK as sitk; print('SimpleITK version: ' +  sitk.Version_VersionString())"

# test opencv
singularity exec --nv ${IMAGE_NAME} python -c "import cv2; print('Opencv version: ' + cv2.__version__)"

# test skimage
singularity exec --nv ${IMAGE_NAME} python -c "import skimage; print('skimage version: ' + skimage.__version__)"

# test pillow
singularity exec --nv ${IMAGE_NAME} python -c "import PIL; print('PIL version: ' + PIL.__version__)"
