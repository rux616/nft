function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anhänger
				SAY("Yo man.")
				ANSWER("Longue vie à Reza et à CityAdmin. Comment allez-vous?",11)
			else 
			-- Fall 2: Reza Feind
				SAY("Yo man.")
				ANSWER("Oh, ma tête... Je me sens drôle... J'ai l'esprit léger...",1)
				ANSWER("J'ai quelque chose pour vous.",5)
			end
	
		
	NODE(1)
		SAY("Héhéhé. Content de voir qu'ils ne vous ont pas complètement ratiboisé le cerveau.")
		ANSWER("Qu'est-ce que vous voulez dire?",2)		
				
	NODE(2)
		SAY("BioTech a construit cette installation pour CityAdmin, le gouvernement de Neocron, mais ça n'est pas officiel. Elle est utilisée pour effacer la mémoire des criminels et pour rectifier leurs idées politiques.")
		ANSWER("Incroyable. Mais qu'est-ce que vous entendez par 'ratiboiser le cerveau'?",3)
	
	NODE(3)
		SAY("On a réussi à faire passer un virus dans leur système. De temps en temps, le processus échoue. Mais malheureusement, la mémoire est toujours effacée.")
		ANSWER("Bordel... Ca explique bien des choses.",4)
		
	NODE(4)	
		SAY("Vous feriez mieux de parler à notre coordinateur.")
		ENDDIALOG()

	NODE(5)
		TAKEITEMCNT(4039,4)
		if (result==1) then
			SAY("Excellent. Ca va nous aider à leur faire une belle petite surprise. On va enfin pouvoir frapper un grand coup.")
			ANSWER("Qu'est-ce que vous avez derrière la tête?",6)	
		else
			SAY("Vous n'avez pas déjà parlé au patron, vous? Il me faut quatre puces. Sinon je ne peux rien faire.")
			ENDDIALOG()
		end
		
	NODE(6)
		SAY("Héhéhé. On va les modifier, et ensuite les répandre dans le complexe. Et lorsqu'ils les installerons... on va bien rigoler.")
		ANSWER("Parfait. Il faut mettre fin à ce programme de lavage de cerveau!",7)	
		
	NODE(7)
		SAY("On fait de notre mieux. Tenez, voici un peu d'argent pour vous aider à démarrer dans votre nouvelle vie. Le GenRep vous transportera directement dans votre appartement. Utilisez-le, choisissez votre appartement, et téléportez-vous. Bonne route.")
		GIVEMONEY(3000)
		ENDDIALOG()

	

	NODE(11)
		SAY("Allez-vous en! Je fais une pause.")
		ANSWER("Mais pourquoi est-ce que vous me parlez comme ça?",12)
	
	NODE(12)
		SAY("Fichez-moi la paix!")
		ENDDIALOG()
		
end
