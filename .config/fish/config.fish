if status is-interactive
  set -gx EDITOR nvim

  # Commands to run in interactive sessions can go here
  fish_vi_key_bindings
  starship init fish | source
  fzf --fish | source
end

set core_config ~/core/dotfiles/config.fish
test -r $core_config; and source $core_config
