function DIALOG()

	NODE(0)
		SAY("Bonjour citoyen, que puis-je faire pour vous ?")
		SAY("Salutations, citoyen. Comment puis-je vous aider ?")
		SAY("Oui citoyen ? Comment puis-je vous aider ?")
		
		ANSWER("Je viens pour l'extermination de vermine.",1)
		ANSWER("Je suis l'exterminateur de vermine.",1)
		ANSWER("Ce n'est rien. Au revoir.",3)
	NODE(1)
		SAY("Nous avons un probl�me local avec les %TARGET_NPCNAME(0). Ces cochonneries s'infiltrent partout. Allez dans les �gouts les plus proches, et abattez-en %TARGET_VALUE(0,1). Une fois que vous aurez fini, revenez me voir, et nous discuterons d'une r�compense appropri�e.") 
		SAY("Tangent Technologies n'est pas qu'une entreprise qui pense � son profit. Nous tentons d'am�liorer les conditions de vie des citoyens de Neocron. Actuellement, nous avons un probl�me avec une infestation locale de %TARGET_NPCNAME(0). Nous voulons encourager le nettoyage de la ville. Alors allez dans les �gouts, et si vous en tuez au moins %TARGET_VALUE(0,1), vous aurez droit � une prime de nettoyage de la part de Tangent Technologies, que j'ai l'autorisation d'octroyer.")    
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Qu'est-ce que vous faites ici ? Allez finir votre travail !! Je n'ai pas le temps de bavarder.")
				SAY("Qu'est-ce que vous faites ici ? Je vous ai ordonn� de finir ce travail, pas de bavarder avec moi. Allez !!")
				ENDDIALOG()
			else
				SAY("Bon travail. Voici vos %REWARD_MONEY() cr�dits. Surveillez les offres d'emploi sur les terminaux. Nous avons besoin de personnes tels que vous. Passez une bonne journ�e. Au revoir.")
				SAY("Tr�s bien, runner. Voici vos %REWARD_MONEY() cr�dits. Si vous cherchez un autre job, n'oubliez pas de consulter les terminaux. Au revoir, et merci !") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Au revoir.")
		SAY("Revenez quand vous saurez ce que vous voulez. Au revoir.")
		ENDDIALOG()
	
end
