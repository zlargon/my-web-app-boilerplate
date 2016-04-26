#!/bin/bash
# All the same files will be overwritten

GITHUB="zlargon"
PROJECT="my-web-app-boilerplate"
BRANCH="master"
SOURCE="$PROJECT-$BRANCH"

# download and unzip
wget "https://github.com/$GITHUB/$PROJECT/archive/$BRANCH.zip" -O $SOURCE.zip
unzip $SOURCE.zip

# setup to current folder
mv $SOURCE/{.[!.],}* .

# remove install.sh, empty folder and zip file
rm -rf install.sh $SOURCE*
