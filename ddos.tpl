#!/bin/bash

exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
  sudo docker run --rm -d alpine/bombardier -c 1000 -d 3600s -l ${address}