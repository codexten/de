
# Setting Enviornment Variables
################################
deDir="$HOME/.de"

# variables
############

runtimeDir="$deDir/runtime"

# Crontab to pull repo in every 1 hour
########################################

croncmd="echo cd $deDir && git pull  >> $runtimeDir/cron.log 2>&1"
cronjob="* * * * * $croncmd"

( crontab -l | grep -v -F "$croncmd" ) | crontab -
( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -

crontab -l