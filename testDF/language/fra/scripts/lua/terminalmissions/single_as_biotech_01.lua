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
				ANSWER("Je viens pour une mission de liquidation que j'ai trouv�e sur un terminal.",2)
				ANSWER("Bonjour, je viens pour une mission de liquidation.",2)
				ANSWER("Je viens pour une mission que j'ai trouv�e sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Bonjour madame. Que puis-je faire pour vous ?")
				SAY("Bonjour madame. Puis-je vous aider ?")
				SAY("Mes hommages, madame. Puis-je vous aider ?")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("C'est beau, ici. Qu'est-ce que c'est ?",1)
				ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour une liquidation.",2)
				ANSWER("Je viens pour une mission de liquidation que j'ai trouv�e sur un terminal.",2)
				ANSWER("Bonjour, je viens pour une mission de liquidation.",2)
				ANSWER("Je viens pour une mission que j'ai trouv�e sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ne me faites pas perdre mon temps, monsieur. J'ai un emploi du temps tr�s charg�. Bonne journ�e.")
				SAY("Je n'ai pas le temps de bavarder. Laissez-moi tranquille, monsieur")
				SAY("Monsieur, vous pensez vraiment que j'ai le temps pour �a ? Bonne journ�e.")
				ENDDIALOG()
			else
				SAY("Ne me faites pas perdre mon temps, madame. J'ai un emploi du temps tr�s charg�. Bonne journ�e.")
				SAY("Je n'ai pas le temps de bavarder. Laissez-moi tranquille, madame")
				SAY("Madame, vous pensez vraiment que j'ai le temps pour �a ? Bonne journ�e.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("Je vous attendais. Voici les informations. La cible s'appelle %NPC_NAME(1), vous la trouverez � %NPC_WORLD(1). Liquidez-la sans attirer l'attention, et revenez me voir pour un compte-rendu ; Pas de questions, ne parlez � personne, contentez-vous de faire votre travail.")
			SAY("Bien, allons droit au but. C'est une liquidation, c'est � dire une solution � un probl�me. Votre cible s'appelle %NPC_NAME(1), vous la trouverez � %NPC_WORLD(1). Eliminez-la. Ne parlez � personne d'autre que moi. La prochaine fois que vous m'adressez la parole, je veux que cette affaire soit r�gl�e.")
			SAY("Ah oui, Runner. Je vous attendais. La cible s'appelle %NPC_NAME(1). Vous devriez la trouver � %NPC_WORLD(1). Ne parlez � personne. Faites votre travail, puis revenez me voir pour un compte-rendu.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISmissIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("Qu'est-ce que vous faites ici ? On nous signale que la cible n'a pas �t� abattue. Allez, au travail.")
				SAY("Runner, il me semble que vous avez une mission en cours. On nous signale que la cible se trouve toujours �  %NPC_WORLD(1). Occupez-vous de son cas.")
				SAY("D�j� de retour ? Nous savons que la cible est toujours en vie. Veuillez faire ce pour quoi on vous paye.")
				SAY("Mais qu'est-ce que vous fichez encore ici ? Je vous recommande fortement d'accomplir votre mission, ou bien vous aurez de s�rieux probl�mes.")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("F�licitations, runner. Nous sommes contents de vous avoir parmi nous. Voici vos %REWARD_MONEY() cr�dits. Pensez � surveillez votre terminal pour d'autres offres d'emploi. Passez une bonne journ�e.")
				SAY("Runner, nous sommes ravis de vous revoir. Le succ�s de votre op�ration vous a fait gagner %REWARD_MONEY() cr�dits. BioTech appr�cie votre travail, et nous esp�rons travailler avec vous � nouveau dans un proche avenir. Pensez � surveiller votre terminal pour d'autres offres d'emploi. Passez une bonne journ�e.")
				SAY("Runner, toutes nos f�licitations. Nos rapports nous indiquent que votre mission a �t� accomplie. Vous avez bien m�rit� vos %REWARD_MONEY() cr�dits. BioTech vous f�licite pour votre soutien. Pensez � surveillez votre terminal pour d'autres offres d'emploi. Passez une bonne journ�e.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
