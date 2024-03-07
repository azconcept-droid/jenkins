Using docker approach
===

1. cd into this directory
```
cd docker
```
2. Install docker
```
bash install-docker.sh
```
3. Run docker container
```
sudo docker compose up
```
4. Confirm if jenkins instance container is running
```
sudo docker ps
```
5. Go to connect to your jenkins contianer
```
http://<ip-address>:8080
```
6. Login into your jenkins container
```
sudo docker exec -it jenkins-instance bash
```
Your terminal should like this.
> jenkins@bef3130475d7:/$
7. Inside this new terminal run this command to get the deafualt admin password generated
```
cat /var/jenkins_home/secrets/initialAdminPassword
```
The output shud look like this
> d026109eb11040bc9c649df41594ec07