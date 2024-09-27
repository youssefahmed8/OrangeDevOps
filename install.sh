kubectl apply -f cicd-namespace.yaml
kubectl apply -f jenkins.yaml -n cicd
kubectl apply -f jenkins-pvc.yaml -n cicd
