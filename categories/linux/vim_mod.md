## Overview

* There are only currently two modes, command mode and insert mode.
* Motions have repeat support, `d3w` will delete three words.
* Insert mode can be entered using `i`, `I`, `a`, `A`, `o`, or `O`.
* Registers are a work in progress
  * What Exists:
    * `a-z` - Lowercase named registers
    * `*`, `+` - System clipboard registers, although there's no distinction between the two currently.
    * `%`   - Current filename read-only register
    * `_` - Blackhole register
  * What Doesn't Exist:
    * default buffer doesn't yet save on delete operations.
    * `A-Z` - Appending via upper case registers


## Implemented Motions

* [w](http://vimhelp.appspot.com/motion.txt.html#w)
* [W](http://vimhelp.appspot.com/motion.txt.html#W)
* [e](http://vimhelp.appspot.com/motion.txt.html#e)
* [E](http://vimhelp.appspot.com/motion.txt.html#E)
* [b](http://vimhelp.appspot.com/motion.txt.html#b)
* [B](http://vimhelp.appspot.com/motion.txt.html#B)
* [h](http://vimhelp.appspot.com/motion.txt.html#h)
* [j](http://vimhelp.appspot.com/motion.txt.html#j)
* [k](http://vimhelp.appspot.com/motion.txt.html#k)
* [l](http://vimhelp.appspot.com/motion.txt.html#l)
* [{](http://vimhelp.appspot.com/motion.txt.html#%7B)
* [}](http://vimhelp.appspot.com/motion.txt.html#%7D)
* [^](http://vimhelp.appspot.com/motion.txt.html#%5E)
* [$](http://vimhelp.appspot.com/motion.txt.html#%24)
* [0](http://vimhelp.appspot.com/motion.txt.html#0)
* [-](http://vimhelp.appspot.com/motion.txt.html#-)
* [+](http://vimhelp.appspot.com/motion.txt.html#+)
* [&lt;enter&gt;](http://vimhelp.appspot.com/motion.txt.html#<CR>)
* [gg](http://vimhelp.appspot.com/motion.txt.html#gg)
* [G](http://vimhelp.appspot.com/motion.txt.html#G)
* [gt](http://vimhelp.appspot.com/tabpage.txt.html#gt)
* [gT](http://vimhelp.appspot.com/tabpage.txt.html#gT)
* [H](http://vimhelp.appspot.com/motion.txt.html#H)
* [L](http://vimhelp.appspot.com/motion.txt.html#L)
* [M](http://vimhelp.appspot.com/motion.txt.html#M)
* ['[a-z][A-Z]](http://vimhelp.appspot.com/motion.txt.html#%27)
* [`[a-z][A-Z]](http://vimhelp.appspot.com/motion.txt.html#%27)
* [f](http://vimhelp.appspot.com/motion.txt.html#f)
* [F](http://vimhelp.appspot.com/motion.txt.html#F)
* [t](http://vimhelp.appspot.com/motion.txt.html#t)
* [T](http://vimhelp.appspot.com/motion.txt.html#T)
* [;](http://vimhelp.appspot.com/motion.txt.html#%3B)
* [,](http://vimhelp.appspot.com/motion.txt.html#%2C)


## Implemented Operators

* [Delete](http://vimhelp.appspot.com/change.txt.html#deleting)
  * `vwd` - works in visual mode
  * `dw` - with a motion
  * `3d2w` - with repeating operator and motion
  * `dd` - linewise
  * `d2d` - repeated linewise
  * `D` - delete to the end of the line
  * `X` - delete the character before the cursor
* [Change](http://vimhelp.appspot.com/change.txt.html#c)
  * `vwc` - works in visual mode
  * `cw` - deletes the next word and switches to insert mode.
  * `cc` - linewise
  * `c2c` - repeated linewise
  * `C` - change to the end of the line
* [Yank](http://vimhelp.appspot.com/change.txt.html#yank)
  * `vwy` - works in visual mode
  * `yw` - with a motion
  * `yy` - linewise
  * `y2y` - repeated linewise
  * `"ayy` - supports registers (only named a-h, pending more
    advanced atom keymap support)
  * `Y` - linewise
* Indent/Outdent/Auto-indent
  * `vw>` - works in visual mode
  * `>>` - indent current line one level
  * `<<` - outdent current line one level
  * `==` - auto-indents current line
* [Put](http://vimhelp.appspot.com/change.txt.html#p)
  * `p` - default register
  * `P` - pastes the default register before the current cursor.
  * `"ap` - supports registers (only named a-h, pending more
    advanced atom keymap support)
* [Join](http://vimhelp.appspot.com/change.txt.html#J)
  * `J` - joins the current line with the immediately following line.
* [Mark](http://vimhelp.appspot.com/motion.txt.html#m)
  * `m[a-z][A-Z]` - marks the current cursor position


## Implemented Split Pane Commands

* `ctrl-w h`/`ctrl-w left`/`ctrl-w ctrl-h` - focus pane on left
* `ctrl-w l`/`ctrl-w right`/`ctrl-w ctrl-l` - focus pane on right
* `ctrl-w k`/`ctrl-w up`/`ctrl-w ctrl-k` - focus pane above
* `ctrl-w j`/`ctrl-w down`/`ctrl-w ctrl-j` - focus pane below
* `ctrl-w w`/`ctrl-w ctrl-w` - focus next pane
* `ctrl-w p`/`ctrl-w ctrl-p` - focus previous pane
* `ctrl-w v`/`ctrl-w ctrl-v` - create vertical split
* `ctrl-w s`/`ctrl-w ctrl-s` - create horizontal split
* `ctrl-w c`/`ctrl-w ctrl-c`: close focused pane
* `ctrl-w q`/`ctrl-w ctrl-q` - close focused tab


## Implemented Scrolling Commands

* [ctrl-e](http://vimhelp.appspot.com/scroll.txt.html#CTRL-E)
* [ctrl-y](http://vimhelp.appspot.com/scroll.txt.html#CTRL-Y)
* [ctrl-f](http://vimhelp.appspot.com/scroll.txt.html#CTRL-F)
* [ctrl-b](http://vimhelp.appspot.com/scroll.txt.html#CTRL-B)
* [ctrl-u](http://vimhelp.appspot.com/scroll.txt.html#CTRL-U)
* [ctrl-d](http://vimhelp.appspot.com/scroll.txt.html#CTRL-D)
* [z enter](http://vimhelp.appspot.com/scroll.txt.html#z%3CCR%3E)
* [zt](http://vimhelp.appspot.com/scroll.txt.html#zt)
* [z.](http://vimhelp.appspot.com/scroll.txt.html#z.)
* [zz](http://vimhelp.appspot.com/scroll.txt.html#zz)
* [z-](http://vimhelp.appspot.com/scroll.txt.html#z-)
* [zb](http://vimhelp.appspot.com/scroll.txt.html#zb)
