#!/bin/bash
source "/var/volatile/project_eris.cfg"
cd "/var/volatile/launchtmp"
chmod -R 775 ./
chmod +x "sm64"
echo -n 2 > "/data/power/disable"
SDL_GAMECONTROLLERCONFIG="$(cat ${PROJECT_ERIS_PATH}/etc/boot_menu/gamecontrollerdb.txt)" ./sm64 --savepath . --cheats &> "${RUNTIME_LOG_PATH}/sm64.log"
echo -n 1 > "/data/power/disable"
echo "launch_StockUI" > "/tmp/launchfilecommand"