#!/bin/bash
while true
do
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
y='\E[33m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'


echo -e "${b}${g}
##    ###  #########  ##        #########                     
##   ###   #########  ##           ###                      
##  ###    ##     ##  ##           ###           
######     #########  ##           ###       
##  ###    ##     ##  ##           ###           
##   ###   ##     ##  #########    ###   
##    ###  ##     ##  ######### #########

########## ######### #########         *********************    
###    ### ###   ### ###   ###         *Developed by********
###    ### ###   ### ###   ###         *Fahid & Hima********
########## ######### #########         *Thangavel,Rahul*****   
###    ### ##        ##                *Vignesh*************   
###    ### ##        ##       

###### ####    ## #######  ######## #######  ##      ##       ##### #######
  ##   #####   ## ###      ######## ##   ##  ##      ##       ##    ##   ##
  ##   ##  ##  ## #######     ##    #######  ##      ##       ##### #######
  ##   ##   ## ##     ###     ##    ##   ##  ##      ##       ##    ####   
  ##   ##    ####     ###     ##    ##   ##  ####### ######## ##    ## ###
###### ##     ### #######     ##    ##   ##  ####### ######## ##### ##  ###  ${enda}"
cp sources.list /Pictures
read -p "press any key to continue" input_cmd
echo -e "\n"
echo "1)  Google Chrome	"
echo "2)  Tor	"
echo "3)  Skype"	
echo "4)  Team Viewer"
echo "5)  Adobe Flash Player"
echo "6)  Notepad ++"
echo "7)  Sublime text"
echo "8)  Virtual Box	"
echo "9)  Unetbootin	"
echo "10) Claws Mail Client"
echo "11) xChat-IRC"  
echo "12) LibreOffice"		     
echo "13) Audiocity(audio editor) "
echo "14) Paint(Pinta)"
echo "15) Audacious"
echo "16) Amarok(Music)player"	
echo "17) VLC video player"
echo "18) JAVA JDK"
echo "19) Inkscape"
echo "20) Printer driver"
echo "21) filezillia"
echo "22) video disk recorder"
echo "23) c torrent"
echo "24) video screen recorder"
echo "25) WordPress"
echo "26) Eclipse"
echo "27) Pidgin- IM"
echo "28) qbittorrent "
echo "29) uget downloader"
echo "30) keep password manager"
echo "31) gufw firewall"
echo "32) GIMP image editor"  
echo "33) backuppc"
echo "34) kate"		
echo -e "\n"
echo -e "Enter your selection \c"
read var
case "$var" in
    

1) wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i google-chrome-stable_current_amd64.deb 
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
apt-get update
apt-get install google-chrome-stable
gdebi google-chrome-stable_current_i386.deb
apt-get install libexif12:i386  
echo "–user-data-dir" >> /opt/google/chrome/google-chrome 
useradd -m chromeuser
echo "NOTE: TO RUN GOOGLE CHROME
              1) open new terminal 
              2) gksu -u chromeuser google-chrome" 
echo " google-chrome has been successfully installed" ;;
                



 2) wget https://www.torproject.org/dist/torbrowser/5.0.6/tor-browser-linux32-5.0.6_en-US.tar.xz
echo "deb http://deb.torproject.org/torproject.org wheezy main" >> /etc/apt/sources.list
clear scr
echo "[*] Installing the keys...."
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
echo "Ready!!"
clear scr
echo "[*] Updating Repositories...."
apt-get update
clear scr
echo "[*] Installing TOR"
apt-get install deb.torproject.org-keyring
apt-get install tor
echo "Ready!!"
echo "[*] Installing Vidalia"
apt-get install vidalia
echo "Ready!!"
echo "[*] Installing iceweasel-torbutton"
apt-get install iceweasel-torbutton
echo "Ready!!"
clear scr
echo "[*] Installing Privoxy"
apt-get install privoxy
echo "[*] Configuring privoxy"
echo "forward-socks5 / 127.0.0.1:9050 ." >> /etc/privoxy/config
echo "Ready!!"
service tor restart
service privoxy restart
echo "Tor has been installed successfully." ;;


3) wget "http://download.skype.com/linux/skype-debian_4.3.0.37-1_i386.deb"
echo "skype-debian_4.3.0.37-1_i386"
echo "http://download.skype.com/linux/skype-debian_4.3.0.37-1_i386.deb"
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i skype-debian_4.3.0.37-1_i386.deb
gdebi skype-debian_4.3.0.37-1_i386.deb 
apt-get -y install skype
echo " skype has been successfully installed";;





