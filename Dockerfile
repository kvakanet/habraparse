FROM python:3.6
MAINTAINER kuka <r1@kvaka.net>

RUN git clone https://github.com/kvakanet/habraparse.git
RUN pip install --upgrade pip && pip install setuptools --upgrade && cd habraparse && pip install -r requirements.txt
ENV VER=1.8

ENTRYPOINT ["python3", "/habraparse/habraparse.py"]
CMD ["-h"]
