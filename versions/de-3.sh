
# adding new cron for every 1 hrs
( crontab -l | grep -v -F "$croncmd" ) | crontab -
croncmd="cd $deDir && ./bin/update > $runtimeDir/cron.log 2>&1"
cronjob="0 * * * * $croncmd"

( crontab -l | grep -v -F "$croncmd" ) | crontab -

crontab -l

# adding new cron for every 1 hrs
( crontab -l | grep -v -F "$croncmd" ) | crontab -
croncmd="cd $deDir && git pull > $runtimeDir/cron.log 2>&1"
cronjob="0 * * * * $croncmd"

( crontab -l | grep -v -F "$croncmd" ) | crontab -
( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -

crontab -l