########
# Weave Net install scipt for K8S
# 2020.02.06. by powerkim@etri.re.kr
########


kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

sleep 5

echo "$ kubectl get pods -A"
kubectl get pods -A;
