#!/bin/sh
mkdir ~/steamcmd
cd ~/steamcmd
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
# installing csgo dedicated server
~/steamcmd/steamcmd.sh +login anonymous +force_install_dir ~/csgo +app_update 740 validate +quit
# fixing popd/pushd
sed -i "s/\#\!\/bin\/sh/\#\!\/bin\/bash/" ~/csgo/srcds_run
# executing server
echo "Executing server."
cd ~/csgo
if [ -z "$GSLT" ]; then
  echo "GSLT not specified."
  ./srcds_run -game csgo -console -usercon +game_type $GAME_TYPE +game_mode $GAME_MODE +mapgroup $MAP_GROUP +map $MAP
else
  echo "GSLT specified."
  ./srcds_run -game csgo -console -usercon +game_type $GAME_TYPE +game_mode $GAME_MODE +mapgroup $MAP_GROUP +map $MAP +sv_setsteamaccount $GSLT -net_port_try 1
fi
