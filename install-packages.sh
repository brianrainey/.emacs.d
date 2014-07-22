#!/bin/bash

# Installs useful emacs libraries.

# Keep them organised under one folder
mkdir packages
cd packages

# Get clojure mode from Github
git clone https://github.com/clojure-emacs/clojure-mode/

# Get paredit from Gitub
git clone http://mumble.net/~campbell/git/paredit.git/

# Create a folder for markdown mode
mkdir markdown-mode
cd markdown-mode

# wget markdown mode
wget http://jblevins.org/projects/markdown-mode/markdown-mode.el
