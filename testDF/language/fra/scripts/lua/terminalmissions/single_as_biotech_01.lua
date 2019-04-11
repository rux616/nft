function DIALOG()
-- single_ag_biotec
-- description single_as_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Bonjour monsieur. Que puis-je faire pour vous ?")
				SAY("Bonjour monsieur. Puis-je vous aider ?")
				SAY("Salutations. Puis-je vous aider ?")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("C'est beau, ici. Qu'est-ce que c'est ?",1)
				ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour une liquidation.",2)
				ANSWER("Je viens pour une mission de liquidation que j'ai trouvée sur un terminal.",2)
				ANSWER("Bonjour, je viens pour une mission de liquidation.",2)
				ANSWER("Je viens pour une mission que j'ai trouvée sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Bonjour madame. Que puis-je faire pour vous ?")
				SAY("Bonjour madame. Puis-je vous aider ?")
				SAY("Mes hommages, madame. Puis-je vous aider ?")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("C'est beau, ici. Qu'est-ce que c'est ?",1)
				ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour une liquidation.",2)
				ANSWER("Je viens pour une mission de liquidation que j'ai trouvée sur un terminal.",2)
				ANSWER("Bonjour, je viens pour une mission de liquidation.",2)
				ANSWER("Je viens pour une mission que j'ai trouvée sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ne me faites pas perdre mon temps, monsieur. J'ai un emploi du temps très chargé. Bonne journée.")
				SAY("Je n'ai pas le temps de bavarder. Laissez-moi tranquille, monsieur")
				SAY("Monsieur, vous pensez vraiment que j'ai le temps pour ça ? Bonne journée.")
				ENDDIALOG()
			else
				SAY("Ne me faites pas perdre mon temps, madame. J'ai un emploi du temps très chargé. Bonne journée.")
				SAY("Je n'ai pas le temps de bavarder. Laissez-moi tranquille, madame")
				SAY("Madame, vous pensez vraiment que j'ai le temps pour ça ? Bonne journée.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("Je vous attendais. Voici les informations. La cible s'appelle %NPC_NAME(1), vous la trouverez à %NPC_WORLD(1). Liquidez-la sans attirer l'attention, et revenez me voir pour un compte-rendu ; Pas de questions, ne parlez à personne, contentez-vous de faire votre travail.")
			SAY("Bien, allons droit au but. C'est une liquidation, c'est à dire une solution à un problème. Votre cible s'appelle %NPC_NAME(1), vous la trouverez à %NPC_WORLD(1). Eliminez-la. Ne parlez à personne d'autre que moi. La prochaine fois que vous m'adressez la parole, je veux que cette affaire soit réglée.")
			SAY("Ah oui, Runner. Je vous attendais. La cible s'appelle %NPC_NAME(1). Vous devriez la trouver à %NPC_WORLD(1). Ne parlez à personne. Faites votre travail, puis revenez me voir pour un compte-rendu.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISmissIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("Qu'est-ce que vous faites ici ? On nous signale que la cible n'a pas été abattue. Allez, au travail.")
				SAY("Runner, il me semble que vous avez une mission en cours. On nous signale que la cible se trouve toujours à  %NPC_WORLD(1). Occupez-vous de son cas.")
				SAY("Déjà de retour ? Nous savons que la cible est toujours en vie. Veuillez faire ce pour quoi on vous paye.")
				SAY("Mais qu'est-ce que vous fichez encore ici ? Je vous recommande fortement d'accomplir votre mission, ou bien vous aurez de sérieux problèmes.")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("Félicitations, runner. Nous sommes contents de vous avoir parmi nous. Voici vos %REWARD_MONEY() crédits. Pensez à surveillez votre terminal pour d'autres offres d'emploi. Passez une bonne journée.")
				SAY("Runner, nous sommes ravis de vous revoir. Le succès de votre opération vous a fait gagner %REWARD_MONEY() crédits. BioTech apprécie votre travail, et nous espérons travailler avec vous à nouveau dans un proche avenir. Pensez à surveiller votre terminal pour d'autres offres d'emploi. Passez une bonne journée.")
				SAY("Runner, toutes nos félicitations. Nos rapports nous indiquent que votre mission a été accomplie. Vous avez bien mérité vos %REWARD_MONEY() crédits. BioTech vous félicite pour votre soutien. Pensez à surveillez votre terminal pour d'autres offres d'emploi. Passez une bonne journée.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
