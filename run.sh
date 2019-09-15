#!/bin/bash
echo starting docker container
docker stop digitallibraryapp
docker rm digitallibraryapp
docker build -t digitallibrary .
docker run --name digitallibraryapp -d -p 8000:8000 digitallibrary
docker exec -ti digitallibraryapp bash