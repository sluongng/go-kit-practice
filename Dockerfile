FROM trifs/govendor
MAINTAINER sluongng sluongng@gmail.com

ENV GOPATH /opt/go:$GOPATH
ENV PATH /opt/go/bin:$PATH

WORKDIR /opt/go/src/app
COPY . .

RUN go-wrapper download
RUN govendor install

RUN go build -o main .
CMD ["./main"]