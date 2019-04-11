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
			SAY("Mission : d�barrasser la ville des invasions de %TARGET_NPCNAME(0). T�che : exterminer %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Les dommages collat�raux ne sont pas accept�s.")
			SAY("Runner, votre mission est la suivante : exterminez %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) qui infestent notre ville. Revenez ici lorsque cet objectif est atteint.")
			SAY("Runner, aujourd'hui ce sera une simple mission de chasse. Vos cibles sont des %TARGET_NPCNAME(0). Tuez-en au moins %TARGET_VALUE(0,1). Les dommages collat�raux ne sont pas accept�s.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Les rapports de surveillance nous signalent un nombre encore trop important de %TARGET_NPCNAME(0) dans le secteur. Trouvez une solution au probl�me.")
				SAY("Runner, Vous n'avez pas termin� votre mission. Retournez-y.")
				SAY("Runner, selon mes rapports, il reste encore des %TARGET_NPCNAME(0). Trouvez-les et exterminez-les.")
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
						
		
			

