init:
	docker run -d -it --name mc-requiem -p 25565:25565 -e EULA=TRUE itzg/minecraft-server

output:
	docker start --attach mc-requiem

input:
	docker exec -i mc-requiem rcon-cli

.PHONY: init output input