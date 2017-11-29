# vim config

## [janus](https://github.com/carlhuda/janus)

```
# .vimrc.before
call janus#disable_plugin('nerdcommenter')
call janus#disable_plugin('unimpaired')
call janus#disable_plugin('buffergator')
call janus#disable_plugin('vroom')
call janus#disable_plugin('nrrwrgn')
call janus#disable_plugin('zoomwin')
call janus#disable_plugin('vim-multiple-cursors')

let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
```

```
# .vimrc.after
color molokai
```

```
mkdir ~/.janus
git clone https://github.com/fatih/vim-go.git vim-go
```


## custom plugins

* [vim-go](https://github.com/fatih/vim-go)
