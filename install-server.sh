#!/bin/bash

# server
wget https://github.com/SalvatorBackup/salvator-server/archive/master.zip
unzip master.zip
rm master.zip
cd salvator-server-master
npm install
npm run dist
mkdir public
cd ..

# dashboard
wget https://github.com/SalvatorBackup/salvator-dashboard/archive/master.zip
unzip master.zip
rm master.zip
cd salvator-dashboard-master
npm install
npm run build
mv dist/* ../salvator-server-master/public
cd ..

# clean
rm -r salvator-dashboard-master
