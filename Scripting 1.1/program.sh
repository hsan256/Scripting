#include graph.sh
case $1 in
	"-g") `./graph.sh`;;
	"-lw") echo `lshw`;;
	"-lu") echo `lscpu`;;
        "-save") echo `lshw > save.txt`
  		 echo `lscpu >> save.txt`;;
	"-h") echo ' 1) Affiche les informations sur les péripheriques de votre  ordinateur : -lw  '
  	      echo ' 2) Affiche les informations sur larchitecture du processeur : -lu ' 
  	      echo ' 3) pour afficher le manuel : -help '
  	      echo ' 4) Pour enregistrer : -save';;

	"")  echo ' 1) Affiche les informations sur les péripheriques de votre  ordinateur : -lw  '
  	     echo ' 2) Affiche les informations sur larchitecture du processeur : -lu '
             echo ' 3) pour afficher le manuel : -help '
             echo ' 4) Pour enregistrer : -save'
	     echo ' 5) Pour afficher l interface graphique : -g'
		read choix
		 if [[ $choix == 1 ]]; then 
     		echo `lshw`
 		 elif [[ $choix == 2 ]]; then
	         echo `lscpu`
  		elif [[ $choix == 3 ]]; then
     		echo 'programme permettant d afficher les caracteristiques du pc'
   	 	echo ' -lw : pour executer la commande lshw '
     		echo ' -lu : pour executer la commande lscpu '
     		echo ' -help : pour afficher le manuel '
     		echo ' -save : pour enregistrer'
		echo ' -g : Pour afficher l interface graphique :'
  	elif [[ $choix == 4 ]]; then
     	echo `lshw > save.txt`
     	echo `lscpu >> save.txt`
elif [[ $choix == 5 ]]; then 
	`./graph.sh`
  else 
     echo 'les informations sur les péripheriques de votre ordinateur' 
     echo `lshw`
     echo 'les informations sur l architecture de votre processeur '
     echo `lscpu`
  fi;; 
	
esac

