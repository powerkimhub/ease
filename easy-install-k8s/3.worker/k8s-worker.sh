########
# K8S install scipt for Worker on Ubuntu 18.04.
# 2020.02.06. by powerkim@etri.re.kr
########

## 1. add repository of K8S pkg
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt-get update;


## 2. install docker & k8s-worker
apt-get install -y docker.io kubeadm kubelet;


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

