function DIALOG()

	NODE(0)
		SAY("Quoi, runner ?")
		SAY("Oui runner, que voulez-vous ?")
		SAY("Soyez bref, runner, je suis pressé. Que voulez-vous ?")
		
		ANSWER("Je viens pour l'annonce que j'ai trouvée sur un terminal au sujet d'une exécution.",1)
		ANSWER("Je viens pour le travail de juge-jury-bourreau.",1)
		ANSWER("Hmmm. Je vais m'en aller. Au revoir.",3)
	NODE(1)
		SAY("Runner, le temps nous est compté. Il est important que vous vous rendiez à %NPC_WORLD(1). Une fois sur place, exécutez un individu nommé %NPC_NAME(1). Il n'y a rien de plus à dire. Rompez.")
		SAY("Runner, rendez-vous en vitesse à %NPC_WORLD(1), puis localisez et abattez %NPC_NAME(1). Votre mission est de la plus haute importance et doit être menée discrètement. Lorsque vous avez terminé, revenez ici et je vous donnerai votre récompense. Bonne chance. Rompez.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, veuillez accomplir votre mission, ou vous en subirez les conséquences.")
				SAY("Runner, partez immédiatement !!")
				ENDDIALOG()
			else
				SAY("Prenez ces %REWARD_MONEY() crédits. Vos compétences et votre silence sont très appréciés ici. Pensez à surveiller votre terminal pour de futures opportunités. Merci, runner. Rompez.")
				SAY("Ahhh. Vous êtes de retour. Voici vos %REWARD_MONEY() crédits. Merci, runner. Pensez à surveiller votre terminal pour de futures opportunités. CityMercs apprécie grandement votre comportement dans cette affaire délicate.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Au revoir.")
		SAY("Revenez lorsque vous aurez une question, runner. Au revoir.")
		SAY("Alors partez. Je n'ai pas de temps à vous consacrer, runner.")
		ENDDIALOG()
	
end
