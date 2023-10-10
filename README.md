# a433-microservices
Repository ini digunakan untuk kebutuhan kelas Belajar Membangun Arsitektur Microservices

# Deploying Application to Kubernetes
Setup minikube
```sh
# install minikube
brew install minikube

# check minikube version
minikube version

# start minikube
minikube start

# pause minikube
minikube pause

# unpause minikube
minikube unpause

# stop minikube
minikube stop
```

Setup Kubectl
```sh
# install Kubectl v1.31.2
brew install kubectl@1.31.2

# check kubectl version
kubectl version

# check kubernetes cluster
kubectl cluster-info

# run minikube dashboard
minikube dashboard

# check nodes cluster
kubectl get nodes
```

Deploying
```sh
kubectl apply -f namespace.yaml
kubectl apply -f mongodb/mongo-configmap.yaml
kubectl apply -f mongodb/mongo-secret.yaml
kubectl apply -f mongodb/mongo-pv-pvc.yaml
kubectl apply -f mongodb/mongo-service.yaml
kubectl apply -f mongodb/mongo-statefulset.yaml
kubectl apply -f backend/karsajobs-deployment.yaml
kubectl apply -f backend/karsajobs-service.yaml
kubectl apply -f frontend/karsajobs-ui-deployment.yaml
kubectl apply -f frontend/karsajobs-ui-service.yaml

# check deployment status
kubectl get deployment -n karsajobs-namespace

# delete namespace and resources
kubectl delete namespace karsajobs-namespace --cascade --grace-period=0

kubectl get events -n karsajobs-namespace

# check status of pod
kubectl get pod -n karsajobs-namespace

# detail info about service
kubectl describe service karsajobs -n karsajobs-namespace
kubectl describe service karsajobs-ui -n karsajobs-namespace

# run minikube tunnel
minikube service karsajobs -n karsajobs-namespace
minikube service karsajobs-ui -n karsajobs-namespace

kubectl describe pod -n karsajobs-namespace

kubectl get service -n karsajobs-namespace

# get IP
minikube ip
```