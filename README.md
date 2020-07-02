# fish-fzy

## Installation

You need to install [fish](https://github.com/fish-shell/fish-shell), [fzy](https://github.com/jhawthorn/fzy), and [fd](https://github.com/sharkdp/fd) before you can use `fish-fzy`.

### Using [fisher](https://github.com/jorgebucaran/fisher) (recommended):

```fish
fisher add cmrn/fish-fzy
```

### Manually:

Copy the contents of `conf.d/` and `functions/` into their respective directories in `~/.config/fish/`

## Usage

| Shortcut   | Action                                                                           |
| ---------- | -------------------------------------------------------------------------------- |
| **Ctrl-R** | Find a command in your shell history and put it in your command line.            |
| **Ctrl-T** | Find a file/folder in the current directory and insert it into the command line. |

## Configuration

`fish-fzy` can be configured by environment variables:

| Variable                 | Description                                               | Default                            |
| ------------------------ | --------------------------------------------------------- | ---------------------------------- |
| FZY_FD_OPTS              | Options passed to `fd`.                                   | `--color=always --follow --hidden` |
| FZY_FD_HIDE_COMMAND_LINE | Hide the command line when searching for files / folders. | `true`                             |

## Troubleshooting

It works on my machine, it may not work on yours. If it doesn't, please open an issue!

### Loading the files and folders takes too long

`fd` can take a while to to run when there are lots of files/folders in the current directory. You can exclude results using `~/.config/fd/ignore`. [See the `fd` docs for more info](https://github.com/sharkdp/fd#hidden-and-ignored-files).
