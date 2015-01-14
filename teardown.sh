#!/bin/sh

for POD in hc-pod.json dc-pod.json; do
        kubectl delete -f examples/jboss/$POD
done

for SVC in dc-service.json; do
        kubectl delete -f examples/jboss/$SVC
done
