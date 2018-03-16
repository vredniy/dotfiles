#!/bin/bash

function tabc() {
  NAME=$1;

  if [ -z "$NAME" ]; then NAME="Default"; fi

  echo -e "\033]50;SetProfile=$NAME\a"
}

function tab-reset() {
  NAME="Default"
  echo -e "\033]50;SetProfile=$NAME\a"
}

echo "$1"

if [[ "$1" =~ 10.60.0.32 ]]; then
  tabc Production

  echo -ne "\033]6;1;bg;*;default\a"
  echo -ne "\033]6;1;bg;red;brightness;255 0 0\a"

elif [[ "$1" =~ 10.30.1.22 ]]; then
  tabc Staging

  echo -ne "\033]6;1;bg;*;default\a"
  echo -ne "\033]6;1;bg;green;brightness;255\a"

elif [[ "$1" =~ "10.30.2.20" ]]; then
  tabc Testing

  echo -ne "\033]6;1;bg;*;default\a"
  echo -ne "\033]6;1;bg;green;brightness;255\a"

else
  tabc Ssh

  echo -ne "\033]6;1;bg;*;default\a"
  echo -ne "\033]6;1;bg;blue;brightness;255\a"
fi

ssh $1

tab-reset
