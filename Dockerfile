FROM python:3.7-alpine

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]
CMD [ "hello.py" ]

