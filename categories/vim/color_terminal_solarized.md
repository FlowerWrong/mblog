# solarized terminal on linux

### [solarized](http://ethanschoonover.com/solarized)

### vim

```bash
syntax enable
syntax on
set nu

set t_Co=256
set background=dark
colorscheme solarized
```

### solarized theme for GNU `ls`

```ruby
git clone git://github.com/seebi/dircolors-solarized.git
cp ~/dircolors-solarized/dircolors.256dark ~/.dircolors
eval 'dircolors .dircolors'

# vim .zshrc
export TERM=xterm-256color
```

### Gnome-Terminal

```ruby
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./set_dark.sh
```

### [oh my zsh](https://github.com/robbyrussell/oh-my-zsh/)

```ruby
curl -L http://install.ohmyz.sh | sh
```

### [oh-my-zsh plugins](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins)

### [oh-my-zsh themes](https://github.com/robbyrussell/oh-my-zsh/wiki/themes)