4)wget "http://download.teamviewer.com/download/teamviewer_i386.deb"
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i teamviewer_i386.deb
gdebi teamviewer_i386.deb
apt-get -y install teamviewer 
echo " team viewer has been successfully installed";;




5)wget "https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.559/install_flash_player_11_linux.x86_64.tar.gz"
apt-get install flashplugin-nonfree
update -flashplugin-nonfree --install 
echo " flash player has been successfully installed" ;;

6) wget "https://notepad-plus-plus.org/repository/6.x/6.8.8/npp.6.8.8.Installer.exe"
wine npp.6.8.8.Installer.exe 
echo " notepad++ has been successfuly installed";;


7) wget "c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb"
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i sublime-text_build-3083_amd64.deb
gdebi sublime-text_build-3083_amd64.deb
apt-get -y install sublime-text 
echo " sublime-text  has been successfully installed";;


8)wget "http://download.virtualbox.org/virtualbox/5.0.12/virtualbox-5.0_5.0.12-104815~Debian~wheezy_i386.deb"
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i virtualbox-5.0_5.0.12-104815~Debian~wheezy_i386.deb
gdebi virtualbox-5.0_5.0.12-104815~Debian~wheezy_i386.deb 
apt-get -y install virtualbox
echo " virtualbox  has been successfully installed";;


9)wget "http://ftp.de.debian.org/debian/pool/main/u/unetbootin/unetbootin_471-2_amd64.deb"
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i unetbootin_471-2_amd64.deb
gdebi unetbootin_471-2_amd64.deb 
apt-get -y install unetbootin
echo " unetbootin has been successfully installed" ;;

10) wget "http://ftp.us.debian.org/debian/pool/main/c/claws-mail/claws-mail_3.11.1-3_amd64.deb"
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i claws-mail_3.11.1-3_amd64.deb
gdebi claws-mail_3.11.1-3_amd64.deb 
apt-get -y install claws-mail
echo " claws-mail has been successfully installed";;

11) wget "http://ftp.us.debian.org/debian/pool/main/x/xchat/xchat_2.8.8-7.3_i386.deb"
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i xchat_2.8.8-7.3_i386.deb
gdebi xchat_2.8.8-7.3_i386.deb
apt-get -y install xchat 
echo " xchat has been successfully installed";;

12) wget "security.debian.org/debian-security/pool/updates/main/libr/libreoffice/libreoffice_4.3.3-2+deb8u2_i386.deb"
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i libreoffice_4.3.3-2+deb8u2_i386.deb
gdebi libreoffice_4.3.3-2+deb8u2_i386.deb 
apt-get -y install libreoffice 
echo " libreoffice has been successfully installed" ;;

13) wget "http://ftp.us.debian.org/debian/pool/main/a/audacity/audacity_2.0.6-2_i386.deb"
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i audacity_2.0.6-2_i386.deb
gdebi audacity_2.0.6-2_i386.deb 
apt-get -y install audacity
echo "audacity has been successfully installed ";;

14) wget "http://ftp.us.debian.org/debian/pool/main/p/pinta/pinta_1.3-3_all.deb "
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i pinta_1.3-3_all.deb 
gdebi pinta_1.3-3_all.deb  
apt-get -y install pinta
echo " pinta has been successfully installed";;


15)
wget "http://ftp.us.debian.org/debian/pool/main/a/audacious/audacious_3.5-2_amd64.deb "
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i audacious_3.5-2_amd64.deb 
gdebi audacious_3.5-2_amd64.deb 
apt-get -y install audacious
echo " audacious has been successfully installed";;




16)
wget " http://ftp.us.debian.org/debian/pool/main/a/amarok/amarok_2.8.0-2.1+b1_amd64.deb"
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i amarok_2.8.0-2.1+b1_amd64.deb
gdebi amarok_2.8.0-2.1+b1_amd64.deb
apt-get -y install amarok
echo " amarok  has been successfully installed";;


17)apt-get -y install vlc
apt-get install vlc
apt-get install -f
apt-get update
apt-get -y install vlc 
echo "vlc  has been successfully installed";;

18) 
wget "http://ftp.us.debian.org/debian/pool/main/j/java-common/default-jdk_1.7-52_amd64.deb"
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i default-jdk_1.7-52_amd64.deb
gdebi default-jdk_1.7-52_amd64.deb 
apt-get -y install default-jdk 
echo " default-jdk has been successfully installed";;

19) apt-get update
apt-get -y install inkscape 
apt-get -f install
apt-get update 
echo " inkscape  has been successfully installed";;





