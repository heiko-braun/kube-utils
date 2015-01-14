#!/bin/sh

## todo: set number of replicas to zero
for POD in hc-replicas.json dc-pod.json; do
        kubectl delete -f examples/jboss/$POD
done

for SVC in hc-web-service.json dc-service.json; do
        kubectl delete -f examples/jboss/$SVC
done
