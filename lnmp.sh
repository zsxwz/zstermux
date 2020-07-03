#!/data/data/com.termux/files/usr/bin/bash

if ! [ -x "$(command -v mariadb)"  ] ; then
read -p "设置数据库密码："  passwd
apt install mariadb -y
nohup mysqld &

#设置数据库密码
echo "use mysql;
set password for 'root'@'localhost' = password('$passwd');
flush privileges;
" | mysql -u $(whoami)
else 
echo "mysql已安装"
fi

if ! [ -x "$(command -v nginx)"  ] ; then
apt install nginx -y

#nginx配置
sed -i 's/index  index.html index.htm;/index  index.html index.htm index.php;/g' /data/data/com.termux/files/usr/etc/nginx/nginx.conf
sed -i '/error_page   500 502 503 504  \/50x.html;/i\    location ~ \.php\$ {' /data/data/com.termux/files/usr/etc/nginx/nginx.conf
sed -i '/error_page   500 502 503 504  \/50x.html;/i\    root           html;' /data/data/com.termux/files/usr/etc/nginx/nginx.conf
sed -i '/error_page   500 502 503 504  \/50x.html;/i\    fastcgi_pass   127.0.0.1:9000;' /data/data/com.termux/files/usr/etc/nginx/nginx.conf
sed -i '/error_page   500 502 503 504  \/50x.html;/i\    fastcgi_index  index.php;' /data/data/com.termux/files/usr/etc/nginx/nginx.conf
sed -i '/error_page   500 502 503 504  \/50x.html;/i\    fastcgi_param  SCRIPT_FILENAME  /data/data/com.termux/files/usr/share/nginx/html$fastcgi_script_name;' /data/data/com.termux/files/usr/etc/nginx/nginx.conf
sed -i '/error_page   500 502 503 504  \/50x.html;/i\    include        fastcgi_params;' /data/data/com.termux/files/usr/etc/nginx/nginx.conf
sed -i '/error_page   500 502 503 504  \/50x.html;/i\   }' /data/data/com.termux/files/usr/etc/nginx/nginx.conf

kill -9 `pgrep nginx`
nginx
else 
echo "nginx已安装"
fi

if ! [ -x "$(command -v php-fpm)"  ] ; then
apt install php-fpm -y

#php配置
sed -i 's/listen = \/data\/data\/com.termux\/files\/usr\/var\/run\/php-fpm.sock/listen = 127.0.0.1:9000/g' /data/data/com.termux/files/usr/etc/php-fpm.d/www.conf
kill -9 `pgrep php-fpm`
php-fpm

else 
echo "php-fpm已安装"
fi

if ! [ -x "$(command -v php)"  ] ; then
apt install php -y
else 
echo "php已安装"
fi 
echo "网站根目录：/data/data/com.termux/files/usr/share/nginx/html/kod"
echo "网站默认端口8080"
