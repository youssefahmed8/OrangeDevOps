#!/bin/bash

NAMESPACE="jenkins"

check_resource_exists() {
    kubectl get "$1" "$2" -n "$NAMESPACE" > /dev/null 2>&1
}

echo "Starting cleanup process..."

# Delete Jenkins deployment
if check_resource_exists "deployment" "jenkins"; then
    echo "Deleting Jenkins deployment..."
    kubectl delete deployment jenkins -n $NAMESPACE
else
    echo "Jenkins deployment not found."
fi

# Delete Jenkins service
if check_resource_exists "service" "jenkins"; then
    echo "Deleting Jenkins service..."
    kubectl delete service jenkins -n $NAMESPACE
else
    echo "Jenkins service not found."
fi

# Delete Jenkins cluster role binding
if check_resource_exists "clusterrolebinding" "jenkins-cluster-role-binding"; then
    echo "Deleting Jenkins cluster role binding..."
    kubectl delete clusterrolebinding jenkins-cluster-role-binding
else
    echo "Jenkins cluster role binding not found."
fi

# Delete Jenkins cluster role
if check_resource_exists "clusterrole" "jenkins-cluster-role"; then
    echo "Deleting Jenkins cluster role..."
    kubectl delete clusterrole jenkins-cluster-role
else
    echo "Jenkins cluster role not found."
fi

# Delete Jenkins persistent volume
if check_resource_exists "persistentvolume" "jenkins-pv"; then
    echo "Deleting Jenkins persistent volume..."
    kubectl delete pv jenkins-pv
else
    echo "Jenkins persistent volume not found."
fi

# Delete Jenkins persistent volume claim
if check_resource_exists "pvc" "jenkins-pv-claim"; then
    echo "Deleting Jenkins persistent volume claim..."
    kubectl delete pvc jenkins-pv-claim -n $NAMESPACE
else
    echo "Jenkins persistent volume claim not found."
fi

echo "Cleanup completed."
