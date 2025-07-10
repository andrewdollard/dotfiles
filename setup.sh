#! /usr/bin/env bash

dotfiles_dir=$(cd "$(dirname "$0")"; pwd)

for file in $(ls -d home/.??*); do
  base=$(basename "$file")
  mv "${HOME}/${base}" "${HOME}/${base}.old"
  ln -s "${dotfiles_dir}/${file}" "${HOME}/${base}"
done

for file in $(ls -d scripts/*); do
  base=$(basename "$file")
  mv "/usr/local/bin/${base}" "/usr/local/bin/${base}.old"
  ln -s "${dotfiles_dir}/${file}" "/usr/local/bin/${base}"
done

vim -c 'PlugInstall' -c 'PlugUpdate' -c 'qa'
