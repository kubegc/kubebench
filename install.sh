cd /root/kube-bench
mkdir /var/lib/doslab/tpcw-test
chmod 777 /var/lib/doslab/tpcw-test
kubectl apply -f ./targets/tpcw/yamls/db.yaml
kubectl apply -f ./targets/tpcw/yamls/web.yaml