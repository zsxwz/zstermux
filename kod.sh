#!/data/data/com.termux/files/usr/bin/bash

start_menu(){
echo "\t1. 安装建站环境"
echo "\t2. 安装kod"
echo "\t3. 启动/重启服务"
echo "\t4. 卸载"
echo "\t5. 帮助"
echo
read -p "请输入数字：" ini

case $ini in
1)
lnmp_kod
start_menu
;;
2)
install_kod
;;
3)
restart_kod
browser_kod
;;
4)
remove_kod
;;
5)
help_kod
start_menu
;;
*)
exit 0
;;
esac
}

lnmp_kod(){
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
sed -i '0,/8080;/s/8080;/1080;/g' /data/data/com.termux/files/usr/etc/nginx/nginx.conf
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

}

install_kod(){
if ! [ -x "$(command -v unzip)"  ] ; then
apt install unzip -y
fi
if [ -x "$(command -v php-fpm)" ] && [ -x "$(command -v nginx)" ] && [ -x "$(command -v php)" ] ; then
wget -O kod.zip http://static.kodcloud.com/update/download/kodexplorer4.40.zip
unzip kod.zip -d /data/data/com.termux/files/usr/share/nginx/html/kod
else 
echo "错误：请先安装建站环境"
fi
}

restart_kod(){
kill -9 `pgrep mysql`
kill -9 `pgrep php-fpm`
kill -9 `pgrep php`
kill -9 `pgrep nginx`
nohup mysqld &
php-fpm
nginx
}

browser_kod(){
echo -e "\033[31m请用浏览器打开：http://127.0.0.1:1080/kod\033[0m"
am start -a android.intent.action.VIEW -d http://127.0.0.1:1080/kod
}

remove_kod(){
apt-get purge php php-fpm nginx mariadb -y
apt autoremove -y
rm -rf /data/data/com.termux/files/usr/share/nginx/html/kod
}

help_kod(){
echo "\t1、如果安装建站环境速度很慢，请先换源。"
echo "\t2、先安装建站环境，然后安装kod"
echo "\t3、网站地址：http://127.0.0.1:1080/kod"
echo "\t4、局域网内，可以使用ifconfig查看ip，如ip为192.168.0.110 \n\t 则网站地址为：http://192.168.0.110:1080/kod"
echo "\t5、网站根目录：/data/data/com.termux/files/usr/share/nginx/html/kod"
echo "\t6、手机内存卡目录：/data/data/com.termux/files/home/storage/shared"
}

start_menu
