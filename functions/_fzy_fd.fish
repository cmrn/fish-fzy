function _fzy_fd -d 'find a file or with fzy and insert it into the command line'
  commandline --current-token | read -l query
  set -q FZY_FD_HIDE_COMMAND_LINE; or set FZY_FD_HIDE_COMMAND_LINE true
  set -q FZY_FD_OPTS; or set FZY_FD_OPTS --color=always --follow --hidden

  if not $FZY_FD_HIDE_COMMAND_LINE
    echo
  end

  fd $FZY_FD_OPTS | fzy -q $query | read -l result

  if string length -q $result
    commandline --current-token (__fzy_clean_string $result)
  end

  commandline -f repaint
end

function __fzy_clean_string --argument-names str -d 'remove ANSI colors and escape special chars in a string'
  echo $str \
    | string replace -ra '\e\[[^m]*m' '' \
    | string escape
end
