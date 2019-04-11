function DIALOG()
-- single_ag_diamond
-- description single_ag_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Bonjour monsieur, avez-vous besoin d'aide ?")
				SAY("Bonjour monsieur, puis-je vous aider ?")
				SAY("Diamond Immobilier. Comment puis-je vous aider, monsieur ?")
				SAY("Oui ? Que puis-je faire pour vous, monsieur ?")
				SAY("C'est pour une livraison ? Oh, euh... Puis-je vous aider, monsieur ?")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Bonjour. Qu'est-ce que c'est, ici ?",1)
				ANSWER("Désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour un job.",2)
				ANSWER("Oui, je viens pour l'extermination.",2)
				ANSWER("Bonjour, j'ai entendu dire que vous recherchiez quelqu'un de compétent",2)
				ANSWER("Je viens pour une mission que j'ai acceptée sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Bonjour madame, avez-vous besoin d'aide ?")
				SAY("Bonjour madame, puis-je vous aider ?")
				SAY("Diamond Immobilier. Comment puis-je vous aider, madame ?")
				SAY("Oui madame ? Que puis-je faire pour vous ?")
				SAY("Puis-je vous aider, madame ?")
				
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Bonjour. Qu'est-ce que c'est, ici ?",1)
				ANSWER("Désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je suis venue pour une extermination...",2)
				ANSWER("Sur un terminal j'ai appris que vous cherchez un exterminateur.",2)
				ANSWER("Bonjour, je suis l'exterminatrice que vous recherchez.",2)
				ANSWER("Je viens pour une mission que j'ai acceptée sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ne me faites pas perdre mon temps. Il faut que je travaille pour vivre, moi. Passez une bonne journée.")
				SAY("Ecoutez, l'ami, j'ai pas le temps pour ça. Fichez le camp... monsieur.")
				SAY("Monsieur, pour de l'information sur la compagnie, veuillez consulter les terminaux. Bonne journée.")
				SAY("Merci. Bonne journée.")
				ENDDIALOG()
			else
				SAY("Ne me faites pas perdre mon temps, madame. Je dois travailler pour toucher ma paye, moi. Passez une bonne journée.")
				SAY("Ecoutez, j'essaie de travailler, moi. Veuillez partir.")
				SAY("Pour des informations d'ordre général, veuillez consulter les terminaux. Bonne journée à vous.")
				SAY("Merci madame. Passez une bonne journée.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("Fort bien. Nous avons besoin que vous éliminiez %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) dans le quartier. Eradiquez-les, et revenez me voir pour un compte-rendu.")
			SAY("L'exterminateur, enfin ! Nous avons une petite infestation de %TARGET_NPCNAME(0) dans le secteur. Tuez-en %TARGET_VALUE(0,1) et revenez ensuite pour toucher votre récompense.")
			SAY("Ah oui, runner. Ca fait plaisir de vous voir. On a signalé une augmentation soudaine du nombre de %TARGET_NPCNAME(0) dans le secteur. Pour protéger nos appartements, vous devez en exterminer au moins %TARGET_VALUE(0,1). Revenez me voir quand vous avez fini.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISmissIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("Nous avons encore des plaintes de nombreux locataires. Vous n'avez pas tué suffisamment de %TARGET_NPCNAME(0). Allez vous occuper du problème.")
				SAY("Runner, la zone est encore infestée. Retournez dehors exterminer des %TARGET_NPCNAME(0).")
				SAY("Oh, encore vous. C'est impossible que vous ayez tué assez de %TARGET_NPCNAME(0), parce que nous recevons encore des plaintes. Il vaudrait mieux que vous y retourniez.")
				SAY("Mais qu'est-ce que vous fabriquez ici ? On ne vous a pas chargé de résoudre un problème ?  Hein ? Alors allez-y !")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("Ah, bien. Nous avons reçu la confirmation que les %TARGET_NPCNAME(0) avaient disparu. Voilà %REWARD_MONEY() crédits, comme convenu. Passez une bonne journée, et pensez à reprendre une mission pour Diamond !")
				SAY("Bien ! Mesdames Easeldup et Dinklebin viennent d'appeler pour dire que le problème a été résolu. Merci de les avoir rassurées. On vous a transféré %REWARD_MONEY() crédits sur votre compte. N'oubliez pas de surveiller votre terminal pour prendre de nouvelles missions pour Diamond. Passez une bonne journée.")
				SAY("Runner, félicitations. On nous a informé que la zone avait été nettoyée. %REWARD_MONEY() crédits ont été transférés sur votre compte. Diamond Immobilier apprécie beaucoup votre action. Pensez à vérifier votre terminal pour de futures missions chez nous. Bonne journée.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

