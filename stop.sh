#!/bin/sh

for SERVICES in kubelet.service kube-proxy.service docker kube-scheduler kube-controller-manager kube-apiserver etcd; do 
        systemctl stop $SERVICES
        systemctl disable $SERVICES
        systemctl status $SERVICES
done

