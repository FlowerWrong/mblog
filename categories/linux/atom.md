## [atom](https://atom.io/) 编辑器的安装/插件的安装使用

#### 安装 [atom](https://atom.io/) 编辑器 via ppa

```bash
# atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
```
#### 插件的安装, [linter-jshint](https://github.com/AtomLinter/linter-jshint)，`jshint`是js的语法检查插件

1. 先安装 [linter](https://github.com/AtomLinter/Linter) 插件

        mkdir -p ~/software/atom-plugins
        cd ~/software/atom-plugins/
        git clone https://github.com/AtomLinter/Linter.git
        cd ~/software/atom-plugins/Linter/
        npm install # 需要安装nodejs
        apm uninstall linter
        apm link
        apm install

2. 安装 [linter-jshint](https://github.com/AtomLinter/linter-jshint)

        cd ~/software/atom-plugins/
        git clone https://github.com/AtomLinter/Linter.git
        cd ~/software/atom-plugins/linter-jshint/
        npm install # 需要安装nodejs
        apm uninstall linter-jshint
        apm link
        apm install

3. [其他插件列表](https://atom.io/packages)
4. [主题列表](https://atom.io/themes)
5. 无论插件还是主题，安装都同上

#### 插件推荐(不要安装过多的插件)

1. [linter and his firents](https://github.com/AtomLinter/Linter)
2. [atom-beautify](https://atom.io/packages/atom-beautify) to use erb-beautify `gem install htmlbeautifier`
3. [autocomplete-plus](https://atom.io/packages/autocomplete-plus)
4. [autocomplete-paths](https://github.com/saschagehlich/autocomplete-paths)
5. [ctrl+shift+p](https://github.com/atom/command-palette)
