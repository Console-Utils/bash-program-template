#!/usr/bin/env bash

help() {
  echo "usage: main.sh [{-v | --verbose }]"
}

argv="$(getopt --options v --longoptions verbose -- "$@")"

if (( $? != 0 ))
then
  help
  exit 2
fi

eval set -- "$argv"

while :
do
  case $1 in
    -v | --verbose)
      echo "Verbose output enabled. Current Arguments: $argv
Quick Start Example! App is in Verbose mode!"
      break
      ;;
    --)
      echo "Current Arguments: $argv
Quick Start Example!"
      shift
      break
      ;;
    *)
      break
      ;;
  esac
done
