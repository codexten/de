
# Setting Enviornment Variables
################################
export DE_DIR="$HOME/.de"

# variables
############

runtimeDir="$DE_DIR/runtime"

# Crontab to pull repo in every 1 hour
########################################

croncmd="echo test >> $runtimeDir/cron.log 2>&1"
cronjob="* * * * * $croncmd"

( crontab -l | grep -v -F "$croncmd" ) | crontab -
( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -

crontab -l