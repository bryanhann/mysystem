main () {
    [ ! "$1" == "install" ] && usage || doit $*
}

doit () {
    for word in $*; do
        [ "$word" == "-b" ] && rm -rf ~/new.borg
        [ "$word" == "-c" ] && rm -rf ~/.config/myborg
    done
    git clone -b myborg https://github.com/bryanhann/dot.borg  ~/new.borg
    git clone https://github.com/bryanhann/dot.config.myborg   ~/.config/myborg
    cd ~/new.borg
    ./install.sh
    echo restart.
}

usage () {
  echo 5555
cat << HEREDOC
USAGE:
    ./install.sh install [ -b -c ]

    Do the following:
        Clone dot.config.myborg to [~/.config/myborg]
        Clone dot.borg to [~/new.borg]
        Install [~/new.borg]

   Nothing will be overwritten unless overwrite options are supplied.

OPTIONS:
    -b   overwrite [~/new.borg]
    -c   overwrite [~/.config/myborg]

HEREDOC
}

main $*
