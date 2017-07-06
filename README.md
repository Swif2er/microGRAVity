# Instructions to start GRAV using Minikube
1. Clone repository:
```
git clone https://github.com/Swif2er/microGRAVity.git
```
2. Create Minikube cluster:
```
minikube start
```
3. Create GRAV deployment:
```
kubectl create -f grav-deployment.yaml
```
* Must be executed from root directory of cloned repository in step 1.
4. Create GRAV service:
```
kubectl expose deployment grav --type=LoadBalancer
```
5. Open up a browser window using a local IP address that serves GRAV: 
```
minikube service grav
```