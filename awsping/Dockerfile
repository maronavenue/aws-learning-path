FROM golang:latest

RUN wget https://github.com/ekalinin/awsping/releases/download/0.3.0/awsping.linux.amd64.tgz && \
    tar xzvf awsping.linux.amd64.tgz && \
    chmod +x awsping

ENTRYPOINT ["./awsping"]