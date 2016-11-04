cf create-service p-rabbitmq standard message-bus

cd config-service
cf push
cf cups config-service -p '{"uri":"http://config-service.local2.pcfdev.io"}'
cd ..

cd eureka-service
cf push
cf cups eureka-service -p '{"uri":"http://eureka-service.local2.pcfdev.io"}'
cd ..

cd reservation-service
cf push
cd ..

cd reservation-client
cf push
cd ..

cd hystrix-dashboard
cf push 
cd ..
