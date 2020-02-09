########
# flannel install scipt for K8S
# 2020.02.06. by powerkim@etri.re.kr
########

sysctl net.bridge.bridge-nf-call-iptables=1

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/2140ac876ef134e0ed5af15c65e414cf26827915/Documentation/kube-flannel.yml

sleep 5

echo "$ kubectl get pods -A"
kubectl get pods -A;
