function DIALOG()

	NODE(0)
		SAY("Approchez, approchez! Venez tester vos capacit�s face aux meilleurs runners de la r�gion!!")
		SAY("Combattez les meilleurs, et vous saurez ce que vous valez!!")
		SAY("Pulv�risez les records virtuels, devenez le meilleur!!")
		
		ANSWER("Ca m'a l'air excellent, ce truc, �a sepasse comment?",1)
		ANSWER("Le meilleur, hein? Comment �a?",1)
				
		ANSWER("Fiche-moi la paix.",100)
		ANSWER("Ca m'int�resse pas.",100)
		
	
	NODE(1)
		SAY("War Games Inn donne au loisir une nouvelle dimension! Tous nos terminaux sont reli�s � une ar�ne virtuelle dans laquelle vous pourrez tester vos capacit�s sans danger pour votre physique et votre mental!")
		ANSWER("Une ar�ne virtuelle? Excellent!",2)
		
	NODE(2)
		SAY("T'as tout compris! Ch�teau m�di�val, vaisseau spatial, tu choisis ce que tu veux, et tu t'�clates avec tes potes! C'est ultime!")
		ANSWER("C'est la folie, faut que j'essaie �a!",3)
		ANSWER("C'est fort! Dommage que je sois pas un combattant, mais j'en parlerai � mes amis.",5)
	
	NODE(3)
		SAY("Approche, laisse-toi entra�ner, tu verras que je te dis la v�rit�!.")
		ENDDIALOG()

	NODE(5)
		SAY("Fais-les venir ici, un vrai guerrier ne doit manquer �a sous aucun pr�texte!")
		ENDDIALOG()
	
	NODE(100)
		SAY("Tu sais pas ce que tu rates! War Games Inn fait donne au fun une nouvelle dimension!")
		ENDDIALOG()	

		
end