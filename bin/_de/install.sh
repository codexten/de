#!/usr/bin/env sh

case $2 in
   "dev-panel")
#      git clone https://github.com/codexten/dev-panel.git ~/.dev-panel
      chmod +x ~/.dev-panel/bin/install.sh
      ~/.dev-panel/bin/install.sh
      ;;
    *)
     echo "Invalid Install Command"
     ;;
esac
