#!/bin/sh
# Level 2
export daemon="$code/scripts/0-daemon"
export scripts="$code/scripts"
export simone="$code/libs/simone"
export projects="$code/1-projects"
export academic="$code/academic"
export experimental="$code/experimental"
export sites="$code/sites"

# Level 3
if [[ $mac_os == true ]] ; then
   export des="$user_dir/Desktop"
fi

export notebook="$home/notebook"
export media=~/"Media"
export xplr="$code/experimental/1-xplr"
