#!/bin/bash

RADIUS_SERVER=RADIUS_SERVER_IP
SECRET=RADIUS_SERVER_SECRET
USERNAME=USERNAME
PASSWORD=PASSWORD

docker run --rm -it rad_eap_test \
    -H $RADIUS_SERVER \
    -P 1812 \
    -S $SECRET \
    -u $USERNAME \
    -p $PASSWORD \
    -v \
    -m IEEE8021X \
    -e PEAP \
    -2 MSCHAPV2
