#!/bin/bash
mkdir -p build
cp Dockerfile build/Dockerfile
sed -i "s/\${user}/$USER/g" build/Dockerfile
sed -i "s/\${gid}/`id -g`/g" build/Dockerfile
sed -i "s/\${uid}/`id -u`/g" build/Dockerfile
docker build -t vdubois/ide-template:latest build/
rm -Rf build/
