#!/bin/bash

while true; do
  curl http://reservation-client.local2.pcfdev.io/reservations/names
  echo ""
  sleep 0.5
done
