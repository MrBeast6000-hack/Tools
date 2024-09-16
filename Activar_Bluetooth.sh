#!/bin/bash

sudo apt install bluez*

sudo apt install blueman

sudo systemctl enable bluetooth.service

sudo systemctl start bluetooth.service
