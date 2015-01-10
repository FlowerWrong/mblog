# Install drupal 7 on ubuntu

1. [安装指南](https://www.drupal.org/documentation/install)
2. [系统需求](https://www.drupal.org/requirements)
3. [PHP requirements](https://www.drupal.org/requirements/php)
        sudo apt-get install php5-gd
        sudo service apache2 start
4. [安装成功后修改文件和目录权限](https://www.drupal.org/documentation/install/settings-file)
        chmod 644 sites/default/settings.php
        chmod 755 sites/default
5. [Setting up cron](https://www.drupal.org/cron)
6. [Configure clean URLs](https://www.drupal.org/getting-started/clean-urls)

### 汉化

1. [汉化包下载](localize.drupal.org/translate/languages/zh-hans)
2. 开启 `Locale` 模块
3. 点击 `Configuration > Languages` 进入语言管理界面
4. 点击 `Add Language` 连接，选择 `Chinese, Simplified`，接着点击 `Configuration > Translate interface`，再点击 `Import` ，在 `Language file` 下选择本地已下载的drupal7中文包，接着点击 `Import` 按钮，即可开始导入中文包。
5. 到 `admin/settings/language` 目录下，将简体中文设为 `Default` 即可。
