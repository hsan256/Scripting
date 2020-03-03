#!/bin/sh
Afficher_sauvgarder()
{
yad --center --width=250 --height=100 --title="MENU1" --text "Veuillez choisir : 
		1) Affiche les informations sur les péripheriques de votre  ordinateur :
  	        2) Affiche les informations sur larchitecture du processeur :
  	        3) pour afficher le manuel :
  	        4) Pour enregistrer :" --button="<b><span color='black'>1</span></b>":1 --button="<b><span color='black'>2</span></b>":2 --button="<b><span color='black'>3</span></b>"!:3 --button="<b><span color='black'>4</span></b>":4 

case $? in
		1)
			function1;;
		2)
			function2;;
		3)
			function3;;
		4)
			function4;;
esac
}

quit()
{
 yad --center --width=250 --height=100 --image dialog-question --text "Voulez-vous quitte?" text-align=center \
--button="<b><span color='black'>No</span></b>"!gtk-no:1 --button="<b><span color='black'>Yes</span></b>"!gtk-yes:0
if [ $? = 0 ] ; then
 exit 
fi
}

function1()
{
yad --center --width=400 --height=300 --text-info --title="1" --back=black --fore=white<funtion1
	echo `lshw > funtion1`
}

function2()
{
yad --center --width=400 --height=300 --text-info --title="2" --back=black --fore=white<funtion2
	echo `lscpu > funtion2`
}

function3()
{
yad --center --width=400 --height=300 --text-info --title="3" --back=black --fore=white<funtion3
	echo `lshw > save.txt`
	echo -------------------
	echo `lscpu >> save.txt`
}

function4()
{
yad --center --width=400 --height=300 --text-info --title="4" --back=black --fore=white<funtion4
	echo ' 1) Affiche les informations sur les péripheriques de votre  ordinateur : -lw  '
	echo ' 2) Affiche les informations sur larchitecture du processeur : -lu ' 
	echo ' 3) pour afficher le manuel : -help '
	echo ' 4) Pour enregistrer : -save'
}

helpp()
{
yad --center --width=400 --height=300 --text-info --title="help" --back=black --fore=white<help
}

while [ "$choix" != "0" ]
do
yad --center --width=400 --height=300 --title="Hardware inforamtions" --text="Select.."  \
--button="<b><span color='black'> All Hardware informations </span></b>":1 \
--button="<b><span color='black'> Help </span></b>":2 \
--button="<b><span color='black'>Quit</span></b>"!gtk-quit:0 \
--buttons-layout=center \

case $? in
	0) quit ;;
  	1) Afficher_sauvgarder ;;
	2) helpp ;;
esac

done 
