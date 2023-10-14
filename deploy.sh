echo "Deploying..."
kubectl apply -f namespace.yaml

kubectl apply -f order-service/service-account.yaml
kubectl apply -f order-service/deployment.yaml
kubectl apply -f order-service/service.yaml

kubectl apply -f shipping-service/service-account.yaml
kubectl apply -f shipping-service/deployment.yaml
kubectl apply -f shipping-service/service.yaml