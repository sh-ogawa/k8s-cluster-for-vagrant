#!/bin/bash

swapoff -a
#kubeadm reset
kubeadm init --ignore-preflight-errors all
