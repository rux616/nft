function DIALOG()
-- single_ag_diamond
-- description single_ag_02

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
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour un job.",2)
				ANSWER("Oui, je viens pour l'extermination.",2)
				ANSWER("Bonjour, j'ai entendu dire que vous recherchiez quelqu'un de comp�tent",2)
				ANSWER("Je viens pour une mission que j'ai accept�e sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Bonjour madame, avez-vous besoin d'aide ?")
				SAY("Bonjour madame, puis-je vous aider ?")
				SAY("Diamond Immobilier. Comment puis-je vous aider, madame ?")
				SAY("Oui madame ? Que puis-je faire pour vous ?")
				SAY("Puis-je vous aider, madame ?")
				
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Bonjour. Qu'est-ce que c'est, ici ?",1)
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je suis venue pour une extermination...",2)
				ANSWER("Sur un terminal j'ai appris que vous cherchez un exterminateur.",2)
				ANSWER("Bonjour, je suis l'exterminatrice que vous recherchez.",2)
				ANSWER("Je viens pour une mission que j'ai accept�e sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ne me faites pas perdre mon temps. Il faut que je travaille pour vivre, moi. Passez une bonne journ�e.")
				SAY("Ecoutez, l'ami, j'ai pas le temps pour �a. Fichez le camp... monsieur.")
				SAY("Monsieur, pour de l'information sur la compagnie, veuillez consulter les terminaux. Bonne journ�e.")
				SAY("Merci. Bonne journ�e.")
				ENDDIALOG()
			else
				SAY("Ne me faites pas perdre mon temps, madame. Je dois travailler pour toucher ma paye, moi. Passez une bonne journ�e.")
				SAY("Ecoutez, j'essaie de travailler, moi. Veuillez partir.")
				SAY("Pour des informations d'ordre g�n�ral, veuillez consulter les terminaux. Bonne journ�e � vous.")
				SAY("Merci madame. Passez une bonne journ�e.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("Fort bien. La population de %TARGET_NPCNAME(0) a mont� en fl�che dans le secteur, nous avons besoin d'en tuer au moins %TARGET_VALUE(0,1). Occupez-vous de �a et revenez quand vous avez fini.")
			SAY("Ah, vous voil� ! On a signal� plusieurs %TARGET_NPCNAME(0) dans le secteur, chez M. Biesehel. D�truisez-en %TARGET_VALUE(0,1) et revenez me voir pour toucher votre r�compense.")
			SAY("Enfin, un runner. Content de vous voir. Nous avons enregistr� une soudaine augmentation de la population de %TARGET_NPCNAME(0) dans le secteur. Pour prot�ger nos appartements, nous avons besoin que vous en abattiez au moins %TARGET_VALUE(0,1). Revenez quand vous avez fini.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISmissIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("Nous recevons encore des plaintes de quelques locataires, apparemment vous n'avez pas tu� assez de %TARGET_NPCNAME(0). Assurez-vous d'en avoir le nombre qu'il faut, ou bien vous ne toucherez pas votre r�compense.")
				SAY("Runner, on nous signale encore des probl�mes dans la zone. Retournez au travail.")
				SAY("Oh, encore vous. Vous feriez mieux de terminer votre travail rapidement. M. Greb Tluh nous envoie une plainte par minute en ce moment.")
				SAY("Mais qu'est-ce que vous fabriquez encore ici ? On ne vous a pas demand� de vous occuper d'un probl�me ? Alors allez tuer ces %TARGET_NPCNAME(0)!")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("D�j� de retour ? Nous avons re�u la confirmation que le probl�me avait �t� r�solu. Voil� vos %REWARD_MONEY() cr�dits, comme convenu. Passez une bonne journ�e, et pensez � revenir bient�t !")
				SAY("Excellent travail ! M. Greb Tluh nous a appel�s pour nous dire que le probl�me avait �t� r�solu. Merci de l'avoir calm� ! Une r�compense de %REWARD_MONEY() cr�dits a �t� transf�r�e sur votre compte. Passez une bonne journ�e !")
				SAY("Runner, f�licitations. On nous a signal� que les %TARGET_NPCNAME(0) avaient quitt� la zone. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Diamond Immobilier appr�cie votre aide. Au plaisir de vous revoir. Bonne journ�e.")
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end

