function cdpanes --description 'Switch all panes to the folder in tmux'
  cd $argv[1]
  set paneIndexes (tmux list-panes -F "#{pane_index}")
  for i in $paneIndexes
    tmux send-keys -t $i "cd \"$(pwd)\" && clear" Enter
  end
  tmux select-pane -t $paneIndexes[1]
end
