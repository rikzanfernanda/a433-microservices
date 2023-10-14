# a433-microservices
Repository ini digunakan untuk kebutuhan kelas Belajar Membangun Arsitektur Microservices

<br>
<br>

# Deployment
```sh
# chmod
chmod +x deploy.sh

# run deploy.sh
./deploy.sh
```

### Deploying rabbitMQ
reference: https://blog.knoldus.com/how-to-deploy-rabbit-mq-on-kubernetes/
```sh
helm repo search rabbitmq

helm repo add bitnami https://charts.bitnami.com/bitnami

helm repo list

helm install rabbit-operator bitnami/rabbitmq-cluster-operator --namespace rabbitmq --create-namespace --atomic

# checking
# kubectl get crds
# kubectl get all -n rabbitmq
# kubectl get service -n rabbitmq
# kubectl get pod -n rabbitmq
# kubectl get events -n rabbitmq

kubectl apply -f rabbit-mq/rabbit-mq-cluster.yaml -n rabbitmq

kubectl get pod -n rabbitmq

kubectl describe service rabbitmq-cluster -n rabbitmq

kubectl port-forward service/rabbitmq-cluster -n rabbitmq 15672:15672

kubectl get secret rabbitmq-cluster-default-user -o json -n rabbitmq

kubectl get secret rabbitmq-cluster-default-user -o jsonpath="{.data.username}" -n rabbitmq | base64 -d

# default_user_aPU3tYmbVfbZgzmaf1j

kubectl get secret rabbitmq-cluster-default-user -n rabbitmq -o jsonpath="{.data.password}" | base64 -d

# obMUmV0YSHW9avO0NCHVdKHWhGGtETLk
```

Deployin order service
```sh
kubectl get pod -n e-commerce

kubectl logs deployment/order-service -n e-commerce

kubectl describe service order-service -n e-commerce

kubectl port-forward service/order-service -n e-commerce 3000:3000
```

Deployin shipping service
```sh
kubectl get pod -n e-commerce

kubectl logs deployment/shipping-service -n e-commerce

kubectl describe service shipping-service -n e-commerce

kubectl port-forward service/shipping-service -n e-commerce 3001:3001
```