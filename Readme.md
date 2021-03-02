# How to talk to the parent docker daemon on the host

Based on "the socket solution" from http://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/ 

Docker container has docker based on install instructions in https://docs.docker.com/engine/install/debian/

To test:

```
sudo docker build -t docker-talks-host-docker:taratyn .
sudo docker run -it --rm  -v /var/run/docker.sock:/var/run/docker.sock  docker-talks-host-docker:taratyn docker ps
```
