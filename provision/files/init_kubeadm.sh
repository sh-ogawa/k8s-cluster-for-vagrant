#!/bin/bash

swapoff -a
#kubeadm reset
kubeadm init --apiserver-advertise-address 0.0.0.0 --ignore-preflight-errors all
