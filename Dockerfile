FROM python:latest

WORKDIR /
COPY . .

ARG test
ENV test=$test

CMD [ "python", "test.py" ]