FROM python:3.7-alpine

RUN mkdir -p /app
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app

ENTRYPOINT [ "python" ]
CMD [ "hello.py" ]

