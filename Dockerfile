FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-devel
RUN pip install --upgrade pip
RUN pip install mmcv-full==1.4.0 -f https://download.openmmlab.com/mmcv/dist/cu111/torch1.9/index.html
RUN pip install mmcv==2.0.0rc4 -f https://download.openmmlab.com/mmcv/dist/cu111/torch1.9/index.html
RUN pip install mmsegmentation==0.20.2
RUN pip install opencv-python-headless
RUN pip install -r ./mmdetection/requirements/build.txt
RUN python ./mmdetection/setup.py develop
RUN python ./mmdetection3d/setup.py develop

COPY ./fonts/* /opt/conda/lib/python3.10/site-packages/matplotlib/mpl-data/fonts/ttf/
