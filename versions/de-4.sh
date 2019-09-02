#!/usr/bin/env sh

mkdir ~/.codexten
mkdir ~/.codexten/bin

set_env 'PATH' '$HOME/.codexten/bin:$PATH'

ln -s ~/.de/bin/de ~/.codexten/bin/de
ln -s ~/.de/bin/de ~/.codexten/bin/dev
