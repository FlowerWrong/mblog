## Vim multi screen

Vim 的分屏方案除了可以水平分屏和垂直分屏的`tmux`插件外，也可以使用 vim 7 自带的table功能。

```ruby
:tabnew [+opt] [+cmd] #建立对指定文件新的tab
:tabc       # 关闭当前的tab
:tabo       # 关闭所有其他的tab
:tabs       # 查看所有打开的tab
:tabp       # 前一个
:tabn       # 后一个
:tabfirst   # 移动到第一个标签页
:tablast    # 移动到最后一个标签页
:help table
```
