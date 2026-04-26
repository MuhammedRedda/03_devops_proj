#!/bin/bash

APP_DIR="/home/ec2-user/myapp"
PROD_DIR="/usr/share/nginx/html/index.html"
#DEV_DIR="/home/ec2-user/dev"

cd $APP_DIR || exit

git fetch origin

BRANCH=$(git rev-parse --abbrev-ref HEAD)

echo "Deploying branch: $BRANCH"

if [ "$BRANCH" = "main" ]; then
	git pull origin main 
	rm -rf $PROD_DIR
	cp index.html $PROD_DIR
	echo "Production Deployed"

elif [ "$BRANCH" = "develop" ]; then
	git pull origin develop
	#rm -rf $DEV_DIR
	cp index.html $PROD_DIR
	echo "Development Deployed"
else 
	echo "No deploy for this bransh"
fi




