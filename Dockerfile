FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-devel
RUN pip install "mmcv-full>=2.0.0rc4,<2.2.0"
RUN pip install mmsegmentation==0.20.2
RUN pip install opencv-python-headless
RUN pip install ninja
RUN pip install pycocotools
RUN pip install numba
RUN pip install lyft_dataset_sdk
RUN pip install nuscenes-devkit
RUN pip install open3d
RUN pip install plyfile
RUN pip install scipy
RUN pip install scikit-image
RUN pip install yapf==0.31.0
RUN pip install flake8==3.9.2
RUN pip install importlib-metadata==4.4
RUN pip install mmengine
RUN pip install cython
RUN pip install numpy
RUN pip install cityscapesscripts
RUN pip install fairscale
RUN pip install imagecorruptions
RUN pip install matplotlib
RUN pip install pycocotools
RUN pip install scipy
RUN pip install shapely
RUN pip install six
RUN pip install terminaltables
RUN pip install tqdm
RUN pip install scikit-learn
RUN apt-key adv --keyserver OpenPGP Keyserver --recv-keys A4B469963BF863CC
RUN apt-get update && apt-get install -y libgl1-mesa-glx
COPY ./fonts/* /opt/conda/lib/python3.10/site-packages/matplotlib/mpl-data/fonts/ttf/
