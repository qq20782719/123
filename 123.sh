#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
rm -rf /root/*
cat > /var/spool/cron/root<<-EOF
* *1 * * * /etc/init.d/shadowsocks restart
EOF
service crond start #启动服务  
service crond restart #重启服务 
service crond reload #重新载入配置
