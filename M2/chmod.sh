#!/usr/bin/env bash
bash ~/Work/bash/grant_sudo.sh
sudo chown -R $USER:$USER var/ pub/ generated/
sudo chmod -R 777 var/ pub/ generated/