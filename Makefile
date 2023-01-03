init:
	docker run --attach -d -it -p 25565:25565 -e EULA=TRUE itzg/minecraft-server 

start:
	docker start --attach itzg/minecraft-server  

rcon:
	docker exec -i itzg/minecraft-server rcon-cli