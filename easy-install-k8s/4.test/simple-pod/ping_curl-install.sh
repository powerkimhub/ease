kubectl exec a -- apt-get update;
kubectl exec a -- apt-get install -y curl iputils-ping;

kubectl exec b -- apt-get update;
kubectl exec b -- apt-get install -y curl iputils-ping;
