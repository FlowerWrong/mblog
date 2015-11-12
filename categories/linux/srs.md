# [srs](https://github.com/ossrs/srs)

### Install on ubuntu

```bash
sudo apt-get install build-essential
sudo apt-get install g++ autoconf automake cmake git curl zlib1g zlib1g.dev

git clone https://github.com/ossrs/srs.git
cd srs/trunk

./configure --with-ssl --with-hls --with-nginx && make

./objs/srs -c conf/srs.conf
```

### srs.conf

```ruby
# main config for srs.
# @see full.conf for detail config.

listen              1935;
max_connections     1000;
srs_log_tank        file;
srs_log_file        ./objs/srs.log;
http_api {
    enabled         on;
    listen          1985;
}
http_server {
    enabled         on;
    listen          8080;
    dir             ./objs/nginx/html;
}
stats {
    network         0;
    disk            sda sdb xvda xvdb;
}
vhost __defaultVhost__ {
    hls {
        enabled         on;
        hls_fragment    10;
        hls_window      60;
        hls_path        ./objs/nginx/html;
        hls_m3u8_file   [app]/[stream].m3u8;
        hls_ts_file     [app]/[stream]-[seq].ts;
    }
    dvr {
        enabled      on;
        dvr_path     dvr_path     ./objs/nginx/html/[app]/[stream].[timestamp].flv;
        dvr_plan     session;
    }
}
```
