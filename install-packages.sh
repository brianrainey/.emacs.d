#!/bin/bash

# Keep packages organised under one folder
mkdir packages
cd packages

# clojure-mode
git clone https://github.com/clojure-emacs/clojure-mode/

# paredit
git clone http://mumble.net/~campbell/git/paredit.git/

# dash (for cider)
git clone https://github.com/magnars/dash.el.git

# get pkg-info (for cider)
git clone https://github.com/lunaryorn/pkg-info.el

# cider
git clone https://github.com/clojure-emacs/cider

# markdown-mode
mkdir markdown-mode
cd markdown-mode
wget http://jblevins.org/projects/markdown-mode/markdown-mode.el

# p4.el
mkdir p4.el
cd p4.el
wget https://raw.githubusercontent.com/gareth-rees/p4.el/master/p4.el

