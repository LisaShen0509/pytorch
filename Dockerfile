FROM pytorch/pytorch:2.2.0-cuda12.1-cudnn8-runtime

COPY ./fonts/* /opt/conda/lib/python3.10/site-packages/matplotlib/mpl-data/fonts/ttf/