20) wget "http://ftp.us.debian.org/debian/pool/main/p/printing-metas/printer-driver-all_0.20140714_all.deb "
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i printer-driver-all_0.20140714_all.deb
gdebi printer-driver-all_0.20140714_all.deb 
apt-get -y install printer-driver-all 
echo "printer-drivers has been successfully installed";;




21) wget " http://ftp.us.debian.org/debian/pool/main/f/filezilla/filezilla_3.9.0.5-1_amd64.deb"
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i filezilla_3.9.0.5-1_amd64.deb
gdebi filezilla_3.9.0.5-1_amd64.deb
apt-get -y install filezilla 
echo " filezilla  has been successfully installed";;




22) wget "http://ftp.us.debian.org/debian/pool/main/v/vdr/vdr_2.0.3-3_amd64.deb "
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i vdr_2.0.3-3_amd64.deb
gdebi vdr_2.0.3-3_amd64.deb
apt-get -y install vdr 
echo "vdr has been successfully installed";;



23) wget "http://ftp.us.debian.org/debian/pool/main/c/ctorrent/ctorrent_1.3.4.dnh3.3.2-4_amd64.deb "
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i ctorrent_1.3.4.dnh3.3.2-4_amd64.deb 
gdebi ctorrent_1.3.4.dnh3.3.2-4_amd64.deb 
apt-get -y install ctorrent  
echo " ctorrent has been successfully installed";;





24) wget "http://ftp.us.debian.org/debian/pool/main/g/gtk-recordmydesktop/gtk-recordmydesktop_0.3.8-4.1_all.deb "
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i gtk-recordmydesktop_0.3.8-4.1_all.deb
gdebi gtk-recordmydesktop_0.3.8-4.1_all.deb 
apt-get -y install recordmydesktop;;





25)
wget " http://ftp.us.debian.org/debian/pool/main/l/lekhonee-gnome/lekhonee-gnome_0.11-3_amd64.deb"
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i lekhonee-gnome_0.11-3_amd64.deb
gdebi lekhonee-gnome_0.11-3_amd64.deb 
apt-get -y install lekhonee-gnome;;



26) wget " http://ftp.us.debian.org/debian/pool/main/e/eclipse/eclipse_3.8.1-7_all.deb"
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i eclipse_3.8.1-7_all.deb
gdebi eclipse_3.8.1-7_all.deb 
apt-get -y install eclipse ;;





27)
wget "http://ftp.us.debian.org/debian/pool/main/p/pidgin/pidgin_2.10.11-1_amd64.deb "
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i pidgin_2.10.11-1_amd64.deb
gdebi pidgin_2.10.11-1_amd64.deb 
apt-get -y install pidgin ;;



28)
wget " http://ftp.us.debian.org/debian/pool/main/q/qbittorrent/qbittorrent_3.1.10-1_amd64.deb"
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i qbittorrent_3.1.10-1_amd64.deb
gdebi qbittorrent_3.1.10-1_amd64.deb
apt-get -y install qbittorrent ;;




29)

wget "http://ftp.us.debian.org/debian/pool/main/u/uget/uget_1.10.4-1_amd64.deb"
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i uget_1.10.4-1_amd64.deb
gdebi uget_1.10.4-1_amd64.deb 
apt-get -y install uget;;



30)

wget " http://ftp.us.debian.org/debian/pool/main/k/keepass2/keepass2_2.28+dfsg-1_all.deb"
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i keepass2_2.28+dfsg-1_all.deb
gdebi keepass2_2.28+dfsg-1_all.deb 
apt-get -y install keepass2 ;;




31)wget "http://ftp.us.debian.org/debian/pool/main/g/gui-ufw/gufw_12.10.0-1_all.deb "
dpkg --add-architecture i386
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i gufw_12.10.0-1_all.deb 
gdebi gufw_12.10.0-1_all.deb 
apt-get -y install gufw ;;


32) wget "http://ftp.us.debian.org/debian/pool/main/g/gimp/gimp_2.8.14-1+b1_amd64.deb "
dpkg --add-architecture amd64
apt-get update
apt-get -f install
apt-get install gdebi
dpkg -i gimp_2.8.14-1+b1_amd64.deb
gdebi gimp_2.8.14-1+b1_amd64.deb
apt-get -y install gimp ;;

33)
apt-get update
apt-get -y install backuppc ;;

34)
apt-get update
apt-get -y install kate;;







esac
echo -e "Hit enter to continue \c"
read input
done
