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
    tmux -u new-session -d -s objcio vim
    tmux splitw -v -p 25
    tmux selectw -t 0 -n objcio
    tmux select-pane -t 1
    tmux splitw -h -p 40
    tmux send-keys -t 2 'htop' Enter
    tmux select-pane -t 0
    tmux new-window -t 1 -n lldb

    tmux selectw -t 1
    tmux splitw -v -p 45

    tmux select-pane -t 1
    tmux splitw -h -p 45
    tmux send-keys -t 2 'voltron v d' Enter
    tmux send-keys -t 1 'voltron v s' Enter

    tmux select-pane -t 0
    tmux splitw -h -p 30
    tmux send-keys -t 0 'voltron v r' Enter
    tmux send-keys -t 1 'voltron view bt' Enter

    tmux select-pane -t 0
    tmux splitw -h -p 49
    tmux send-keys -t 1 'voltron view memory' Enter

    tmux select-pane -t 0
    tmux splitw -v -p 52
    tmux send-keys -t 1 'voltron view bp' Enter
}

for x in $SESSIONS
do
    echo $x
    has-session $x
    except session-$x
    tmux -u attach-session -t $x
done
