## 学壹公司技术开发工作流

1. `master`分支保存`production`代码,将`release`合并到`master`,并在`master`上打版本`tag`
2. `dev`分支保存最新开发代码
3. `release`预发布分支,用于产品正式发布前的预发布,分支自`dev`,命名方式一般为`release-(即将发布的版本号)`,比如`release-1.2`,`release`分支功能上不应该再发生变化,只是一些小的完善或者bug的修复还有实施版本策略。确认版本可以发布后,将`release`合并到`master`,并在`master`上打版本`tag`。`release`同时要合并回`dev`分支,之后可以删除`release`分支。
4. `hotfix`热补丁分支,用于正式发布产品的紧急bug修复,分支自`master`,名方式一般为`hotfix-bug编号`,比如`hotfix-1312`,bug编号来自bug tracking系统,比如 [Trac](http://trac.edgewall.org/)。bug修复完毕后,将`hotfix`分支合并回`master`分支,并更新产品号以及打新的`tag`。如果当前存在release分支,则应将hotfix合并到release分支而不是master分支。`hotfix`还需要合并回`dev`分支。之后可以将`hotfix`分支删除。
5. 临时性分支包括特性分支`feature`(合作开发),用于新功能开发,分支自`dev`,新功能开发完毕必须`merge`回`dev`分支,或者不再需要此特性,直接丢弃分支,命名方式一般为`feature-特性名或者特性编号`
6. 参照 [git分支策略模型](http://openwares.net/linux/git_brantch_model.html)
7. 具体操作 [一个成功的Git分支模型](http://www.uml.org.cn/pzgl/201112163.asp)

### 工程师工作流

#### 个人分支(私人分支)
除了常设分支和临时分支外,每个开发人员还可以设立自己的个人分支(personal branch)。个人分支以自己的名字命名,分支自`dev`。个人分支方便开发人员保存和在不同机器间同步未最终完成的工作成果,代码重构,并且可以减少`dev`分支的commit,保持`dev`分支的整洁。个人分支上的工作告一段落后,更新本地代码库,将个人分支上的工作成果合并到`dev`分支,然后推送`dev`分支到中央仓库。

#### 代码审查

`master`分支只有项目管理员可以touch,其他开发人员无法向`master`推送更新。而开发人员向`dev`分支推送的更新必须经过`gerrit`代码审核服务器,在通过其他开发人员的`code review`和`CI服务器``的自动verify后,才可以正式`merge`到`dev`分支。

其他临时分支和个人分支不经过`gerrit`,直接进入中央仓库。

#### 前端工程师 or 后台工程师

1. 本地创建自己的`name_feature`分支
```ruby
git checkout -b name_feature dev
```
2. 提交更新
```ruby
git commit # not git commit -a -m
```
3. 合并分支并推送到`dev`分支
```ruby
git checkout dev
git pull # or git pull --rebase
git merge --no-ff name_feature # or git rebase
git branch -d name_feature # 删除分支
git commit
git push origin dev
```

#### 合作(前前，后后，前后)
1. 创建一个新的合作分支`new_feature`(一次性)
```ruby
git checkout -b new_feature origin/new_feature # 对应到远程仓库
```
2. 本地创建自己的`name_feature`分支
```ruby
git checkout -b name_feature dev
```
3. 提交更新
```ruby
git commit # not git commit -a -m
```
4. 合并分支并推送到`new_feature`分支
```ruby
git checkout new_feature
git pull # or git pull --rebase
# git branch --set-upstream dev origin/dev
git merge --no-ff name_feature # or git rebase
git branch -d name_feature # 删除分支
git commit
git push origin new_feature
```
5. pull request or mail 请求管理员合并到dev
```ruby
git checkout master
git merge --no-ff release-1.2
git tag -a 1.2
git branch -d release-1.2
```
