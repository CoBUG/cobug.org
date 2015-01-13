#!/bin/sh

echo "Ignoring sensitive data:"
git update-index --assume-unchanged releases/start_erl.data
git update-index --assume-unchanged releases/RELEASES
git update-index --assume-unchanged etc/sigma_sql.config
git update-index --assume-unchanged etc/sigma_sql.config
git update-index --assume-unchanged etc/app.config

echo "Fixing nitrogen release"
./fix-slim-release

echo "Updating dependencies"
make update

echo "Making.."
make

echo "Recovering lost files"
git checkout site/templates/bare.html site/templates/mobile.html
