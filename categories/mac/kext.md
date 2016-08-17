# kext

## How to install a kext?

```bash
# OSX 10.11 go to Recovery Mode -> Terminal
csrutil status
csrutil enable --without kext --without debug

# load kext
kextstat | grep name
sudo chmod -R 755 kextfile.kext
sudo chown -R root:wheel kextfile.kext
sudo kextload kextfile.kext
kextstat | grep name

sudo kextunload kextfile.kext
```
