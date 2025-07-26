#!/bin/bash

echo "ALL ALL=(ALL) NOPASSWD: /usr/local/bin/wg.sh" | sudo tee /etc/sudoers.d/wg-nopasswd
sudo chmod 440 /etc/sudoers.d/wg-nopasswd 
