function DIALOG()
-- single_as_tsunami
-- description single_as_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Que cherchez-vous ici, monsieur ?")
				SAY("Bonjour monsieur, on peut vous aider ?")
				SAY("Oui ? Que voulez-vous, runner ?")
				SAY("Bienvenue dans mon bureau. Comment puis-je vous aider, monsieur...?")
				SAY("Hol� Runner, Tu viens me voir au sujet du travail, peut-�tre ?")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le contrat.",2)
				ANSWER("On m'a dit que vous cherchiez un tueur.",2)
				ANSWER("Voil�, je viens pour une mission que j'ai trouv�e sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Bonjour, beaut�. Quelle surprise ! Qu'est-ce que je peux faire pour vous ?")
				SAY("Donnez-vous la peine d'entrer dans mon bureau. Comment puis-je vous aider, beaut� ?")
				SAY("Bonjour, vous venez pour le contrat, runner ?")
				SAY("Salut beaut�, en quoi est-ce que je peux vous aider ?")
				SAY("Vous �tes certaine que vous �tes au bon endroit ? Pour les danseuses c'est au fond du couloir...")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("D�sol�e, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le contrat.",2)
				ANSWER("Voil�, je viens pour une mission que j'ai trouv�e sur un terminal.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ecoutez, si vous pensez juste tra�ner � ne rien faire, pourquoi vous n'allez pas dans un des clubs du quartier ?")
				SAY("Parlons affaires, ou bien partez. J'essaie de travailler, moi.")
				SAY("Pour des infos sur Tsunami, vous feriez mieux d'aller voir sur un terminal. Compris ?")
				SAY("Au revoir, runner.")
				ENDDIALOG()
			else
				SAY("Ecoutez, si vous pensez juste tra�ner � ne rien faire, pourquoi vous n'allez pas dans un des clubs du quartier ?")
				SAY("Vous comptez rester ici � me regarder toute la journ�e ? Je sais que je suis beau, mais quand m�me... Au revoir.")
				SAY("Pour de l'info sur Tsunami, vous feriez mieux d'aller voir un terminal. A plus tard, beaut�.")
				SAY("Ravi d'avoir pu vous rencontrer. A la prochaine fois...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Nous avons de la... concurrence, en la personne de %NPC_NAME(1), et il nous faut un tueur pour r�soudre le probl�me sans tarder. Vous trouverez la cible � %NPC_WORLD(1). Tsunami appr�cierait vraiment que vous vous en occupiez. Assurez-vous que la cible est bien morte et revenez ici.")
			SAY("Runner, j'ai besoin de votre aide pour neutraliser un �l�ment perturbateur : %NPC_NAME(1). Vous trouverez la cible � %NPC_WORLD(1). Faites un beau feu de joie avec son cadavre pour que les gens le remarquent bien. Puis revenez une fois la mort confirm�e.")
			SAY("Runner, Tsunami a besoin de vous pour neutraliser %NPC_NAME(1), une cible qui vit dans %NPC_WORLD(1). Occupez-vous de son cas, faites quelque chose de bien visible, et revenez me voir.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Je vous avais pas dit de r�gler son compte � %NPC_NAME(1)  Alors qu'est-ce que vous faites ici ?")
				SAY("Runner, vous feriez mieux de vous occuper de %NPC_NAME(1) sans tarder. Personne n'a le droit � l'erreur, et surtout pas vous.")
				SAY("J'ai trop de choses � faire pour bavarder. Occupez-vous plut�t de votre mission.")
				SAY("J'esp�re que votre mission se passe bien. Il vaudrait mieux pour vous...")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("On m'a dit que %NPC_NAME(1) ne nous casserait plus les pieds. C'est bien. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Pensez � votre terminal pour d'autres missions.")
				SAY("Samoura�, on m'a dit que vous aviez neutralis� %NPC_NAME(1) comme je vous l'avais demand�. Et on m'a dit aussi que vous aviez fait du bon travail. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Tsunami vous remercie pour votre assistance.")
				SAY("Runner, %NPC_NAME(1) ne fait plus partie de ce monde, et %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Ce fut un plaisir de traiter avec vous.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
				ENDDIALOG()
			end
end
						
		
			

