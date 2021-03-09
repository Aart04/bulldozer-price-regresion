FROM python:3.8-slim

WORKDIR /

ADD . /

RUN pip3 install -r requirements.txt

ENV NAME Bulldozer

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]