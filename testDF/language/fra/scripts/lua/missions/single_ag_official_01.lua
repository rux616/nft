function DIALOG()

--single_ag_official

	NODE(0) 
		SAY("Hé, vous, vous cherchez du travail?")
		SAY("Hé, runner, vous voulez un travail?")
		SAY("Je sens que vous avez besoin d'argent. Un job, ça vous intéresse?")
		
		ANSWER("Ouais, toujours. Dites m'en plus.",1)
		ANSWER("Bien sûr, continuez.",1)
		ANSWER("Non merci. Bye.",21)
	NODE(1)
		SAY("Le budget de la ville est excédentaire, et l'administration locale a donné le feu vert pour l'extermination de vermine dans la zone. On recrute des citoyens. Ca vous intéresse?")
		SAY("Le budget d'extermination a été augmenté, on a la possibilité de mener de nouvelles actions contre la vermine. On recrute des citoyens. Ca vous intéresse?")
		
		ANSWER("Ouais, ça me semble pas compliqué.",2)
		ANSWER("Bien sûr, pourquoi pas.",2)
		ANSWER("Non, ça m'intéresse pas. Je vais chercher autre chose. Au revoir et merci.",20)
	NODE(2) 
		ACCEPTMISSION(0)
		SAY("Bien. Allez voir %NPC_NAME(1), à %NPC_WORLD(0). Vous recevrez vos instructions là-bas.")
		SAY("Bien. Allez voir %NPC_NAME(1), à %NPC_WORLD(0). %NPC_NAME(1) vous donnera plus de détails.")
		ENDDIALOG()
	
	NODE(3)
		SAY("Salut runner, qu'est-ce que je peux faire pour vous?")
		SAY("Salutations runner, que puis-je faire pour vous?")
		SAY("Oui runner? Comment puis-je vous aider?"
		
		ANSWER("Je viens pour l'extermination.",1)
		ANSWER("Je suis ici pour l'extermination.",1)
		ANSWER("Oubliez ça. Bye.",20)
	NODE(4)
		SAY("Je vois, laissez-moi voir votre dossier... Le voilà. OK, comme vous le savez déjà, nous recherchons du personnel qualifié pour l'extermination de vermine. Vous devrez tuer au moins %TARGET_VALUE() dans la zone. Revenez me voir une fois que vous avez fini pour toucher votre récompense.")
		SAY("Oh oui, donnez-moi deux seconde pour que je lise votre dossier... Le voilà. Donc, comme vous le savez déjà, nous recherchons du personnel qualifié pour l'extermination de vermine. Vous devrez tuer au moins TARGET_VALUE() dans la zone. Revenez me voir une fois que vous avez fini pour toucher votre récompense.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
	NODE(5)	
		ISMISSIONACCOMPLISHED()
			if (result==0)
				SAY("Qu'est-ce que vous faites ici? Allez finir votre travail!! Je n'ai pas le temps de discuter, moi.")
				SAY("Mais qu'est-ce que vous fichez là? Je vous ai demandé de finir votre travail, pas de discuter de la pluie et du beau temps. Allez, dehors!!")		
				ENDDIALOG()
			else
				SAY("Bon travail. Voilà vos %REWARD_MONEY() crédits. Vérifiez les terminaux pour trouver d'autres jobs. Nous avons besoin de gens qualifiés tels que vous. je vous souhaite une journée heureuse et profitable. Au revoir.")
				SAY("Très bien, runner. Voilà vos %REWARD_MONEY() crédits. Si vous cherchez d'autres jobs, consultez les terminaux. Au revoir et merci!") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
end