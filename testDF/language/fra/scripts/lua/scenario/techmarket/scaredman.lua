function DIALOG()

	NODE(0)
		SAY("Ces trucs me fichent une de ces trouilles!.")
		ANSWER("Hein? De quoi?",1)
				
	NODE(1)
		SAY("Vous voyez pas tous ces robots? Un jour ils vont devenir dingues et tous nous tuer!")
		ANSWER("Je ne pense pas. Les gens qui les ont con�us sont de bons programmeurs.",2)
		ANSWER("Oui, c'est une possibilit�. Mais s'ils deviennent fous, au moins la mort sera rapide.",3)
		
	NODE(2)
		SAY("Mais comment pouvez-vous en �tre si s�r? Je vous le dis, on va tous mourir!")
		ANSWER("Du calme... Les messieurs en blanc seront bient�t l�...",4)
			
	NODE(3)
		SAY("Il faut prendre les devants et tous les �liminer!")
		ANSWER("Et comment est-ce que vous comptez vous y prendre?",5)	

	NODE(4)
		SAY("Mon dieu, vous avez entendu? Ils approchent! Ils vont nous tuer!")
		ENDDIALOG()
		
	NODE(5)
		SAY("Euh... aucune id�e, j'y ai pas encore pens�.")
		ANSWER("Il faudrait peut-�tre commencer par l�.",6)

	NODE(6)
		SAY("Je trouverai un moyen! Je nous sauverai tous!")
		ENDDIALOG()

end