#!/bin/bash

cite 'about-alias'
about-alias 'taskwarrior aliases.'

# set taskwarrior aliases
function _set_taskwarrior_aliases()
{
  if [ $(command_exists task) ]; then
    # Quick add to inbox
    alias in='task add +in'

  fi
}

_set_taskwarrior_aliases
