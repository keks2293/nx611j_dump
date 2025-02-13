#!/vendor/bin/sh
if [ -d "/cache/recovery" ]; then
    if [ ! -d "/date/media/0/logs/recovery " ]; then
        mkdir -p /data/media/0/logs/recovery
    fi
    echo "$0: Copy recovery log to internal sdcard ..."
    cp -r /cache/recovery/* /data/media/0/logs/recovery/
    chmod -R 775 /data/media/0/logs/
    chown -R media_rw.media_rw /data/media/0/logs
else
    echo "$0: /cache/recovery is not exist"
fi
