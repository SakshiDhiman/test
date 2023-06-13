#!/bin/bash
sudo su -
cd /var/www/html/
git clone git@github.com:SakshiDhiman/deploy_nextjs_app.git
cd deploy_nextjs_app/
sudo npm install
sudo npm run build
sudo pm2 start npm --name "test" -- start
