function _fzy_history -d 'search shell history with fzy'
  commandline --current-buffer | read -l query

  history | fzy $fzy_flags -q $query | read -l result

  commandline $result
  commandline -f repaint
end
