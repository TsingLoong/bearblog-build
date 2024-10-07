FROM python:3.10.15-alpine
RUN apk update \
    && apk add git \
    && apk add libpq postgresql-dev \
    && apk add build-base
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /bearblog
RUN git clone https://github.com/HermanMartinus/bearblog/ .
RUN pip install -r requirements.txt
