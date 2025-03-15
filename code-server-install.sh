#! /bin/bash

sudo apt install curl

curl -s https://api.github.com/repos/coder/code-server/releases/latest | grep "browser_download_url.*amd64.deb" | cut -d '"' -f 4 | xargs curl -LO

sudo dpkg -i code-server-*-amd64.deb
