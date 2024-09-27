kubectl apply -f namespace.yaml
kubectl apply -f backend-deployment.yaml -n webapp
kubectl apply -f backend-service.yaml -n webapp
kubectl apply -f db-deployment.yaml -n webapp
kubectl apply -f db-pv-pvc.yaml -n webapp
kubectl apply -f db-secret.yaml -n webapp
kubectl apply -f db-service.yaml -n webapp
kubectl apply -f proxy-deployment.yaml -n webapp
kubectl apply -f proxy-service.yaml -n webapp