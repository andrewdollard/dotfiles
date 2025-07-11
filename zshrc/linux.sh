if [[ "$(command -v setkxbmap)" ]] \
   && [[ "$(command -v xcape)" ]]; then

  setxkbmap -option ctrl:swapcaps
  xcape -e 'Control_L=Escape'

fi

