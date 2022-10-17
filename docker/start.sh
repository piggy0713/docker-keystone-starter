#!/bin/sh

yarn install
if [ ! -d "/app/migrations" ]
then
    echo "init" | yarn migrate dev
fi
