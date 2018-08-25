FROM python:2.7.15-alpine

LABEL maintainer="Peng Xiao <xiaoquwl@gmail.com>"

RUN apk add --no-cache gcc musl-dev && pip install tox

WORKDIR /omd

VOLUME ["/omd"]

ENTRYPOINT [ "tox" ]

CMD []