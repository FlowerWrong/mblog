# encoding: utf-8
res = `curl 'https://mp.weixin.qq.com/cgi-bin/home?t=home/index&lang=zh_CN&token=1331644126' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3' -H 'Connection: keep-alive' -H 'Cookie: ptui_loginuin=1459232621; pt2gguin=o1459232621; ptcz=836013c31baf77ad036914b68575ad9d56ef75e71c110ac281de57b87d7eca0f; pgv_pvi=2305431552; data_bizuin=3094997603; data_ticket=AgXdKAyJMkeI9wGkGv+BXtQEAwGwPRN+37ggQNoowJE=; slave_user=gh_44ab6b22615e; slave_sid=d1NiNzNUcjgxZGhmVXc3MTVTelN1Y3lMa1RQNGJ0WjR5TFdFRHlKc2xjTjByUGJydjc0OXpMN0NDRFBfdFQwNzNhZVRzVzQxSUFwVUFiTnBNNzdsUE11bXE0c0lpUXdicEtBWHlvZEVDWEh0ajhyam1mcngrR3lyNHJnVzZObCs=; bizuin=3094997603' -H 'Host: mp.weixin.qq.com' -H 'Referer: https://mp.weixin.qq.com/cgi-bin/loginpage?t=wxm2-login&lang=zh_CN' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0'`

p res.encoding

res2 = res.force_encoding("GBK")

p res2.encoding
p res2
