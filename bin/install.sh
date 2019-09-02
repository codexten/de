git clone https://github.com/codexten/de.git ~/.de
# Making install.sh executable
chmod +x ~/.de/bin/bootstrap.sh
chmod +x ~/.de/bin/install.sh
chmod +x ~/.de/bin/de.sh
chmod +x ~/.de/bin/update.sh

. bootstrap

# Crontab to pull repo in every 1 hour
########################################

croncmd="echo cd $deDir &&  $deDir/bin/update >> $runtimeDir/cron.log 2>&1"
cronjob="* * * * * $croncmd"

( crontab -l | grep -v -F "$croncmd" ) | crontab -
( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -

crontab -l

./bin/update