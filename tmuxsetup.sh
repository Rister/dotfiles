#!/bin/bash

tmux new-window -k -t 1 -n 'todo.txt'
tmux send-keys "watch -tc ~/.todotxt/todo.sh ls" C-m
tmux split-window -v -t 1
tmux split-window -h -t 0
tmux select-pane -t 2
tmux send-keys "watch -tc ~/.todotxt/todo.sh ls +flt" C-m
tmux select-pane -t 1

tmux new-window -k -t 2 -n 'ledger'
tmux send-keys "cd ~/ledger/" C-m
tmux send-keys "vim 2012.ledger" C-m
tmux split-window -h
tmux send-keys "cd ~/ledger/" C-m
tmux send-keys "watch -tc ledger -f 2012.ledger balance" C-m

tmux select-window -t 1
