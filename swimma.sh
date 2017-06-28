#!/bin/bash

SESSIONS="objcio"

function has-session {
    tmux has-session -t $1 2>/dev/null
}

function except
{
    if [ "$?" -eq 1 ] ; then
        $1
    fi
}

function session-objcio
{
    tmux -u new-session -d -s objcio DYLD_FORCE_FLAT_NAMESPACE=1 DYLD_INSERT_LIBRARIES=/opt/local/lib/libpython2.7.dylib vim
    tmux splitw -v -p 25
    tmux selectw -t 0
    tmux select-pane -t 0
}

for x in $SESSIONS
do
    echo $x
    has-session $x
    except session-$x
    tmux -u attach-session -t $x
done
