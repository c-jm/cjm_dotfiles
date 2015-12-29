# dwm-status.sh

# Uses xsetroot to display a status bar 
# for dwm. 

# Colin J. Mills (cjm)
# Date: 2015/12/29

while :
    do
        CURRENT_TIME=`date +%H:%M:%S`

        xsetroot -name "$CURRENT_TIME"
        sleep 1
    done





