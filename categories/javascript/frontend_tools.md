# Frontend tools

http://www.emmanueloga.com/2013/07/23/Using-AngularJS-with-a-Rails-backend.html
https://blog.cesarandreu.com/posts/from_rails_to_angularjs
http://jeff.konowit.ch/posts/yeoman-rails-angular/

1. nodejs
2. [bower](http://bower.io/)
3. [karma](http://karma-runner.github.com/)--just test container(+jasmine)
4. jasmine(for test)
5. [grunt](http://gruntjs.com/)
        grunt-watch
				grunt-concat
				grunt-uglify
				grunt-jshint
6. [phantomjs](http://www.phantomjs.org/)
7. [livereload](http://livereload.com/)
8. [yeoman](http://yeoman.io/)
9. sublime test(editor)
10. batarang(chrome plugin)
11. git(CVM)
12. atom(editor)
13. webstorm(editor)
14. requirejs(AMD)
15. compass(scss)
16. bootstrap(css library)
17. http-server(a simple server)
18. protractor(just for test angularjs)
19. Karma-coverage: 代码覆盖率检查
20. emberjs(MVC)
21. angularjs(MVC)
22. reactjs(V)
23. jquery(library)
24. backbone(MVC)
25. underscorejs(library)
26. coffeescript(compile to js)
27. scss(vs less)
28. Gulp(基于javascript的前端自动构建工具, 类似grunt)
29. [nvm](https://github.com/creationix/nvm/)
30. [angular ui](http://angular-ui.github.io/)

### nvm ###

```ruby
sudo apt-get remove --purge nodejs
curl https://raw.githubusercontent.com/creationix/nvm/v0.23.2/install.sh | bash
nvm ls-remote
nvm install 0.11
nvm use 0.11
nvm which 0.11
nvm ls
```

### npm ###

```ruby
npm update npm -g
npm install moduleName --save-dev  # 自动把模块和版本号添加到devdependencies部分
```
