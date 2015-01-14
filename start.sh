#!/bin/sh

for SERVICES in etcd kube-apiserver kube-controller-manager  kube-scheduler docker kube-proxy.service  kubelet.service; do 
        systemctl start $SERVICES
        systemctl enable $SERVICES
        systemctl status $SERVICES
done

