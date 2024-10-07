set var brew_bin '/opt/homebrew/bin'
set var brew_sbin '/opt/homebrew/sbin'

fish_add_path -m /usr/sbin
fish_add_path -m /bin
fish_add_path -m /usr/bin
fish_add_path -m /usr/local/sbin
fish_add_path -m /usr/local/bin
fish_add_path -m /opt/homebrew/sbin
fish_add_path -m /opt/homebrew/bin
fish_add_path -m ~/.local/bin
fish_add_path -m ~/heroku/bin
fish_add_path -m ~/node/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
    starship init fish | source
end
