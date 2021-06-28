#!/bin/sh -e
cp /etc/hosts ~/hosts.bkp
tac ~/hosts.bkp > out > /etc/hosts
./entrypoint.sh "$@"
