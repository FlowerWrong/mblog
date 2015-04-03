## onecampus db design

1. [baidu wenku](http://wenku.baidu.com/view/cfd77fe96294dd88d0d26b02.html)

```yaml
User:
  uid: user id
  name: username
  salt: password salt
  pass: password
  avatar: avatar
  email: email
  age: age
  university: university
  address_current: {longitude, latitude}
  birthday: birthday
  # tel: telephone
  mobile: mobile number
  gender: male/female
  access_token: access token
  expiration_time: access token expiration time
  last_ip: last login ip

Address:
  uid: user id
  longitude: longitude
  latitude: latitude

Message:
  from_uid: from user id
  to_uid: to user id
  content: msg content
  msg_type: msg type(system msg, friend follower msg, guestbook msg)
```
