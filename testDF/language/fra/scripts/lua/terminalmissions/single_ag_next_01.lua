function DIALOG()
-- single_ag_NEXT
-- description single_ag_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("NEXT, comment puis-je vous aider monsieur ?")
				SAY("NEXT, que puis-je faire pour vous aujourd'hui, monsieur ?")
				SAY("Bonjour. Vous venez pour le contrat, monsieur ?")
				SAY("Bienvenue chez NEXT. Comment puis-je vous aider, monsieur ?")
				SAY("Bonne journ�e monsieur. Nous pourrions avoir recours � votre aide, si vous �tes int�ress�.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Salut. Qu'est-ce que c'est ici ?",1)
				ANSWER("Je suis d�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le contrat.",2)
				ANSWER("Bonjour, j'ai entendu dire que vous aviez besoin d'une puissance de feu.",2)
				ANSWER("Je viens pour un job que j'ai trouv� sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("NEXT, comment puis-je vous aider madame ?")
				SAY("NEXT, que puis-je faire pour vous aujourd'hui, madame ?")
				SAY("Bonjour. Vous venez pour le contrat, madame ?")
				SAY("Bienvenue chez NEXT. Comment puis-je vous aider, madame ?")
				SAY("Bonne journ�e madame. Nous pourrions avoir recours � votre aide, si vous �tes int�ress�e.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Salut. Qu'est-ce que c'est ici ?",1)
				ANSWER("Je suis d�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le contrat.",2)
				ANSWER("Je viens pour un job que j'ai trouv� sur un terminal.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Nous appr�cions votre visite. Au revoir.")
				SAY("Ecoutez-moi... Je n'ai pas le temps de jouer avec vous. Au revoir.")
				SAY("Monsieur, pour des informations g�n�rales veuillez consulter les terminaux. Bonne journ�e.")
				SAY("Merci. Passez une bonne journ�e.")
				ENDDIALOG()
			else
				SAY("Ici, c'est NEXT. C'est l� que je travaille. Ca veut dire que je n'ai pas le temps de bavarder avec vous. Bonne journ�e.")
				SAY("Ecoutez, j'essaie de faire mon travail. Veuillez circuler.")
				SAY("Madame, pour des informations d'ordre g�n�ral sur NEXT, veuillez consulter les terminaux publics. Bonne journ�e.")
				SAY("Merci madame. Passez une bonne journ�e.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Nous avons une petite mission d'extermination pour vous. Vous devez tuer %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) dans le secteur. Abattez-les, et revenez me voir.")
			SAY("Bien... Nous avons un probl�me de %TARGET_NPCNAME(0) dans le secteur. Exterminez-en %TARGET_VALUE(0,1) et revenez me voir pour toucher votre r�compense.")
			SAY("C'est un plaisir de vous voir, runner. On a signal� un accroissement de la population de %TARGET_NPCNAME(0) dans le secteur depuis la semaine derni�re. Pour prot�ger nos investissements, nous avons besoin que vous en exterminiez au moins %TARGET_VALUE(0,1). Revenez me voir quand vous avez fini.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Les senseurs nous montrent une concentration trop �lev�e de %TARGET_NPCNAME(0) dans le secteur. Vous feriez mieux d'en tuer quelques-uns uns de plus.")
				SAY("Runner, il en reste encore quelques-uns uns. Au travail !")
				SAY("D�j� de retour ? Un message de Sukram, un de nos techs dans le secteur, nous signale qu'il reste des %TARGET_NPCNAME(0). Allez les �radiquer !")
				SAY("Je n'ai pas de temps � gaspiller. Allez abattre les %TARGET_NPCNAME(0) dans le secteur, et faites vite.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Parfait. Le probl�me a �t� r�solu. Voici les %REWARD_MONEY() cr�dits convenus. Passez une bonne journ�e, et au plaisir de vous revoir.")
				SAY("Merci pour votre aide. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Pensez � v�rifier votre terminal si vous souhaitez encore travailler pour nous.")
				SAY("F�licitations, runner. La zone me semble d�gag�e, nous n'avons plus que quelques pr�sences �parses. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. NEXT vous remercie pour votre aide, passez une bonne journ�e et � la prochaine.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

