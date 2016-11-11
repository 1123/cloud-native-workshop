#!/bin/bash

MVN=../../../code/auth-server/mvnw

set -e
set -u

cd config-service && $MVN clean package && cd ..
cd eureka-service && $MVN clean package && cd ..
cd reservation-service && $MVN clean package -Dmaven.test.skip=true && cd ..
cd reservation-client && $MVN clean package -Dmaven.test.skip=true && cd ..
cd hystrix-dashboard && $MVN clean package && cd ..
