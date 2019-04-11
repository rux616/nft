function DIALOG()
-- single_ag_cityadmin
-- description single_ag_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("CityAdmin, comment puis-je vous aider, monsieur ?")
				SAY("CityAdmin, avez-vous besoin d'aide, monsieur ?")
				SAY("Bonjour monsieur, vous venez pour le job ?")
				SAY("Bienvenue aux bureaux de CityAdmin. Comment puis-je vous aider, monsieur ?")
				SAY("Bien le bonjour monsieur, il faut que vous aidiez votre gouvernement, c'est urgent.")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Salut. Qu'est-ce que c'est, ici ?",1)
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Ouais, je suis l� pour le contrat.",2)
				ANSWER("OK, j'ai entendu dire que vous aviez besoin de quelqu'un de comp�tent.",2)
				ANSWER("Je suis l� pour une mission que j'ai trouv�e sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("CityAdmin, comment puis-je vous aider, madame ?")
				SAY("CityAdmin, avez-vous besoin d'aide, madame ?")
				SAY("Bonjour madame, vous venez pour le job ?")
				SAY("Bienvenue aux bureaux de CityAdmin. Comment puis-je vous aider, madame ?")
				SAY("Bien le bonjour madame, il faut que vous aidiez votre gouvernement, c'est urgent.")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("C'est beau, ici. Qu'est-ce que vous y faites ?",1)
				ANSWER("Je suis d�sol�e, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je suis venue pour le job.",2)
				ANSWER("Bonjour, on m'a dit de m'adresser � vous pour une mission que j'ai trouv�e sur un terminal.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("CityAdmin vous souhaite une agr�able journ�e.")
				SAY("Passez une bonne journ�e. Pour le peuple !")
				SAY("Monsieur, pour des informations d'ordre g�n�ral sur CityAdmin, veuillez consulter les terminaux. Nous nous joignons avec le grand Reza pour vous souhaiter une bonne journ�e !")
				SAY("Merci monsieur. Passez une bonne journ�e.")
				ENDDIALOG()
			else
				SAY("CityAdmin vous souhaite une agr�able journ�e.")
				SAY("Passez une bonne journ�e. Pour le peuple !")
				SAY("Madame, pour des informations d'ordre g�n�ral sur CityAdmin, veuillez consulter les terminaux. Nous nous joignons avec le grand Reza pour vous souhaiter une bonne journ�e !")
				SAY("Merci madame. Passez une bonne journ�e.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Mission : Une meute de %TARGET_NPCNAME(0) nous cause actuellement des probl�mes. T�che : Exterminez %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Evitez � tout prix de tirer sur les citoyens.")
			SAY("Runner, votre mission est la suivante. Exterminez %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) qui terrorisent nos citoyens. Revenez ici toucher votre r�compense une fois que vous avez accompli votre mission.")
			SAY("Runner, nous avons une mission de chasse pour vous. Votre cible est une meute de %TARGET_NPCNAME(0). Tuez-en au moins %TARGET_VALUE(0,1). Aucun civil ne doit �tre touch� pendant cette intervention.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Mes rapports de surveillance signalent une activit� encore trop importante de %TARGET_NPCNAME(0). Trouvez une solution au probl�me.")
				SAY("Runner, vous n'avez pas encore termin� votre mission. Au travail.")
				SAY("Runner, on nous signale encore des %TARGET_NPCNAME(0). Trouvez-les, et abattez-les.")
				SAY("J'ai trop � faire pour m'occuper de vous, runner. Mes rapports montrent que vous n'avez pas encore termin� votre mission. Au travail.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Selon mes rapports, vous avec termin� votre mission. La r�compense standard de %REWARD_MONEY() cr�dits a �t� transf�r�e sur votre compte. Reza et CityAdmin vous remercient pour votre action.")
				SAY("Runner, mes rapports montrent que la mission a �t� accomplie. Bien jou�. La r�compense standard de %REWARD_MONEY() cr�dits a �t� transf�r�e sur votre compte. Pour le peuple !")
				SAY("Runner, beau travail. La zone est s�curis�e. La r�compense standard de %REWARD_MONEY() cr�dits a �t� transf�r�e sur votre compte. Merci d'avoir prot�g� la ville au nom de Reza, pour le peuple !")
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

