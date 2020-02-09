# K8S install scipt for Ubuntu (18.04)

## 1. install & setup Master
    $ k8s-master.sh
    
## 2. install & setup Network Service
    $ flannel-deploy.sh

## 3. setup Worker
    $ k8s-worker.sh
    $ kubeadm join ~ (cf: join-script.txt)

## 4. simple pods test
    $ ab-pods-apply.sh
