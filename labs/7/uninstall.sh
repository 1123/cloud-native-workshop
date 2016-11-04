cf delete config-service -f
cf delete eureka-service -f
cf delete reservation-service -f
cf delete reservation-client -f
cf delete-service config-service -f
cf delete-service eureka-service -f
cf delete-service message-bus -f
