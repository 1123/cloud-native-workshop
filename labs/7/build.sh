#!/bin/bash

set -e
set -u

cd config-service && mvn clean package && cd ..
cd eureka-service && mvn clean package && cd ..
cd reservation-service && mvn clean package -Dmaven.test.skip=true && cd ..
cd reservation-client && mvn clean package -Dmaven.test.skip=true && cd ..
cd hystrix-dashboard && mvn clean package && cd ..
