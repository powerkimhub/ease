########
# K8S install scipt for Master on Ubuntu 18.04.
# 2020.02.06. by powerkim@etri.re.kr
########

## 1. add repository of K8S pkg
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt-get update;


## 2. install docker & k8s-master
apt-get install -y docker.io kubeadm kubectl kubelet;


## 3. change docker driver(cgroupfs -> systemd)
cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

systemctl daemon-reload && systemctl restart docker;

## 4. system setup for k8s
swapoff -a;
systemctl daemon-reload && systemctl restart kubelet;


## 5. initialize k8s
kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=`hostname -i | awk '{print $1}'` --token-ttl=0

## 6. add user's role
mkdir -p $HOME/.kube;
cp -f /etc/kubernetes/admin.conf $HOME/.kube/config;
chown $(id -u):$(id -g) $HOME/.kube/config;

## 7. check status
kubectl get pods -A
