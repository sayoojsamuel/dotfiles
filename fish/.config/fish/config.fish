#set -g -x fish_greeting ''
#alias go='xdg-open'
set PATH $PATH /home/v4d3r/Development/flutter/bin
set PATH $PATH /home/v4d3r/.rbenv/bin
set PATH $PATH "$HOME/.rbenv/plugins/ruby-build/bin"
set -gx PATH /home/v4d3r/go/bin $PATH
alias rmf='rm -rf'
alias r='ranger' 
alias xcp='xclip -sel clipboard'

function fcp    
    xclip -sel clip < $argv
end

function download_package
    sudo apt install -y $argv --print-uris | grep "http://" | cut -d"'" -f 2 | sudo  wget -P /var/cache/apt/archives/ -c -i - ; sudo apt install $argv
end

begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

# Regex subdirectories
shopt -s globstar
