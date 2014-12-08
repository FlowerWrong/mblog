## use pip and pyvenv

#### [install pip](https://pip.pypa.io/en/latest/installing.html)

```bash
python get-pip.py # python = python3.4.0
pip install -U pip
pip install -U setuptools
```

```bash
sudo pip install virtualenv

# virtualenv flaskenv
virtualenv -p /usr/bin/python3.4 flaskenv
cd flaskenv
which pip
source bin/activate
source bin/deactivate
```

```bash
# [Unfortunately, 14.04 shipped with a broken pyvenv](http://askubuntu.com/questions/488529/pyvenv-3-4-error-returned-non-zero-exit-status-1)
pyvenv-3.4 djenv
cd djenv
source bin/activate
source bin/deactivate
```

### ubuntu 14.04 pyvenv bug fixed
```bash
pyvenv-3.4 --without-pip flaskenv
source flaskenv/bin/activate
curl https://bootstrap.pypa.io/get-pip.py | python
deactivate
source flaskenv/bin/activate
```
