cite about-plugin
about-plugin 'Taskwarrior usefull functions'

tickle () {
  about 'Adds a task to inbox tha only appears after a certain date'
  param ' when description'
  example: '$ tickle sunday Remind Dave to water his plants.'
  group: 'taskwarrior'

  desdline=$1
  shift
  in +tickle wait:$deadline $@
}

