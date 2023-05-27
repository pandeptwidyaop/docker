FROM python:3.10.9-alpine3.17

RUN apk add --no-cache --virtual .build-deps gcc musl-dev g++
RUN pip install pyproject-toml
RUN pip install wheel 
RUN pip install numpy
RUN pip install pandas