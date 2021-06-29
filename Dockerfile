FROM python:3-alpine

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN apk add build-base py-pip jpeg-dev zlib-dev
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENTRYPOINT ["python"]
CMD ["application.py"]
