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
4. Create GRAV service:
```
kubectl expose deployment grav --type=LoadBalancer
```
5. Open up a browser window using a local IP address that serves GRAV: 
```
minikube service grav
```

### How I would handle data persistence of the GRAV container in the future

I would add a data volume to a container. It could be a some host directory, directory from separate Data Volume Container or some shared-storage (for ex. NFS or else).