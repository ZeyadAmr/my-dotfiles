#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run xset r rate 320 45 &
run udiskie &
run picom &
run flameshot &
run pa-applet &
run redshift-gtk &
run ~/.fehbg
