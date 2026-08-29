# Minecraft Vanilla Server

Docker image with a vanilla Minecraft server.

GitHub Container Repo: [ghcr.io/pvlkrc/minecraft-server-vanilla:latest](https://github.com/pvlkrc/minecraft-server-vanilla/pkgs/container/minecraft-server-vanilla)

## Run it

```
docker run -d --name mc-server -e EULA=true -p 25565:25565 ghcr.io/pvlkrc/minecraft-server-vanilla:latest
```

## Or with docker-compose

```
docker compose up -d
```

## Environment variables

| Variable | Description |
|---|---|
| `EULA` | Must be `true`, otherwise the server refuses to start (agreement to the Mojang EULA) |

## Server data

The world and `server.properties` are stored in `/minecraft/game-conf` inside the container — in `docker-compose.yml` it's mounted to `./data` so it survives container restarts.
