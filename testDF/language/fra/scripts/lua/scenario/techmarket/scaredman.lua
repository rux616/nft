function DIALOG()

	NODE(0)
		SAY("Ces trucs me fichent une de ces trouilles!.")
		ANSWER("Hein? De quoi?",1)
				
	NODE(1)
		SAY("Vous voyez pas tous ces robots? Un jour ils vont devenir dingues et tous nous tuer!")
		ANSWER("Je ne pense pas. Les gens qui les ont conçus sont de bons programmeurs.",2)
		ANSWER("Oui, c'est une possibilité. Mais s'ils deviennent fous, au moins la mort sera rapide.",3)
		
	NODE(2)
		SAY("Mais comment pouvez-vous en être si sûr? Je vous le dis, on va tous mourir!")
		ANSWER("Du calme... Les messieurs en blanc seront bientôt là...",4)
			
	NODE(3)
		SAY("Il faut prendre les devants et tous les éliminer!")
		ANSWER("Et comment est-ce que vous comptez vous y prendre?",5)	

	NODE(4)
		SAY("Mon dieu, vous avez entendu? Ils approchent! Ils vont nous tuer!")
		ENDDIALOG()
		
	NODE(5)
		SAY("Euh... aucune idée, j'y ai pas encore pensé.")
		ANSWER("Il faudrait peut-être commencer par là.",6)

	NODE(6)
		SAY("Je trouverai un moyen! Je nous sauverai tous!")
		ENDDIALOG()

end