function DIALOG()

--single_ag_official

	NODE(0) 
		SAY("H�, vous, vous cherchez du travail?")
		SAY("H�, runner, vous voulez un travail?")
		SAY("Je sens que vous avez besoin d'argent. Un job, �a vous int�resse?")
		
		ANSWER("Ouais, toujours. Dites m'en plus.",1)
		ANSWER("Bien s�r, continuez.",1)
		ANSWER("Non merci. Bye.",21)
	NODE(1)
		SAY("Le budget de la ville est exc�dentaire, et l'administration locale a donn� le feu vert pour l'extermination de vermine dans la zone. On recrute des citoyens. Ca vous int�resse?")
		SAY("Le budget d'extermination a �t� augment�, on a la possibilit� de mener de nouvelles actions contre la vermine. On recrute des citoyens. Ca vous int�resse?")
		
		ANSWER("Ouais, �a me semble pas compliqu�.",2)
		ANSWER("Bien s�r, pourquoi pas.",2)
		ANSWER("Non, �a m'int�resse pas. Je vais chercher autre chose. Au revoir et merci.",20)
	NODE(2) 
		ACCEPTMISSION(0)
		SAY("Bien. Allez voir %NPC_NAME(1), � %NPC_WORLD(0). Vous recevrez vos instructions l�-bas.")
		SAY("Bien. Allez voir %NPC_NAME(1), � %NPC_WORLD(0). %NPC_NAME(1) vous donnera plus de d�tails.")
		ENDDIALOG()
	
	NODE(3)
		SAY("Salut runner, qu'est-ce que je peux faire pour vous?")
		SAY("Salutations runner, que puis-je faire pour vous?")
		SAY("Oui runner? Comment puis-je vous aider?"
		
		ANSWER("Je viens pour l'extermination.",1)
		ANSWER("Je suis ici pour l'extermination.",1)
		ANSWER("Oubliez �a. Bye.",20)
	NODE(4)
		SAY("Je vois, laissez-moi voir votre dossier... Le voil�. OK, comme vous le savez d�j�, nous recherchons du personnel qualifi� pour l'extermination de vermine. Vous devrez tuer au moins %TARGET_VALUE() dans la zone. Revenez me voir une fois que vous avez fini pour toucher votre r�compense.")
		SAY("Oh oui, donnez-moi deux seconde pour que je lise votre dossier... Le voil�. Donc, comme vous le savez d�j�, nous recherchons du personnel qualifi� pour l'extermination de vermine. Vous devrez tuer au moins TARGET_VALUE() dans la zone. Revenez me voir une fois que vous avez fini pour toucher votre r�compense.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
	NODE(5)	
		ISMISSIONACCOMPLISHED()
			if (result==0)
				SAY("Qu'est-ce que vous faites ici? Allez finir votre travail!! Je n'ai pas le temps de discuter, moi.")
				SAY("Mais qu'est-ce que vous fichez l�? Je vous ai demand� de finir votre travail, pas de discuter de la pluie et du beau temps. Allez, dehors!!")		
				ENDDIALOG()
			else
				SAY("Bon travail. Voil� vos %REWARD_MONEY() cr�dits. V�rifiez les terminaux pour trouver d'autres jobs. Nous avons besoin de gens qualifi�s tels que vous. je vous souhaite une journ�e heureuse et profitable. Au revoir.")
				SAY("Tr�s bien, runner. Voil� vos %REWARD_MONEY() cr�dits. Si vous cherchez d'autres jobs, consultez les terminaux. Au revoir et merci!") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
end