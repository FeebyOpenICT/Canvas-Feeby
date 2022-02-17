# Canvas

This is a repo to quickly host a canvas dev environment for feeby on my vps. It does not house persistent data so every setup will have to go through the setup steps described down below. 
### Prerequisites
You must have docker and docker-compose installed.

Having make installed is a bonus as it houses a lot of commands for docker-compose so you don't have to type them all out. 
### First time setup & running
You must have docker-caddy running for this implementation of canvas within docker. I use caddy to automatically get certificates and have super simple reverse proxying with just two docker-compose labels. 

1. setup the docker caddy network with ```make setup``` or the equivalent ```docker network create caddy```
2. start caddy docker with ```make caddy-start``` or the equivalent ```docker-compose -f docker-compose.caddy.yml up -d```. You should skip this step if you already have a docker-caddy setup and running within the docker caddy network like I have.
3. start canvas with ```make start``` or the equivalent ```docker-compose up -d```
