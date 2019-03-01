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

### docker

```bash
// https://docs.docker.com/engine/reference/commandline/network_prune/
// Remove all unused networks
docker network prune

// https://docs.docker.com/engine/reference/commandline/system_prune/
docker system prune --volumes
```
