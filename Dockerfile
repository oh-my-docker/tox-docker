FROM python:3.6.6-alpine

LABEL maintainer="Peng Xiao <xiaoquwl@gmail.com>"

RUN apk add --no-cache gcc musl-dev && pip install tox

WORKDIR /omd

VOLUME ["/omd"]

ENTRYPOINT [ "tox" ]

CMD []