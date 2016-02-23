#!/bin/bash
mkdir ~/steamcmd
cd ~/steamcmd
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
# allowing data permanence
mkdir -p ~/csgo/cfg
# installing csgo dedicated server
~/steamcmd/steamcmd.sh +login anonymous +force_install_dir ~/csgo +app_update 740 validate +quit
# executing server
if [ -z "$GSLT" ]; then
  ~/csgo/srcds_run -game csgo -console -usercon +game_type $GAME_TYPE +game_mode $GAME_MODE +mapgroup $MAP_GROUP +map $MAP +sv_setsteamaccount $GSLT -net_port_try 1
else
  ~/csgo/srcds_run -game csgo -console -usercon +game_type $GAME_TYPE +game_mode $GAME_MODE +mapgroup $MAP_GROUP +map
fi
