## Vim Plugins(http://vimawesome.com)

#### Vundle
[vundle](https://github.com/gmarik/Vundle.vim)

```ruby
# install
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# then config the .vimrc
```

#### Nerdtree
[nerdtree](https://github.com/scrooloose/nerdtree)
```ruby
# vimrc
" autocmd vimenter * NERDTree
" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = 'left'

nmap <F6> :NERDTreeToggle<cr>
```

#### Vim-colorschemes
[vim-colorschemes](https://github.com/flazz/vim-colorschemes)

#### Syntastic
[syntastic](https://github.com/scrooloose/syntastic)
```ruby
" synctax
" ruby
let g:syntastic_ruby_exec = '/home/yang/.rvm/rubies/ruby-2.1.5/bin/ruby' # which ruby
```

#### Neocomplcache
[neocomplcache](https://github.com/Shougo/neocomplcache.vim)

#### Supertab
[supertab](https://github.com/ervandew/supertab)
```ruby
" SuperTab
" let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2
```

#### Tagbar
[tagbar](https://github.com/majutsushi/tagbar)
```ruby
" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif
```

#### ctrlp
[ctrlp](https://github.com/kien/ctrlp.vim)
```ruby
" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
```

#### Vim-rails
[vim-rails](https://github.com/tpope/vim-rails)

#### vim-javascript
[vim-javascript](https://github.com/pangloss/vim-javascript)

#### vim-ruby
[vim-ruby](https://github.com/vim-ruby/vim-ruby)

#### vim-markdown
[vim-markdown](https://github.com/tpope/vim-markdown)

#### molokai
[molokai](https://github.com/tomasr/molokai)
```ruby
syntax enable
set background=dark
colortheme molokai
```

#### html5
[html5](https://github.com/othree/html5.vim)

#### vim-json
[vim-json](https://github.com/elzr/vim-json)

#### vim-nerdtree-tabs
[vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)

#### scss-syntax
[scss-syntax](https://github.com/cakebaker/scss-syntax.vim)

#### jquery
[jquery](https://github.com/nono/jquery.vim)

#### railscasts color theme
(https://github.com/ryanb/dotfiles/blob/master/vim/colors/railscasts.vim)

#### vim-colors-solarized
[vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

```ruby
syntax enable
set background=dark
colortheme solarized
```


