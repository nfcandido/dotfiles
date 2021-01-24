#!/bin/bash

cite 'about-alias'
about-alias 'taskwarrior aliases.'

# set taskwarrior aliases
function _set_taskwarrior_aliases()
{
  if _command_exists task; then
    # Quick add to inbox
    alias tin='task add +in'
    # Quick add a work task
    alias wrkt='task add +wrk'
    # Add a ticker entry to inbox
    alias tick=tickle
    # Add a tickler entry for tomorrow (good when ypu want to think before making a decision)
    alias think='tickle +1d'
    # Research: research something on the internet
    alias rnd='task add +rnd +next +@computer +@online'
  fi
}

_set_taskwarrior_aliases
