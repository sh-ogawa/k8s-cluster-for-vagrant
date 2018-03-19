#!/bin/bash

swapoff -a
#kubeadm reset
kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=192.168.122.71
