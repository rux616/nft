function DIALOG()

	NODE(0)
		SAY("Pfiou......!")
		ANSWER("Hein?",1)
				
	NODE(1)
		SAY("Vous m'avez fait peur! Je regardais l'�talage, je vous ai pas vu venir.")
		ANSWER("C'est si compliqu�?",2)
		ANSWER("Pourquoi vous restez dans le passage comme un abruti? Vous emp�chez les gens de circulez...",3)
		ANSWER("Pardon, je le ferai plus.",4)
	NODE(2)
		SAY("Evidemment, pour mon boulot j'ai besoin du top!")
		ANSWER("Je vous laisse alors, pardon de vous avoir d�rang�.",4)
			
	NODE(3)
		SAY("On se calme, si vous voulez vous battre, je vous prends quand vous voulez!")
		ANSWER("Il disent tous �a... Allez, � bient�t, pauvre type!",5)	

	NODE(4)
		SAY("Pas de mal. Je retourne r�fl�chir � ce que je prends.")
		ENDDIALOG()
		
	NODE(5)
		SAY("Foutez-moi le temps, et ne revenez pas!")
		ENDDIALOG()

	NODE(6)
		SAY("Vous avez de la chance que je sois de bonne humeur! Allez-vous en avant que je ne change d'avis!")
		ENDDIALOG()


end