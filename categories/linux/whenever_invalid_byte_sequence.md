## invalid byte sequence in US-ASCII

```ruby
sudo vi /etc/default/locale

LANG="zh_CN.UTF-8"
LANGUAGE="zh_CN:"

export LANGUAGE=zh_CN.UTF-8
export LANG=zh_CN.UTF-8
sudo locale-gen zh_CN.UTF-8

locale
```
