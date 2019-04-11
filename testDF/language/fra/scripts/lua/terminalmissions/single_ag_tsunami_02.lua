function DIALOG()
-- single_ag_tsunami
-- description single_ag_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Que faites-vous ici, monsieur ?")
				SAY("Bonjour monsieur, je peux vous aider ?")
				SAY("Oui, qu'est-ce que vous voulez, runner ?")
				SAY("Bienvenue dans mon bureau. Je peux vous aider, monsieur...?")
				SAY("Bonjour runner ! Vous venez pour un job, peut-�tre ?")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour. Qu'est-ce que c'est ici ?",1)
				ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le nettoyage.",2)
				ANSWER("J'ai entendu dire que vous aviez besoin d'un nettoyeur comp�tent.",2)
				ANSWER("Je viens pour une annonce que j'ai trouv�e sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Salut beaut�, quelle surprise ! Qu'est-ce que je peux faire pour vous ?")
				SAY("Bienvenue, donnez-vous la peine d'entrer dans mon bureau. Qu'est-ce que je peux faire pour vous, beaut� ?")
				SAY("Bonjour, vous venez pour le job ?")
				SAY("Salut beaut�, besoin de quelque chose ?")
				SAY("Vous �tes certaine de ne pas vous �tre tromp�e d'�tage ? Pour les danseuses, c'est au fond de la salle...")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Joli, cet endroit. Qu'est-ce que vous faites ici ?",1)
				ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le nettoyage.",2)
				ANSWER("Salutations. Je viens pour une annonce que j'ai trouv�e sur un terminal.",2)

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
			SAY("Un demeur� a laiss� une trappe ouverte, et maintenant on doit faire face � une invasion de %TARGET_NPCNAME(0). On a besoin d'un samoura� des rues pour faire de la r�gulation de population, et les abattre. Les %TARGET_VALUE(0,1). Revenez quand vous avez r�gl� le probl�me.")
			SAY("Un de nos employ�s, pas tr�s malin, a laiss� une trappe ouverte, et des %TARGET_VALUE(0,1) sont entr�s dans le secteur. Br�lez-en %TARGET_NPCNAME(0), et revenez quand le probl�me est r�gl�.")
			SAY("Vous pourriez nous aider pour une mission de routine, un contr�le de population. Actuellement, on a un probl�me avec les %TARGET_NPCNAME(0) dans le secteur. Il faudrait que vous en abattiez %TARGET_VALUE(0,1). Revenez me voir apr�s �a.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("J'esp�re que vous avez fini votre job. Tsunami n'aime pas les gens qui font leur travail � moiti�.")
				SAY("Runner, allez vous occuper de ces %TARGET_NPCNAME(0). S'ils commencent � se r�pandre, on va vraiment �tre dans la merde.")
				SAY("J'ai trop de choses � faire pour vous parler. Vous devriez vous occuper de votre mission.")
				SAY("Allez vous occuper de ces %TARGET_NPCNAME(0), ou bien on retrouvera votre cadavre dans les �gouts.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Samoura�, on m'a dit que le probl�me �tait r�gl�. %REWARD_MONEY() cr�dits ont �t� vers�s sur votre compte. Surveillez votre terminal pour de futures missions.")
				SAY("On m'a dit que vous aviez abattu tous les intrus. Et on m'a dit que vous aviez fait du tr�s bon travail, samoura�. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Merci beaucoup. Surveillez votre terminal, on pourrit avoir besoin de vous bient�t.")
				SAY("Bon travail, runner. La r�compense de %REWARD_MONEY() cr�dits a �t� transf�r�e sur votre compte. Ca a �t� un plaisir de travailler avec vous.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			


