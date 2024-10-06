kubectl create namespace cicd
kubectl apply -f jenkins-service.yaml -n cicd
kubectl apply -f jenkins-deployment.yaml -n cicd
kubectl create serviceaccount jenkins-service-account -n cicd
kubectl apply -f jenkins-cluster-role.yaml -n cicd
kubectl apply -f jenkins-cluster-role-binding.yaml -n cicd
kubectl apply -f jenkins-pv.yaml -n cicd
kubectl apply -f db-deployment-role.yaml
kubectl apply -f db-deployment-rolebinding.yaml