#!/bin/bash
mirrors=(
  https://mirrors.aliyun.com/archlinux/extra/os/x86_64/extra.db
  https://mirror.sg.gs/archlinux/extra/os/x86_64/extra.db
  https://archlinux.interhost.co.il/extra/os/x86_64/extra.db
  http://sg.mirrors.cicku.me/archlinux/extra/os/x86_64/extra.db
  https://mirror.hafeezh.com/archlinux/extra/os/x86_64/extra.db
  http://mirrors.aliyun.com/archlinux/extra/os/x86_64/extra.db
)

for url in "${mirrors[@]}"; do
  speed=$(curl -o /dev/null -s --max-time 8 -w "%{speed_download}" "$url")
  echo "$speed  $url"
done | sort -rn
