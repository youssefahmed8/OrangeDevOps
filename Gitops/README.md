
- install argocd

- what are ports does argocd-server listen on?

- Access the ArgoCD-UI by converting the ArgoCD Server service from type ClusterIP to NodePort. Also use node port 32766 for https port.

- Write that password of the initial admin after decoding Hint : jq .data.password -r | base64 -d  

- install ArgoCD CLI
	curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/download/v2.4.11/argocd-linux-amd64
	chmod +x /usr/local/bin/argocd

- Create an ArgoCD Application:

	Using ArgoCD, create an application that deploys a three tier application from a GitHub repository containing the YAML manifests. 
	Sync the application and verify that the service is running in your Kubernetes cluster.

- #report: How to save secrets that need to be used in the K8S cluster out of the github repo.