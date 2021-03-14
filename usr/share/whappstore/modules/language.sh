#!/bin/bash

#    White Panther Tool a GUI Mutli Tool Kit for GNU/Linux White Hat PNM OS Project
#    Copyright (C) 2021  suleymanfatihşimşek&lazypwny
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>

setversion="1.0"
#setroot="/usr/share/whappstore"
setroot="/home/user/Desktop/whappstore_1.0_x86_64/usr/share/whappstore"
author="Süleyman Fatih Şimşek"

if [ -e ${setroot}/lang.conf ] ; then
    source ${setroot}/lang.conf
else
    echo "lang='$LANGUAGE'" > ${setroot}/lang.conf
    source ${setroot}/lang.conf
fi

## args

case ${1} in
    [sS][eE][tT][lL][aA][nN][gG]|--[sS][eE][tT][lL][aA][nN][gG]|-[sS][lL])
        lang=""
        echo -e "tr_TR\tfr_FR\tgr_GR\ten_EN"
        read -p "please type your langauge correctly[en_EN]:> " lang
    ;;
esac

case $lang in
    tr_TR)
        errors=("Bilinmeyen Bir Hata Oluştu" "Bilinmeyen Seçenek" "Bu Seçenek Henüz Hazır Değil")
        success=("" "" "")
        quests=("" "" "")
        dialogs=("WhappStore ${setversion} sürümüne Hoş Geldiniz" "Lütfen Yukardaki Kategorilerden Birini Seçiniz" "")
    ;;
    fr_FR)
        errors=("" "L'Option Est Inconnue" "")
        success=("" "" "")
        quests=("" "" "")
        dialogs=("Bienvenue de WhappStore ${setversion}" "Svp Selecte Une Categorie." "")
    ;;
    gr_GR)
        errors=("" "" "")
        success=("" "" "")
        quests=("" "" "")
        dialogs=("ibrişka" "" "")
    ;;
    *)
        errors=("Unknow Error" "Unknow Option" "This Option isn't Yet Ready")
        success=("" "" "")
        quests=("" "" "")
        dialogs=("Welcome to WhappStore ${setversion}" "Please Choise Any Category" "")  
    ;;
esac