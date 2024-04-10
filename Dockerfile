FROM ubuntu:18.04

WORKDIR /app

COPY . .

RUN apt-get update -y \
  && apt-get upgrade -y \
  && apt-get install libssl1.0.0 

ENTRYPOINT [ "/app/rad_eap_test" ]
