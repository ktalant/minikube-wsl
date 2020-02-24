#!/bin/sh

SERVER_IP=$1
kubectl config set-cluster minikube --server=https://$SERVER_IP --certificate-authority=/mnt/c/Users/uchku/.minikube/ca.crt  
kubectl config set-credentials minikube --client-certificate=/mnt/c/Users/uchku/.minikube/client.crt --client-key=/mnt/c/Users/uchku/.minikube/client.key
kubectl config set-context minikube --cluster=minikube --user=minikube                                                                                                                                                                                      
kubectl config use-context minikube