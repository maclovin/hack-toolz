#!/bin/bash

echo "$(tput setaf 1)"
cat << EOF

 _       __________  __________  __  ________
| |     / /  _/ __ \/ ____/ __ \/ / / /_  __/
| | /| / // // /_/ / __/ / / / / / / / / /   
| |/ |/ // // ____/ /___/ /_/ / /_/ / / /    
|__/|__/___/_/   /_____/\____/\____/ /_/     
                                             

EOF

echo "Secure Google products hard reset...";
rm -rf -P ~/Library/Application\ Support/Google;
rm -rf -P ~/Library/Caches/Google;

echo "Deleting all) history files...";
sudo find . -name '*_history' -exec rm -P {} \;

echo "Deleting System log entries..."
yes | sudo rm -rf -P /var/log/*

echo "Deleting Application Support entries..."
rm -rf -P ~/Library/Application\ Support/*

echo "Done :)";

kill -9 $$
