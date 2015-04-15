# cmd

```ruby
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)

# get docker ip
docker inspect <container id>
docker inspect --format '{{ .NetworkSettings.IPAddress }}' <container id>
```
