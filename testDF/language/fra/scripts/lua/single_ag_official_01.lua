function DIALOG()

	NODE(0)
		SAY("Bonjour runner, que puis-je faire pour vous?")
		SAY("Bonjour runner, comment puis-je vous aider?")
		SAY("Oui runner? Comment puis-je vous aider?")
		
		ANSWER("Je viens pour l'extermination.",1)
		ANSWER("Je suis l� pour l'extermination.",1)
		ANSWER("Ce n'est rien. Au revoir.",3)
	NODE(1)
		SAY("Ah, voyons voir votre dossier..... Le voil�. OK, comme vous le savez d�j�, nous recherchons du personnel qualifi� pour nettoyer les �gouts. Votre travail est de tuer au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) dans ce secteur. Revenez me voir quand vous aurez fini, je m'occuperai de votre r�compense.")
		SAY("Oh oui, voyons votre dossier.... le voil�. Vous savez d�j�, j'imagine, que nous cherchons des nettoyeurs d'�gouts qualifi�s. Dans le secteur, tuez au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Revenez me voir une fois que vous avez fini pur toucher votre r�compense.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		IFMISSIONTARGETACCOMPLISHED(0)
			if (result==0)
				SAY("Qu'est-ce que vous faites ici? Allez terminer votre travail!! Je n'ai pas le temps de discuter.")
				SAY("Qu'est-ce que vous faites ici? Je vous ai demand� d'accomplir un travail, pas de discuter avec moi. Alors d�p�chez-vous!!")
				ENDDIALOG()
			else
				SAY("Bon travail, voici vos %REWARD_MONEY() cr�dits. Pensez � surveiller votre terminal si vous voulez d'autres missions. Nous avons besoin d'employ�s tels que vous. Passez une bonne journ�e. Au revoir.")
				SAY("Bon travail, runner. Voici vos %REWARD_MONEY() cr�dits. Si vous voulez encore travailler pour nous, surveillez votre terminal. Au revoir, et merci!") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Au revoir.")
		SAY("revenez quand vous saurez ce que vous voulez. Au revoir.")
		ENDDIALOG()
	
end