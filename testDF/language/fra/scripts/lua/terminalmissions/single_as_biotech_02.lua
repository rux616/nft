-- single_as_biotech
-- 

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Bienvenue monsieur. Que puis-je faire pour vous ?")
				SAY("Oui monsieur ? Comment puis-je vous aider ?")
				SAY("Bien le bonjour, monsieur. Puis-je vous aider ?")
				SAY("Bienvenue, runner. En quoi puis-je vous aider ?")
				SAY("Oui runner ? Comment puis-je vous aider ?")
				SAY("Bien le bonjour, runner. Puis-je vous aider ?")

				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Pardon, je me suis trompé de personne. Excusez-moi.",1)
				ANSWER("Je viens pour l'assassinat...",2)
				ANSWER("J'ai trouvé quelque chose sur un terminal. C'était un assassinat...",2)
				ANSWER("Je viens à cause de ce que j'ai trouvé sur un terminal, un petit assassinat...",2)
				ANSWER("Je viens pour une mission que j'ai trouvée sur un terminal. Mais ça, vous le savez déjà.",4)
				ANSWER("Je viens pour une mission que j'ai trouvée sur un terminal. Mais bon, je ne vous apprends rien.",4)

			else
				SAY("Bienvenue madame. Que puis-je faire pour vous ?")
				SAY("Oui madame ? Comment puis-je vous aider ?")
				SAY("Bien le bonjour, madame. Puis-je vous aider ?")
				SAY("Bienvenue, madame. En quoi puis-je vous aider ?")
				SAY("Oui madame ? Comment puis-je vous aider ?")
				SAY("Bien le bonjour, runner. Puis-je vous aider ?")

				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Pardon, je me suis trompé de personne. Excusez-moi.",1)
				ANSWER("Je viens pour l'assassinat...",2)
				ANSWER("J'ai trouvé quelque chose sur un terminal. C'était un assassinat...",2)
				ANSWER("Je viens à cause de ce que j'ai trouvé sur un terminal, un petit assassinat...",2)
				ANSWER("Je viens pour une mission que j'ai trouvée sur un terminal. Mais ça, vous le savez déjà.",4)
				ANSWER("Je viens pour une mission que j'ai trouvée sur un terminal. Mais bon, je ne vous apprends rien.",4)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Monsieur, mon temps est précieux. A présent, bonne journée.")
				SAY("Pardon, mais je n'ai pas le temps de discuter avec vous. Bonne journée.")
				ENDDIALOG()
			else
				SAY("Madame, mon temps est précieux. A présent, bonne journée.")
				SAY("Pardon, mais je n'ai pas le temps de discuter avec vous. Bonne journée.")
				ENDDIALOG()
			end
	NODE(2)
		SAY("Je vous en prie, n'utilisez pas ce mot ici ! Ecoutez, ne parlez de cette mission à personne d'autre que moi. Tout ce que vous devez savoir, c'est que votre cible s'appelle %NPC_NAME(1), et qu'elle travaille dans %NPC_WORLD(1). Eliminez la cible et revenez me voir pour votre compte-rendu. Maintenant, au travail.")
		SAY("Je vous en prie, n'utilisez pas ce mot ici ! C'est une affaire sérieuse, n'en parlez à personne d'autre que moi. Maintenant, les précisions. Localisez et éliminez la cible, %NPC_NAME(1), dans %NPC_WORLD(1). Quand vous avez fini, revenez me voir.")
		SAY("Je vous en prie, runner, n'utilisez pas ce mot ici ! Ne parlez à personne de cette mission. Maintenant, allez à %NPC_WORLD(1) et éliminez %NPC_NAME(1). Après, revenez pour un compte-rendu. Je vous attends.")
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()

	NODE(3)
		SAY("C'est exact. On parle la même langue. Vous savez donc que vous ne devez parler à personne de cette mission. Tout ce que vous devez savoir, c'est que la cible s'appelle %NPC_NAME(1), et qu'elle se trouve à %NPC_WORLD(1). Une fois que vous l'avez éliminée, revenez me voir pour un compte-rendu. Maintenant, en piste !")
		SAY("Oui, je sais pourquoi vous êtes ici. Localisez et abattez votre cible %NPC_NAME(1), à %NPC_WORLD(1). Ne parlez à personne. Quand vous avez fini, revenez ici.")
		SAY("Vous comprenez donc que cette affaire est sérieuse, et que vous ne devez en parler à personne. Allez à %NPC_WORLD(1) et éliminez %NPC_NAME(1). Revenez ensuite pour un compte-rendu. Allez-y.")
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()

	NODE(4)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, qu'est-ce que vous faites ici ? Allez faite votre travail. MAINTENANT !")
				SAY("Mais qu'est-ce que vous faites ? Je vous recommande vivement de vous occuper de votre mission. N'attendez pas qu'on vous remplace. Allez !")
				SAY("Je vous ai dit tout ce que vous deviez savoir. Maintenant, arrêtez les bavardages !")
				ENDDIALOG()
			else
				SAY("Vous revoilà, runner. Vous avez bien agi. Voici vos %REWARD_MONEY() crédits, vous les avez bien mérités. Pensez à vérifier les terminaux pour d'autres missions chez BioTech. Bonne journée.")
				SAY("Beau travail, runner. Voici vos %REWARD_MONEY() crédits. Pensez à surveiller les terminaux pour d'autres missions chez BioTech. Gardez le silence sur toute cette affaire, et passez une bonne journée.")
				SAY("Nos services indiquent que la cible a été éliminée, runner. Il semble que vous soyez habitué à ce genre de tâches. BioTech a toujours besoin de personnes compétentes telles que vous. Surveillez votre terminal, il se peut que nous fassions bientôt appel à vos services. Voici vos %REWARD_MONEY() crédits, comme convenu. Que cette mission reste entre vous et moi, et je suis certain que nous nous reverrons. Au revoir.")
				ACTIVATEDIALOGTRIGGER(1)
			end
end
						
		
			
