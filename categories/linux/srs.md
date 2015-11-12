# [srs](https://github.com/ossrs/srs)

### Install on ubuntu

```bash
sudo apt-get install build-essential
sudo apt-get install g++ autoconf automake cmake git curl zlib1g zlib1g.dev

git clone https://github.com/ossrs/srs.git
cd srs/trunk

./configure --disable-all --with-ssl --with-hls --with-nginx --with-ffmpeg --with-transcode --with-dvr && make

./objs/srs -c conf/srs.conf
sudo ./objs/nginx/sbin/nginx
```

### srs.conf

```ruby
# the config for srs to delivery hls
# @see https://github.com/ossrs/srs/wiki/v2_CN_SampleHLS
# @see https://github.com/ossrs/srs/wiki/v2_CN_SampleTranscode2HLS
# @see https://github.com/ossrs/srs/wiki/v2_CN_FFMPEG
# @see https://github.com/ossrs/srs/wiki/v2_CN_DVR
# @see https://support.google.com/youtube/answer/2853702?hl=zh-Hans
# @see full.conf for detail config.
# ./configure --disable-all --with-ssl --with-hls --with-nginx --with-ffmpeg --with-transcode --with-dvr && make

listen              1935;
max_connections     1000;
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
        dvr_path     ./objs/nginx/html/[app]/[stream].[timestamp].flv;
        dvr_plan     session;
    }

    transcode {
        enabled     on;
        ffmpeg      ./objs/ffmpeg/bin/ffmpeg;
        engine sd {
            enabled         on;
            vfilter {
            }
            vcodec          libx264;
            vbitrate        400;
            vfps            25;
            vwidth          426;
            vheight         240;
            vthreads        12;
            vprofile        main;
            vpreset         medium;
            vparams {
            }
            acodec          libfdk_aac;
            abitrate        128;
            asample_rate    44100;
            achannels       2;
            aparams {
            }
            output          rtmp://127.0.0.1:[port]/[app]?vhost=[vhost]/[stream]_[engine];
        }
    }
}
```
