#!/bin/sh

dir=${GUESTS_DIR:-Guests}

[ ! -d $dir ] && echo "Guests dir is not found" && exit

selected_dir=$(ls $dir | fzf)

[ ! "$selected_dir" ] && echo "No directory is selected" && exit

feh -F $dir/$selected_dir
