function DIALOG()

	NODE(0)
		SAY("Bonjour, runner.")
		ANSWER("Bonjour, M. Collin. Je voudrais devenir constructeur.",1)
		
	NODE(1)
		SAY("Je vois, je vois. Tu veux rejoindre nos rangs... Hmm... Mais on ne peut pas parler de ça maintenant.")
		ANSWER("Je suis encore nouveau ici.",2)

	NODE(2)
		SAY("La route est longue jusqu'à la perfection dans ce domaine, et connaître les techniques les plus complexes et assembler les différents composants avec art. Et c'est un des meilleurs constructeurs de Neocron qui te dit ça.")
		ANSWER("Je suis très décidé à apprendre.",3)

	NODE(3)
		SAY("Tu n'es pas la première personne à venir à moi. Mais je t'accepterai parmi nous seulement si tu fais les efforts nécessaires pour acquérir les connaissances de base.")
		ANSWER("Mais comment dois-je faire? Par où commencer?",4)

	NODE(4)
		SAY("Va voir NPC(0). C'est un employé de Cryton. Parle-lui. Lorsque tu seras prêt, reviens me voir. Je te poserai alors trois questions. Si tu y réponds correctement, tu pourras devenir l'un des nôtres. Je te donnerai aussi quelque chose si tu réussis.")
		ENDDIALOG()





	NODE(10)
		SAY("")
		ANSWER("",6)

	NODE(11)
		SAY("")
		ANSWER("",1)


		
end
