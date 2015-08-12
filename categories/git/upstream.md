## sync upstream

* [Configuring a remote for a fork](https://help.github.com/articles/configuring-a-remote-for-a-fork/)
* [Syncing a fork](https://help.github.com/articles/syncing-a-fork/)
* [How to update GitHub forked repository?](http://stackoverflow.com/questions/7244321/how-to-update-github-forked-repository)


```ruby
# fork other's acts-as-taggable-on on github
git clone git@github.com:FlowerWrong/acts-as-taggable-on.git
git remote -v

# Add the remote, call it "upstream":
git remote add upstream git@github.com:mbleigh/acts-as-taggable-on.git

# Fetch all the branches of that remote into remote-tracking branches,
# such as upstream/master:
git fetch upstream

# Make sure that you're on your master branch:
git checkout master

# Rewrite your master branch so that any commits of yours that
# aren't already in upstream/master are replayed on top of that
# other branch:
git rebase upstream/master

git remote -v

# do something on your branch

git push origin master

# new a pull request
```
