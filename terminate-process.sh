#!/bin/bash

for container in cuser-service cproduct-service corder-service cproduct_dbase cfrontend-app cuser_dbase corder_dbase;
do
 docker stop $container
 docker rm $container
done

for vol in frontend_orderdb_vol frontend_productdb_vol frontend_userdb_vol;
do
 docker volume rm $vol
done

docker network rm micro_network