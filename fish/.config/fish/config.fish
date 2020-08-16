#set -g -x fish_greeting ''
#alias go='xdg-open'
set PATH $PATH /home/v4d3r/Development/flutter/bin
set PATH $PATH /home/v4d3r/.rbenv/bin
set PATH $PATH "$HOME/.rbenv/plugins/ruby-build/bin"
set -gx PATH /home/v4d3r/go/bin $PATH
set -gx PATH /home/v4d3r/.local/bin $PATH
alias rmf='rm -rf'
alias r='ranger' 
alias xcp='xclip -sel clipboard'
# set greenbitch removal
set LS_COLORS "tw=30;40:ow=38;40"

bind \cf accept-autosuggestion
#bind \cy accept-autosuggestion execute
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

# Regex subdirectories, dosent work for fish
# shopt -s globstar

# emacs server
function emacss
    #emacsclient "$@" 2>/dev/null || /usr/bin/emacs "$@"
    emacsclient -n "$1" 2>/dev/null || /usr/bin/emacs "$1"
end
alias f='emacss'


# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /home/v4d3r/.cache/yay/httptoolkit/src/httptoolkit/node_modules/tabtab/.completions/electron-forge.fish ]; and . /home/v4d3r/.cache/yay/httptoolkit/src/httptoolkit/node_modules/tabtab/.completions/electron-forge.fish

