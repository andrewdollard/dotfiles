#! /usr/bin/env bash

dotfiles_dir=$(cd "$(dirname "$0")"; pwd)


for file in $(ls -d home/.??*); do
  base=$(basename "$file")
  rm -rf "${HOME}/${base}"
  ln -s "${dotfiles_dir}/${file}" "${HOME}/${base}"
done
