#!/bin/bash
sudo su -
cd /var/www/html/
git clone git@github.com:SakshiDhiman/deploy_nextjs_app.git
cd deploy_nextjs_app.git/
npm install
npm run build
pm2 start npm --name "test" -- start
