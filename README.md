# fish-fzy

`fish-fzy` is a fish plugin which adds key bindings to use `fzy` at the command line. Currently supports searching file & folder names (using `fd`) and your shell history.

## Installation

You need to install [fish](https://github.com/fish-shell/fish-shell), [fzy](https://github.com/jhawthorn/fzy), and [fd](https://github.com/sharkdp/fd) before you can use this plugin.

### Using [fisher](https://github.com/jorgebucaran/fisher) (recommended):

```fish
fisher add cmrn/fish-fzy
```

### Manually:

Copy the contents of `conf.d/` and `functions/` into their respective directories in `~/.config/fish/`

## Usage

| Shortcut   | Action                                                                    |
| ---------- | ------------------------------------------------------------------------- |
| **Ctrl-R** | Find a command in your shell history and put it in your command line.     |
| **Ctrl-T** | Find a file/folder in the current directory and insert it at your cursor. |

## Configuration

`fish-fzy` can be configured by environment variables:

| Variable                 | Description                                               | Default                            |
| ------------------------ | --------------------------------------------------------- | ---------------------------------- |
| FZY_FD_OPTS              | Options passed to `fd`.                                   | `--color=always --follow --hidden` |
| FZY_FD_HIDE_COMMAND_LINE | Hide the command line when searching for files & folders. | `true`                             |

## Troubleshooting

It works on my machine, it may not work on yours. If it doesn't, please open an issue!

### Slow to load files & folders

`fd` can take a while to to run when there are lots of items in the current directory. You can exclude results using `~/.config/fd/ignore`. [See the `fd` docs for more info](https://github.com/sharkdp/fd#hidden-and-ignored-files).

### Prompt is duplicated

Due to a limitation in fish, this plugin can't erase anything before the line where it was triggered. For multi-line prompts, this means that the first line(s) of your prompt will be duplicated whenever `fzy` is invoked. Additionally, disabling the `FZY_FD_HIDE_COMMAND_LINE` option will cause your previous command line to continue to appear, even after `fzy` is closed. See [fish-shell/fish-shell#5945](https://github.com/fish-shell/fish-shell/issues/5945).

## Credits

Inspired by [gyakovlev/fish-fzy](https://github.com/gyakovlev/fish-fzy).
