## onecampus db design

1. [baidu wenku](http://wenku.baidu.com/view/cfd77fe96294dd88d0d26b02.html)
2. [act as taggable on](https://github.com/mbleigh/acts-as-taggable-on)

```yaml
User:
  last_name: last name
  first_name: first name
  uid: user id
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
  active_status: active/deactive
  last_sign_in_at: last_sign_in_at
  language: language

ThirdLogin:  # one to many
  user_id: user id
  uname: username
  auth_token: auth token
  refresh_token: refresh token
  open_id: open id
  site: auth site(qq, wechat, sina, github)
  expiration_time: access token expiration time
  version: auth version

Address:  # one to many
  user_id: user id
  longitude: longitude
  latitude: latitude

Message:
  from_uid: from user id
  to_uid: to user id
  content: msg content
  msg_type: msg type(system msg, friend follower msg, guestbook msg)
```


#### gems

1. [acts_as_follower](https://github.com/tcocca/acts_as_follower)
2. [mailboxer](https://github.com/mailboxer/mailboxer)
