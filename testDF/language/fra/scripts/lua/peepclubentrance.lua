function DIALOG()

	NODE(0)
		SAY("Entrez, et venez go�ter aux plaisirs de la chair.")
		SAY("Si vous me parlez, �a veut dire qu'il y a quelque chose qui vous d�mange...")
		SAY("Les disques de C�r�s r�pertorient plus de 125... proc�dures sexuelles, disons. Entrez, et vous saurez combien vous pourrez en accomplir.")
		SAY("Si vous passez cette porte, vous go�terez avec autre chose que vos yeux!")


		ANSWER("Allez, j'en suis!",1)
		ANSWER("Alors pourquoi je suis l� � vous parler? Laissez-moi entrer!",1)
		ANSWER("Je ne viens pas pour la conversation. Laissez-moi entrer!",1)
		ANSWER("Je peux vous poser une question, avant �a?",3)
		ANSWER("D'abord, une question.",3)
		ANSWER("Ca m'a l'air bien... Mais d'abord, une question.",3)
		ANSWER("J'ai d� me tromper de chemin. Excusez-moi.",2)
		ANSWER("Excusez-moi, je dois m'en aller.",2)
		ANSWER("Pardon, je ne savais pas que c'�tait un �tablissement pour les d�cadents. Si vous voulez bien m'excuser...",2)
		
	NODE(1)
		SAY("Donnez-vous la peine d'entrer.")
		SAY("Passez une bonne soir�e.")
		SAY("Allez, �a vous fera du bien.")

		ENDDIALOG()

	NODE(2)
		SAY("Comme vous voulez, mais vous ratez un paquet de femmes. Revenez quand vous aurez achet� une libido.")
		SAY("Faites comme vous voulez. Mais je vous garantis que vous vous amuserez plus dedans que dehors.")
		SAY("Vous avez achet� une M�lanie virtuelle, c'est �a? Pensez � revenir quand vous en aurez marre.")

		ENDDIALOG()

	NODE(3)
		SAY("J'ai le temps pour �a.")
		SAY("D'accord, mais faites vite, j'ai pas trop le temps.")
		SAY("Pourquoi pas. Qu'est-ce que vous voulez savoir?")
		
		ANSWER("Qui poss�de cet endroit?",4)
		ANSWER("Qui dirige cet endroit?",4)
		ANSWER("Qui est-ce qui paie vos frais?",4)
		ANSWER("Qu'est-ce que vous savez sur Tsunami?",5)
		ANSWER("C'est Tsunami qui poss�de ce club, c'est bien �a? Qu'est-ce que vous avez � me dire � son sujet?",5)
		ANSWER("Laissez tomber, je vais entrer, c'est tout.",1)
		ANSWER("Tout compte fait, je vais me contenter de rentrer.",1)
		ANSWER("En fait, je vais m'en aller.",2)
		ANSWER("Je ferais peut-�tre mieux de partir.",2)
		
	NODE(4)
		SAY("Tsunami poss�de tous les bars les plus chauds de la ville. Vous ne sortez jamais de chez vous, ou quoi?")
		SAY("Vous �tes � Pepper Park, n'est-ce pas? C'est Tsunami qui contr�le tout le quartier.")
		SAY("Vous avez d�j� entendu parler de Tsunami? Ils poss�dent tout le secteur. Si vous voyez des n�ons, �a appartient � Tsunami.")
		
		ANSWER("Tsunami, hein? Qu'est-ce que vous pouvez me dire d'autre � leur sujet?",5)
		ANSWER("Qu'est-ce que vous pouvez me dire d'autre � leur sujet?",5)
		ANSWER("Pepper Park est un endroit int�ressant, qu'est-ce que vous pouvez m'apprendre d'autre?",5)
		ANSWER("Laissez tomber, je vais entrer, c'est tout.",1)
		ANSWER("Tout compte fait, je vais me contenter de rentrer.",1)
		ANSWER("En fait, je vais m'en aller.",2)
		ANSWER("Je ferais peut-�tre mieux de partir.",2)
	
	NODE(5)
		SAY("Ecoutez, je suis jute un videur. Je fais pas beaucoup plus que sortir les poubelles. Que vous restiez ou que vous alliez ailleurs, c'est pas mon probl�me.")
		SAY("Si vous voulez entrer, alors entrez. J'ai pas que �a � faire.")
		SAY("Ecoutez, on me paie pas pour parler de �a. Entrez ou n'entrez pas, je m'en fiche.")
		
		ANSWER("Pardon, je pense que je vais entrer.",1)
		ANSWER("Bon, je vais entrer. Merci quand m�me.",1)
		ANSWER("En fait, je vais aller ailleurs.",2)
		ANSWER("Peut-�tre que je devrais partir. Merci pour votre aide.",2)

end