#!/bin/sh
while ! nc -z mysqldb 3306; do
   echo "esperando al servidor mysql"
   sleep 3
done
echo "lanzando el jar"
java -jar /opt/lib/clientes.jar 