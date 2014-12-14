## git commit

1. Fix, Add, Modify, Remove, Refactor.
2. `git commit -am "Add the angular.js to app/assets/javascripts/lib."` 这是提交的标题, 使用英文, 且是一个完整的句子.
3. 目前没有要求一定要使用`git commit`来提交, 也可以使用2中的`git commit -am "Commit msg."`的方式, 区别在于是否打开你配置的编辑器`git config --global core.editor "gedit -s"`. 以后都是使用打开编辑器的方式写`commit`


#### 配置编辑器提交方式规范`git commit`

1. 标题同上, `Add the angular.js to app/assets/javascripts/lib.` 使用英语句子.
2. 永远别忘了第2行是空行
3. 请将每次提交限定于完成一次逻辑功能。并且可能的话，适当地分解为多次小更新，以便每次小型提交都更易于理解。
4. 最后是你的 `commit` 的详细描述。
