function DIALOG()

	NODE(0)
		SAY("Quoi, runner ? Je n'ai pas toute la journ�e !")
		SAY("Oui, runner ? Que voulez-vous ?")
		SAY("Oui, runner ? Besoin d'aide ?")
		
		ANSWER("Je suis l� pour l'ex�cution dont j'ai entendu parler sur un terminal.",1)
		ANSWER("Je viens pour l'annihilation.",1)
		ANSWER("Hmmm, je crois que je vais m'en aller. Bye.",3)
	NODE(1)
		SAY("Ok runner, vous pourrez partir lorsque je vous aurai expliqu� la mission. Eliminez au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Vous pouvez utiliser tout moyen que vous jugerez n�cessaire au cours de cette mission. N'�chouez pas. Une fois que vous avez fini, revenez me voir pour un compte-rendu. Vous pouvez partir, runner.")

		SAY("Runner, �radiquez un groupe de %TARGET_VALUE(0,1) %TARGET_NPCNAME(1). C'est une t�che tr�s importante, et si vous r�ussissez, �a ne passera pas inaper�u. Lorsque vous aurez fini, revenez me voir, et je m'assurerai que vous soyez pay�.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, partez maintenant, ou bien vous allez en subir les cons�quences.")
				SAY("Runner, partez tout de suite !!")
				ENDDIALOG()
			else
				SAY("R�sultat int�ressant, nous sommes satisfaits de votre performance. Voici vos %REWARD_MONEY() cr�dits. Surveillez les terminaux, nous pourrions avoir � nouveau besoin de vos comp�tences.")
				SAY("La rapidit� est toujours un atout. Voici vos %REWARD_MONEY() cr�dits. Vous avec accompli une t�che importante pour CityMercs. Ouvrez l'oeil, je suis certain qu'on aura � nouveau besoin de vos services tr�s bient�t.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("Revenez lorsque vous aurez quelque chose � dire, runner. Au revoir.")
		SAY("Je n'ai pas le temps de bavarder avec vous, runner.")
		ENDDIALOG()
	
end
