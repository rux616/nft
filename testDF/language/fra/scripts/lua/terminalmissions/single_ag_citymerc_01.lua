function DIALOG()

	NODE(0)
		SAY("Bonjour, runner. Je peux vous aider ?")
		SAY("Oui, runner, qu'est-ce que je peux faire pour vous ?")
		SAY("Oui, runner ? Qu'est-ce que vous voulez ?")
		
		ANSWER("Je suis là pour l'exécution.",1)
		ANSWER("Je viens pour l'annihilation.",1)
		ANSWER("Hmmm, je crois que je vais m'en aller. Bye.",3)
	NODE(1)
		SAY("Runner, fouillez le secteur et abattez au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Il est impératif d'agir en professionnel, vous n'avez pas droit à l'erreur. Une fois que vous avez fini, revenez me voir et je m'assurerai que vous soyez payé.")

		SAY("Fouillez le secteur et abattez un groupe de %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Revenez me voir une fois que vous avez fini, pour votre compte-rendu.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, partez maintenant, ou bien vous allez en subir les conséquences.")
				SAY("Runner, partez tout de suite !!")
				ENDDIALOG()
			else
				SAY("Merci runner, vous avez bien travaillé pour CityMercs. Nous sommes très satisfaits de vos performances. Voici vos %REWARD_MONEY() crédits. Pensez aux terminaux si vous cherchez des infos sur les jobs que nous proposons.")
				SAY("C'était du rapide. Voilà vos %REWARD_MONEY() crédits. Lorsque vous verrez un autre terminal, connectez-vous pour accéder à de nouvelles missions.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("Revenez lorsque vous aurez quelque chose à dire, runner. Au revoir.")
		SAY("Je n'ai pas le temps de bavarder avec vous, runner. Vous feriez mieux de partir.")
		ENDDIALOG()
	
end
