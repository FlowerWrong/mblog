## linxu sed
sed是一个很好的文件处理工具，本身是一个管道命令，主要是以行为单位进行处理，可以将数据行进行替换、删除、新增、选取等特定工作

```ruby
sed '1d' demo.txt # 删除第一行
sed '$d' demo.txt # 删除最后一行

sed -n '1p' demo.txt # 显示第一行
sed -n '2,$p' demo.txt # 显示2到最后一行

sed -n '/ruby/p' demo.txt # 查询包括关键字ruby所在所有行
sed -n '/\$/p' demo.txt # 查询包括关键字$所在所有行，使用反斜线\屏蔽特殊含义

sed '1a drink tea' demo.txt # 第一行后增加字符串"drink tea"
sed '1,3a drink tea' demo.txt # 第一行到第三行后增加字符串"drink tea"
sed '1a drink tea\nor coffee' demo.txt # 第一行后增加多行，使用换行符\n

sed '1c Hi' demo.txt # 第一行代替为Hi

# 替换一行中的某部分
sed 's/要替换的字符串/新的字符串/g'
sed -n '/ruby/p' demo.txt | sed 's/ruby/bird/g' # 替换ruby为bird
sed -n '/ruby/p' demo.txt | sed 's/ruby//g' # 删除ruby
sed -i '$a bye' demo.txt # 在文件demo.txt中最后一行直接输入"bye"
```
