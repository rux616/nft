function DIALOG()

	NODE(0)
		SAY("Quoi, runner ?")
		SAY("Oui runner, que voulez-vous ?")
		SAY("Soyez bref, runner, je suis press�. Que voulez-vous ?")
		
		ANSWER("Je viens pour l'annonce que j'ai trouv�e sur un terminal au sujet d'une ex�cution.",1)
		ANSWER("Je viens pour le travail de juge-jury-bourreau.",1)
		ANSWER("Hmmm. Je vais m'en aller. Au revoir.",3)
	NODE(1)
		SAY("Runner, le temps nous est compt�. Il est important que vous vous rendiez � %NPC_WORLD(1). Une fois sur place, ex�cutez un individu nomm� %NPC_NAME(1). Il n'y a rien de plus � dire. Rompez.")
		SAY("Runner, rendez-vous en vitesse � %NPC_WORLD(1), puis localisez et abattez %NPC_NAME(1). Votre mission est de la plus haute importance et doit �tre men�e discr�tement. Lorsque vous avez termin�, revenez ici et je vous donnerai votre r�compense. Bonne chance. Rompez.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, veuillez accomplir votre mission, ou vous en subirez les cons�quences.")
				SAY("Runner, partez imm�diatement !!")
				ENDDIALOG()
			else
				SAY("Prenez ces %REWARD_MONEY() cr�dits. Vos comp�tences et votre silence sont tr�s appr�ci�s ici. Pensez � surveiller votre terminal pour de futures opportunit�s. Merci, runner. Rompez.")
				SAY("Ahhh. Vous �tes de retour. Voici vos %REWARD_MONEY() cr�dits. Merci, runner. Pensez � surveiller votre terminal pour de futures opportunit�s. CityMercs appr�cie grandement votre comportement dans cette affaire d�licate.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Au revoir.")
		SAY("Revenez lorsque vous aurez une question, runner. Au revoir.")
		SAY("Alors partez. Je n'ai pas de temps � vous consacrer, runner.")
		ENDDIALOG()
	
end
