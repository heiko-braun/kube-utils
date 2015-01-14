#!/bin/sh

for SVC in dc-service.json; do
        kubectl create -f examples/jboss/$SVC
done

for POD in dc-pod.json hc-pod.json; do 
        kubectl create -f examples/jboss/$POD
done

