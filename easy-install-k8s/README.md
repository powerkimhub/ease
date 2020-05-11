# K8S install scipt for Ubuntu (18.04)

## 0. prerequisite: check required ports
    ref) https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/#check-required-ports

## 1. install & setup Master (in Master Node)
    $ sudo su -
    $ k8s-master.sh
    
## 2. install & setup Network Service (in Master Node)
    $ flannel-deploy.sh

## 3. setup Worker (in Worker Nodes)
    $ sudo su -
    $ k8s-worker.sh
    $ kubeadm join ~ (cf: join-script.txt)

## 4. simple pods test (in Master Node)
    $ sudo su -
    $ ab-pods-apply.sh
