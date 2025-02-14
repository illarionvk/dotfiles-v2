set var brew_bin '/opt/homebrew/bin'
set var brew_sbin '/opt/homebrew/sbin'

fish_add_path -m /usr/sbin
fish_add_path -m /bin
fish_add_path -m /usr/bin
fish_add_path -m /Library/TeX/texbin
fish_add_path -m /usr/local/sbin
fish_add_path -m /usr/local/bin
fish_add_path -m /opt/homebrew/sbin
fish_add_path -m /opt/homebrew/bin
fish_add_path -m ~/.local/bin
fish_add_path -m ~/heroku/bin
fish_add_path -m ~/node/bin

if status is-interactive
  set -gx EDITOR nvim

  # Commands to run in interactive sessions can go here
  fish_vi_key_bindings
  starship init fish | source
  fzf --fish | source

  function switchAllPanesToFolderInTmux
    cd $argv[1]
    set paneIndexes (tmux list-panes -F "#{pane_index}")
    for i in $paneIndexes
      tmux send-keys -t $i "cd \"$(pwd)\" && clear" Enter
    end
    tmux select-pane -t $paneIndexes[1]
  end
  alias cdpanes=switchAllPanesToFolderInTmux

  alias vim="nvim"

  abbr --add rg 'rg --smart-case'
  abbr --add nnn 'nnn -e'
end

set core_config ~/core/dotfiles/config.fish
test -r $core_config; and source $core_config
