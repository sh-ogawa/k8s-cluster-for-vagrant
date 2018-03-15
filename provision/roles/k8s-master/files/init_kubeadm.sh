#!/bin/bash

swapoff -a
#kubeadm reset
kubeadm init --pod-network-cidr=10.244.0.0/16 --ignore-preflight-errors all
