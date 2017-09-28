# clean your OSX by hand

I clean my OSX today, save 100GB space.

## See large file

```bash
cd ~
du -shc *
```

### clean android SDK optional

```
rm -rf ~/Library/Android
```

### clean `~/Library/Logs`

```bash
rm -rf ~/Library/Logs
```

### clean `~/Library/Caches`

```bash
rm -rf ~/Library/Caches
```

### clean xcode, See [what-can-i-delete-from-library-developer-xcode-folder](https://stackoverflow.com/questions/39481549/what-can-i-delete-from-library-developer-xcode-folder) optional

```
cd ~/Library/Developer/Xcode
```

I remove most file in `~/Library/Developer/Xcode/iOS DeviceSupport`

### clean `~/Library/Developer/CoreSimulator/Devices`

```bash
xcrun simctl delete unavailable
```
