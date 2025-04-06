# arch-mirror-script
A litle script to create an arch mirror server via Rsync


Dont forget to change 
LOCAL_MIRROR
SOURCE_MIRROR


And add on crontab this : 
0 0,6,12,18 * * * /your/path/arch-script.sh >> /var/log/arch-mirror-sync.log 2>&1

(change the path)
