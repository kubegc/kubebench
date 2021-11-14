cd /root/kube-bench
rm -rf /var/lib/doslab/tpcw-test
mkdir -p /var/lib/doslab/tpcw-test
chmod 777 /var/lib/doslab/tpcw-test
kubectl create namespace kube-bench
kubectl apply -f ./targets/tpcw/yamls/db.yaml
kubectl apply -f ./targets/tpcw/yamls/web.yaml
# using a db admin tools to create a db named tpcw.