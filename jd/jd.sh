#!/data/data/com.termux/files/usr/bin/bash

termux-wake-lock

cd ~

if ! [ -x "$(command -v nano)"   ] ; then
	apt install nano -y
fi

if ! [ -x "$(command -v git)"   ] ; then
	apt install git -y
fi

if ! [ -x "$(command -v crontab)"  ] ; then
	apt install cronie
fi

if ! [ -x "$(command -v node)"   ] ; then
	apt install node -y
	npm install -g download --registry https://registry.npm.taobao.org
fi

if ! [ -d "$HOME/jd_scripts"  ] ; then
	echo "拉取源码，如果无法拉取，请自行将GitHub源码导入码云，然后git clone"
	git clone https://github.com/chinnkarahoi/jd_scripts
fi

cd ~/jd_scripts

if ! [ -a all ] ; then
	wget https://raw.githubusercontent.com/zsxwz/zstermux/master/jd/all
fi

if ! [ -a resolve.sh ] ; then
	wget https://raw.githubusercontent.com/zsxwz/zstermux/master/jd/resolve.sh
fi

if ! [ -a e.sh ] ; then
	wget https://raw.githubusercontent.com/zsxwz/zstermux/master/jd/e.sh
fi

zsxwz=`crontab -l |grep zsxwz |wc -l`
if [ "$zsxwz" -eq 0 ] ; then
	crontab -l | { cat; echo "#京东多合一脚本签到，使用教程及更多经常内容：https://bbs.zsxwz.com"; echo "33 */5 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_newYearMoney.js";echo "45 0,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_speed_redpocke.js";echo "1,31 0-23/1 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_live_redrain.js";echo "10 0,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_tcl.js";echo "7 0,17 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_bean_sign.js";echo "0,30 0 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_blueCoin.js";echo "6 0,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_club_lottery.js";echo "15 6-18/6 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_fruit.js";echo "45 */2,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_joy.js";echo "0 0-16/8 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_joy_reward.js";echo "35 */1 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_joy_feedPets.js";echo "10 13-20/1 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_joy_run.js";echo "23 */2 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_moneyTree.js";echo "35 6-18/6 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_pet.js";echo "10 7-22/1 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_plantBean.js";echo "12 0-23/4 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_redPacket.js";echo "6 0 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_shop.js";echo "31 0,1-23/2 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_superMarket.js";echo "45 23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_unsubscribe.js";echo "20 10 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_bean_change.js";echo "0 0,12,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_lotteryMachine.js";echo "21 9 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_rankingList.js";echo "28 * * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_daily_egg.js";echo "32 0-23/6 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_pigPet.js";echo "40 0,20 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_necklace.js";echo "50 * * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_dreamFactory.js";echo "46 6,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_small_home.js";echo "26 * * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_jdfactory.js";echo "12 * * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_syj.js";echo "47 1 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_kd.js";echo "0 0 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_car.js";echo "23 4 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_bean_home.js";echo "6 0-5/1,11 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_jdzz.js";echo "30 7,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_crazy_joy.js";echo "0 0 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_car_exchange.js";echo "23 7 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_get_share_code.js";echo "38 8,12,18 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_bookshop.js";echo "30 9,12,18 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_jxnc.js";echo "10 */4 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_cash.js";echo "29 7 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jx_sign.js";echo "47 8 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_sgmh.js";echo "10 6 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_ms.js";echo "41 7,12,19 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_beauty.js";echo "#41 0,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_price.js";echo "21 1,6 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_speed_sign.js";echo "10 12 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_crazy_joy_bonus.js";echo "5 */2 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_cfd.js";echo "#20 9 * * 6 bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_delCoupon.js";echo "10 6,7 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_family.js";echo "30-50/5 12,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_live.js";echo "13 1,6,22 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_health.js";echo "5-45/20 * * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_health_collect.js";echo "10 10,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_market_lottery.js";echo "5 0 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_jin_tie.js";echo "1 8,9 14-31/1 1 * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_bj.js";echo "0 0 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_coupon.js";echo "15 0 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_festival.js";echo "20 * * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_gyec.js";echo "30,31 20-23/1 25 1 * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_live_redrain.js";echo "0,1 19-21/1 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_live_redrain2.js";echo "30,31 12-23/1 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_live_redrain_half.js";echo "30,31 12-23/1 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_live_redrain_half_2.js";echo "0 0,9,11,13,15,17,19,20,21,23 3,5,20-30/1 1,2 * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_live_redrain_nian.js";echo "0 0,9,11,13,15,17,19,20,21,22,23 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_live_redrain_offical.js";echo "1 7 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_mh.js";echo "10 7 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_ms.js";echo "40 21 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_super.js";echo "10 7 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_sx.js";echo "5 0 19,20 1 * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_vote.js";echo "10 0 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_wechat_sign.js";echo "5 7 * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_xg.js";echo "0 * * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_xxl.js";echo "40 * * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh && node jd_xxl_gh.js";echo "50 * * * * bash /data/data/com.termux/files/home/jd_scripts/e.sh &&node jd_dreamFactory.js"; } | crontab -

fi

echo "脚本需要后台运行，请关闭termux电池优化白名单"
echo "更多精彩内容，查看，姿势论坛：https://bbs.zsxwz.com"

echo ""
echo "1.截图扫码获取cookie，也可自行网页版获取，然后修改env文件，大概1个月之后过期，过期之后请重新获取。"
echo ""
echo "2.测试签到,如果可以正常签到，脚本即可正常后台做任务。"
echo ""
echo "3.手动运行所有脚本，默认定时后台运行脚本，无需手动运行。"
echo ""
echo "4.[可选]server酱，cookie过期微信通知，请先自行获取SCKEY，也可以使用其他通知渠道，自行修改all文件。"
echo ""
echo "5.获取助力码，建议所有脚本执行完之后，第二天再获取。如果未使用则默认使用内置助力码。"
echo ""

read -p "请输入序号：" num

case $num in
	1)
		set -o allexport && source all && source env1 &&source resolve.sh
		node getJDCookie.js
		sleep 1
		key=$(cat CookieSet.json|cut -f 4 -d "\""|cut -f2 -d "="|cut -f1 -d ";")
		pin=$(cat CookieSet.json|cut -f 4 -d "\""|cut -f3 -d "="|cut -f1 -d ";")
		cat > env1 <<-EOF
		pt_key="$key"
		pt_pin="$pin"
		JD_COOKIE="pt_key=\$pt_key;pt_pin=\$pt_pin;"
		EOF
		;;
	2)
		set -o allexport && source all && source env1 &&source resolve.sh
		node jd_bean_sign.js
		;;
	3)
		set -o allexport && source all && source env1 &&source resolve.sh
		ls jd_*.js | xargs -i node {}
		;;
	4)
		read -p "请输入server酱SCKEY：" push_key
		sed -i "s/PUSH_KEY=*/PUSH_KEY=$push_key/g" all
		echo "已修改sckey"
		;;
	5)
		set -o allexport && source all && source env1 &&source resolve.sh
		node jd_get_share_code.js
		;;
	*)
		echo "请输入正确序号"
		bash ~/jd.sh
		;;
esac

