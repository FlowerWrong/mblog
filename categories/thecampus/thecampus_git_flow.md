## 学壹公司技术开发工作流

1. `master`分支保存`production`代码
2. `dev`分支保存最新开发代码
3. `staging`分支保存测试版本代码
4. 功能性分支(合作开发)

### 工程师工作流

#### 前端工程师

1. 本地创建自己的`name_feature`分支
```ruby
git checkout -b name_feature
```
2. 提交更新
```ruby
git commit # not git commit -a -m
```
3. 合并分支并推送到`dev`分支
```ruby
git checkout dev
git pull # or git pull --rebase
git merge name_feature # or git rebase
git commit
git push origin dev
```

#### 后台工程师

1. 本地创建自己的`name_feature`分支
```ruby
git checkout -b name_feature
```
2. 提交更新
```ruby
git commit # not git commit -a -m
```
3. 合并分支并推送到`dev`分支
```ruby
git checkout dev
git pull # or git pull --rebase
git merge name_feature # or git rebase
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
git checkout -b name_feature
```
3. 提交更新
```ruby
git commit # not git commit -a -m
```
4. 合并分支并推送到`new_feature`分支
```ruby
git checkout new_feature
git pull # or git pull --rebase
git merge name_feature # or git rebase
git commit
git push origin new_feature
```
5. pull request or mail
