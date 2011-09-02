# export VOL_LIBRARY_PATH="/vol/usr/lib"
if [[ $mac_os == true ]] ; then
  export MACPORTS_LIBRARY_PATH="/opt/local/lib"
  export LIBRARY_PATH="$MACPORTS_LIBRARY_PATH:$LIBRARY_PATH"
fi
