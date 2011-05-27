# Look for GNU utils on non-GNU systems
case `uname -s` in
  SunOS|Darwin|*BSD)
    if which gls >&/dev/null; then
      alias ls="gls --color=auto -F"
    else
      alias ls="ls -F"
    fi

    if which gdu >&/dev/null; then
      alias du="gdu -h"
    fi

    if which gdu >&/dev/null; then
      alias df="gdf -hT"
    else
      alias df="df -h"
    fi

    if which gfind >&/dev/null; then
      alias find="gfind"
    fi

    if which gseq >&/dev/null; then
      alias seq="gseq"
    fi
  ;;

  *)
    alias ls="ls --color=auto -F"
    alias du='du -h'
    alias df='df -hT'
  ;;
esac
