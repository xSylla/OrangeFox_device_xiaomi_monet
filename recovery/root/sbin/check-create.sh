#!/bin/bash
# This script is needed to automatically check if /data/media exist or not, if not it will that directory

if [[ ! -d /data/media ]]
then
    mkdir /data/media
fi