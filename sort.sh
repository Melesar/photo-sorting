#!/bin/sh

dir=${GUESTS_DIR:-Guests}

[ ! -d $dir ] && echo "Guests dir is not found" && exit

selected_dir=$(ls $dir | rofi -dmenu -i)

[ ! "$selected_dir" ] && echo "No directory is selected" && exit

output_dir=$dir/$selected_dir

[ ! -d $output_dir ] && mkdir $output_dir

cp $1 $output_dir/$1
