function DIALOG()

	NODE(0)
		SAY("Quoi, runner ? Je n'ai pas toute la journée !")
		SAY("Oui, runner ? Que voulez-vous ?")
		SAY("Oui, runner ? Besoin d'aide ?")
		
		ANSWER("Je suis là pour l'exécution dont j'ai entendu parler sur un terminal.",1)
		ANSWER("Je viens pour l'annihilation.",1)
		ANSWER("Hmmm, je crois que je vais m'en aller. Bye.",3)
	NODE(1)
		SAY("Ok runner, vous pourrez partir lorsque je vous aurai expliqué la mission. Eliminez au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Vous pouvez utiliser tout moyen que vous jugerez nécessaire au cours de cette mission. N'échouez pas. Une fois que vous avez fini, revenez me voir pour un compte-rendu. Vous pouvez partir, runner.")

		SAY("Runner, éradiquez un groupe de %TARGET_VALUE(0,1) %TARGET_NPCNAME(1). C'est une tâche très importante, et si vous réussissez, ça ne passera pas inaperçu. Lorsque vous aurez fini, revenez me voir, et je m'assurerai que vous soyez payé.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, partez maintenant, ou bien vous allez en subir les conséquences.")
				SAY("Runner, partez tout de suite !!")
				ENDDIALOG()
			else
				SAY("Résultat intéressant, nous sommes satisfaits de votre performance. Voici vos %REWARD_MONEY() crédits. Surveillez les terminaux, nous pourrions avoir à nouveau besoin de vos compétences.")
				SAY("La rapidité est toujours un atout. Voici vos %REWARD_MONEY() crédits. Vous avec accompli une tâche importante pour CityMercs. Ouvrez l'oeil, je suis certain qu'on aura à nouveau besoin de vos services très bientôt.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("Revenez lorsque vous aurez quelque chose à dire, runner. Au revoir.")
		SAY("Je n'ai pas le temps de bavarder avec vous, runner.")
		ENDDIALOG()
	
end
