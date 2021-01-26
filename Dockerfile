FROM python:3.8.5-alpine

RUN pip install --upgrade pip

RUN mkdir app

COPY ./requirements.txt /app

WORKDIR /app

RUN pip install -r requirements.txt

COPY ./django_project /app


COPY ./entrypoint.sh /

ENTRYPOINT [ "sh", "/entrypoint.sh" ]


