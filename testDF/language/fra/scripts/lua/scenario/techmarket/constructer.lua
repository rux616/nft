function DIALOG()

	NODE(0)
		SAY("Quelle merde! Mais quelle pourriture!")
		ANSWER("Un probl�me?",1)
				
	NODE(1)
		SAY("Je voulais me construire une arme, mais je me suis plant�! Bon dieu!")
		ANSWER("Vous ne savez pas vous y prendre?",2)
		ANSWER("Ca arrive parfois... Mais �a marchera mieux la prochaine fois.",3)
		ANSWER("C'est s�r que le r�sultat est pas tr�s glorieux... Au moins, �a peut passer pour une sculpture moderne.",4)
	NODE(2)
		SAY("Certainement pas! J'en ai construit des centaines, d�j�. Mais je sais pas ce qui se passe aujourd'hui, �a veut pas.")
		ANSWER("Hmmm. Ca finira par passer, faut insister.",5)
			
	NODE(3)
		SAY("Ca fait un bout de temps que j'insiste... Quelle perte de temps!")
		ANSWER("Ca va aller, r�essayez un coup...",5)	

	NODE(4)
		SAY("Vous voulez vous battre? Vous avez de la chance que je sois calme aujourd'hui!")
		ANSWER("H� HE! On s'calme, je plaisantais! Ouh-l�-l����...",6)
		
	NODE(5)
		SAY("Vous avez raison... Heureusement que les composants ne sont pas chers ici.")
		ENDDIALOG()

	NODE(6)
		SAY("Hmpf! Vous avez vraiment de la chance. Tirez-vous avant que je change d'avis!")
		ENDDIALOG()


end