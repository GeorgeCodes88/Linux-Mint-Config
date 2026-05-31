#!/bin/zsh

source /home/minty/.scripts/launchapps.sh

MOUNT_POINT="/media/minty/Shared"

if [ ! -d "$MOUNT_POINT" ]; then
     mkdir -p "$MOUNT_POINT"
fi

sudo mount -U 463255D33255C897 "$MOUNT_POINT" -o uid=1000,gid=1000,umask=000

sudo -u minty zsh -c "source /home/minty/.scripts/launchapps.sh && kitty"
