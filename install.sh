cd /root/kube-bench
kubectl apply -f ./targets/tpcw/yamls/db.yaml
kubectl apply -f ./targets/tpcw/yamls/web.yaml
kubectl apply -f ./targets/tpcw/yamls/dbGen.yaml