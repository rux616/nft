function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anh�nger
				SAY("Yo man.")
				ANSWER("Longue vie � Reza et � CityAdmin. Comment allez-vous?",11)
			else 
			-- Fall 2: Reza Feind
				SAY("Yo man.")
				ANSWER("Oh, ma t�te... Je me sens dr�le... J'ai l'esprit l�ger...",1)
				ANSWER("J'ai quelque chose pour vous.",5)
			end
	
		
	NODE(1)
		SAY("H�h�h�. Content de voir qu'ils ne vous ont pas compl�tement ratibois� le cerveau.")
		ANSWER("Qu'est-ce que vous voulez dire?",2)		
				
	NODE(2)
		SAY("BioTech a construit cette installation pour CityAdmin, le gouvernement de Neocron, mais �a n'est pas officiel. Elle est utilis�e pour effacer la m�moire des criminels et pour rectifier leurs id�es politiques.")
		ANSWER("Incroyable. Mais qu'est-ce que vous entendez par 'ratiboiser le cerveau'?",3)
	
	NODE(3)
		SAY("On a r�ussi � faire passer un virus dans leur syst�me. De temps en temps, le processus �choue. Mais malheureusement, la m�moire est toujours effac�e.")
		ANSWER("Bordel... Ca explique bien des choses.",4)
		
	NODE(4)	
		SAY("Vous feriez mieux de parler � notre coordinateur.")
		ENDDIALOG()

	NODE(5)
		TAKEITEMCNT(4039,4)
		if (result==1) then
			SAY("Excellent. Ca va nous aider � leur faire une belle petite surprise. On va enfin pouvoir frapper un grand coup.")
			ANSWER("Qu'est-ce que vous avez derri�re la t�te?",6)	
		else
			SAY("Vous n'avez pas d�j� parl� au patron, vous? Il me faut quatre puces. Sinon je ne peux rien faire.")
			ENDDIALOG()
		end
		
	NODE(6)
		SAY("H�h�h�. On va les modifier, et ensuite les r�pandre dans le complexe. Et lorsqu'ils les installerons... on va bien rigoler.")
		ANSWER("Parfait. Il faut mettre fin � ce programme de lavage de cerveau!",7)	
		
	NODE(7)
		SAY("On fait de notre mieux. Tenez, voici un peu d'argent pour vous aider � d�marrer dans votre nouvelle vie. Le GenRep vous transportera directement dans votre appartement. Utilisez-le, choisissez votre appartement, et t�l�portez-vous. Bonne route.")
		GIVEMONEY(3000)
		ENDDIALOG()

	

	NODE(11)
		SAY("Allez-vous en! Je fais une pause.")
		ANSWER("Mais pourquoi est-ce que vous me parlez comme �a?",12)
	
	NODE(12)
		SAY("Fichez-moi la paix!")
		ENDDIALOG()
		
end
