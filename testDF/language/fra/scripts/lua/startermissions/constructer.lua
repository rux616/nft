function DIALOG()

	NODE(0)
		SAY("Bonjour, runner.")
		ANSWER("Bonjour, M. Collin. Je voudrais devenir constructeur.",1)
		
	NODE(1)
		SAY("Je vois, je vois. Tu veux rejoindre nos rangs... Hmm... Mais on ne peut pas parler de �a maintenant.")
		ANSWER("Je suis encore nouveau ici.",2)

	NODE(2)
		SAY("La route est longue jusqu'� la perfection dans ce domaine, et conna�tre les techniques les plus complexes et assembler les diff�rents composants avec art. Et c'est un des meilleurs constructeurs de Neocron qui te dit �a.")
		ANSWER("Je suis tr�s d�cid� � apprendre.",3)

	NODE(3)
		SAY("Tu n'es pas la premi�re personne � venir � moi. Mais je t'accepterai parmi nous seulement si tu fais les efforts n�cessaires pour acqu�rir les connaissances de base.")
		ANSWER("Mais comment dois-je faire? Par o� commencer?",4)

	NODE(4)
		SAY("Va voir NPC(0). C'est un employ� de Cryton. Parle-lui. Lorsque tu seras pr�t, reviens me voir. Je te poserai alors trois questions. Si tu y r�ponds correctement, tu pourras devenir l'un des n�tres. Je te donnerai aussi quelque chose si tu r�ussis.")
		ENDDIALOG()





	NODE(10)
		SAY("")
		ANSWER("",6)

	NODE(11)
		SAY("")
		ANSWER("",1)


		
end
