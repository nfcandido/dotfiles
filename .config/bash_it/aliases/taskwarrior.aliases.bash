#!/bin/bash

cite 'about-alias'
about-alias 'taskwarrior aliases.'

# set taskwarrior aliases
function _set_taskwarrior_aliases()
{
  if [ $(command_exists task) ]; then
    # Quick add to inbox
    alias in='task add +in'
    # Add a ticker entry to inbox
    alias tick=tickle
    # Add a tickler entry for tomorrow (good when ypu want to think before making a decision)
    alias think='tickle +1d'
  fi
}

_set_taskwarrior_aliases
