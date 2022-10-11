FROM alpine:latest

RUN apk update && apk add gcc g++ && mkdir practice

COPY . /practice

WORKDIR /practice

RUN g++ -o Main main.cpp 

CMD ["./Main"]