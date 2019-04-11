function DIALOG()

	NODE(0)
		SAY("Approchez, approchez! Venez tester vos capacités face aux meilleurs runners de la région!!")
		SAY("Combattez les meilleurs, et vous saurez ce que vous valez!!")
		SAY("Pulvérisez les records virtuels, devenez le meilleur!!")
		
		ANSWER("Ca m'a l'air excellent, ce truc, ça sepasse comment?",1)
		ANSWER("Le meilleur, hein? Comment ça?",1)
				
		ANSWER("Fiche-moi la paix.",100)
		ANSWER("Ca m'intéresse pas.",100)
		
	
	NODE(1)
		SAY("War Games Inn donne au loisir une nouvelle dimension! Tous nos terminaux sont reliés à une arène virtuelle dans laquelle vous pourrez tester vos capacités sans danger pour votre physique et votre mental!")
		ANSWER("Une arène virtuelle? Excellent!",2)
		
	NODE(2)
		SAY("T'as tout compris! Château médiéval, vaisseau spatial, tu choisis ce que tu veux, et tu t'éclates avec tes potes! C'est ultime!")
		ANSWER("C'est la folie, faut que j'essaie ça!",3)
		ANSWER("C'est fort! Dommage que je sois pas un combattant, mais j'en parlerai à mes amis.",5)
	
	NODE(3)
		SAY("Approche, laisse-toi entraîner, tu verras que je te dis la vérité!.")
		ENDDIALOG()

	NODE(5)
		SAY("Fais-les venir ici, un vrai guerrier ne doit manquer ça sous aucun prétexte!")
		ENDDIALOG()
	
	NODE(100)
		SAY("Tu sais pas ce que tu rates! War Games Inn fait donne au fun une nouvelle dimension!")
		ENDDIALOG()	

		
end