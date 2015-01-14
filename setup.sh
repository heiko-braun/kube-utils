#!/bin/sh

for SVC in dc-service.json hc-web-service.json; do
        kubectl create -f examples/jboss/$SVC
done

for POD in dc-pod.json hc-replicas.json; do 
        kubectl create -f examples/jboss/$POD
done

