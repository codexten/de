#!/usr/bin/env sh

mkdir ~/.codexten
mkdir ~/.codexten/bin

set_env 'PATH' '$HOME/.codexten/bin:$PATH'

set_global_executable $HOME/.de/bin/de de
set_global_executable $HOME//.de/bin/de dev

create_symlink $HOME/.profile $HOME/Desktop/profile.txt