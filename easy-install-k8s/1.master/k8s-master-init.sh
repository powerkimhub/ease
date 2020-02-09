########
# K8S initialization scipt for Master on Ubuntu 18.04.
# 2020.02.06. by powerkim@etri.re.kr
########

## 1. reset & clear
kubeadm reset;
systemctl restart kubelet;
rm -rf /var/lib/etcd/*;

## 2. initialize k8s
kubeadm init --apiserver-advertise-address=`hostname -i` --token-ttl=0;


## 3. add user's role
mkdir -p $HOME/.kube;
cp -f /etc/kubernetes/admin.conf $HOME/.kube/config;
chown $(id -u):$(id -g) $HOME/.kube/config;

## 4. check status
echo " "
sleep 5
echo "$ kubectl get pods -A"
echo " "

kubectl get pods -A
