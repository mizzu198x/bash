#!/usr/bin/env bash
if sudo -n true 2>/dev/null; then
    sudo -v
else
    echo '10351987' | sudo -v -S
    echo "Password filled"
fi