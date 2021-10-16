
helm install --set name=spark-app-operator --namespace kube-operator spark-app-operator .
helm install --set name=memcached-operator --namespace kube-operator memcached-operator .
helm install --set name=cassandra-operator --namespace kube-operator cassandra-operator .
