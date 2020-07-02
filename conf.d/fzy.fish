bind \cr '_fzy_history'
bind \ct '_fzy_fd'

set -l uninstall_event (basename (status -f) .fish){_uninstall}
function $uninstall_event --on-event $uninstall_event
  bind --erase \cr
  bind --erase \ct
end
