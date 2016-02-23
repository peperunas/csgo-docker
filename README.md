# How to use it
Pull the image from the Docker Hub:   

    docker pull krishath/csgo

Set the environmental variables:
- `GAME_TYPE`
- `GAME_MODE`
- `MAP_GROUP`
- `MAP`
- `GLST` (optional, set it if you want to create a non-LAN server)

      docker run krishath/csgo -e GAME_TYPE=0 {...}
