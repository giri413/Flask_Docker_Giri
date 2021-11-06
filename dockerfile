FROM ubuntu

MAINTAINER Giri Duvvu "giri413ece@gmail.com"

RUN apt-get update

RUN apt-get install -y python3-pip python-dev

MAINTAINER Giri Duvvu "giri413ece@gmail.com"

RUN apt-get update

CMD ["echo", "Hello Flask..! from my first docker image"]

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
