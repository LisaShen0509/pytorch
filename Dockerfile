FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-devel

RUN pip install mmcv-full==1.4.0 -f https://download.openmmlab.com/mmcv/dist/cu111/torch1.9/index.html
RUN apt-get update && apt-get install -y git
RUN git clone git@github.com:open-mmlab/mmdetection.git
WORKDIR /mmdetection
RUN git checkout v2.24.1
RUN pip install -r requirements/build.txt
RUN python setup.py develop
WORKDIR /

RUN pip install mmsegmentation==0.20.2

RUN git clone  git@github.com:open-mmlab/mmdetection3d.git
WORKDIR /mmdetection3d
RUN git checkout v0.17.1 
RUN pip install -r requirements/build.txt
RUN python3 setup.py develop
WORKDIR /

COPY ./fonts/* /opt/conda/lib/python3.10/site-packages/matplotlib/mpl-data/fonts/ttf/
