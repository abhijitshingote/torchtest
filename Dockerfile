FROM pytorch/pytorch:latest

RUN pip install --upgrade pip
RUN pip install jupyter_contrib_nbextensions && jupyter contrib nbextension install --system
COPY . /mynotebooks
CMD ["jupyter","notebook","--port=8888","--notebook-dir=/mynotebooks","--no-browser","--ip=0.0.0.0","--allow-root"]
