helm repo add incubator https://charts.helm.sh/incubator --force-update
helm install spark-operator incubator/sparkoperator --namespace kube-operator --set sparkJobNamespace=default
