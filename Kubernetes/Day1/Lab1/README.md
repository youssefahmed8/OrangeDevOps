# Kubernetes_lab


## 1- How many pods exist on the system?

## 2- How many Nodes exist on the system?
![alt text](image.png)

------------------------

## 3- Create a new pod with the nginx image.

![alt text](image-1.png)

------------------------

## 4- Which nodes are these pods placed on?

![alt text](image-2.png)

------------------------

## 5- Create pod from the below yaml using kubectl apply command

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: webapp
  namespace: default
spec:
  containers:
  - image: nginx
    imagePullPolicy: Always
    name: nginx
  - image: agentx
    imagePullPolicy: Always
    name: agentx
```

![alt text](image-3.png)

------------------------
## 6- How many containers are part of the pod webapp 

![alt text](image-4.png)

------------------------


## 7- What images are used in the new webapp pod?

![alt text](image-5.png)

------------------------

## 8- What is the state of the container agentx in the pod webapp
![alt text](image-6.png)

------------------------

## 9- Why do you think the container agentx in pod webapp is in error?

![alt text](image-7.png)

------------------------
## 10- Delete the webapp Pod.

![alt text](image-8.png)

------------------------

## 11- Create a new pod with the name redis and with the image redis123.
•	Name: redis
•	Image Name: redis123
![alt text](image-9.png)

------------------------

## 12- Now change the image on this pod to redis.
Once done, the pod should be in a running state.
![alt text](image-10.png)

------------------------

## 13- Create a pod called my-pod of image nginx:alpine

![alt text](image-11.png)

------------------------

## 14- Delete the pod called my-pod

![alt text](image-12.png)