[![](https://badge.imagelayers.io/krishath/csgo:latest.svg)](https://imagelayers.io/?images=krishath/csgo:latest 'Get your own badge on imagelayers.io')
# What is it?
A complete Counter Strike: Global Offensive docker container.

## How to use it
Pull the image from the Docker Hub:   

    docker pull krishath/csgo

Set the environmental variables:
- `GAME_TYPE`
- `GAME_MODE`
- `MAP_GROUP`
- `MAP`
- `GSLT` (optional, set it if you want to create a non-LAN server)

`docker run  -e GAME_TYPE=0 {...} krishath/csgo`

## Server configuration

If you would like to further config the server, just mount the config folder locally:

    docker run -v cfg_folder:/home/steam/csgo/cfg {...} krishath/csgo
