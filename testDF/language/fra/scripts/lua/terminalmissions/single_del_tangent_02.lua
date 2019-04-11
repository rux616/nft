function DIALOG()

	NODE(0)
		GENDERCHECK()
                       if (result==1) then 
                        SAY("Besoin de quelque chose, monsieur ?")
                        SAY("Je peux vous aider, monsieur ?")
                        SAY("Besoin d'aide, monsieur ?")
                        SAY("Oui monsieur, un probl�me ?")
                        SAY("Bienvenue monsieur, comment peut-on vous aider ?")
                       else
                        SAY("Oui madame, comment peut-on vous aider � Tangent ?")
                        SAY("Bienvenue madame, comment puis-je vous aider ?")
                        SAY("Oui madame ? En quoi puis-je vous �tre utile ?")
                        SAY("Vous avez besoin d'aide, madame ?")
                        SAY("Oui madame ? Puis-je vous aider d'une quelconque mani�re ?")
			end
                        ANSWER("En regardant sur un Jobterm, j'ai lu que vous recherchiez un livreur.",1)
                        ANSWER("Votre compagnie a besoin d'un livreur, c'est exact ? Alors je suis la personne qu'il vous faut.",1)
                        ANSWER("Votre job de livreur m'int�resse.",1)
                        ANSWER("Tangent ? Pardon, je ne traite pas avec ces gens-l�.",3)
                        ANSWER("Oh, euh... au revoir.",3)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Un de nos labos de recherche est tomb� en rupture de pi�ces d�tach�es pour armes, et il attend une livraison aujourd'hui. Allez voir %NPC_NAME(1) � %NPC_WORLD(1), et revenez une fois que vous avez fait la livraison.")
		SAY("Nos bureaux de %NPC_WORLD(1) doivent terminer des rapports, et ont besoin de ces sp�cifications aussi vite que possible. Allez voir M. %NPC_NAME(1) l�-bas, il vous prendra en charge. Revenez quand vous avez fini.")
		SAY("Ces pi�ces d�tach�es servent � nos nouveaux dispositifs de s�curit�. Un de nos labos a eu des probl�mes r�cemment, et %NPC_NAME(1) a d�cid� d'installer ces dispositifs de s�curit� sans attendre. Vous le rencontrerez � %NPC_WORLD(1).")
		SAY("Nous avons des difficult�s de communications avec l'avant-poste de Tangent, et nous avons besoin que quelqu'un apporte des circuits imprim�s tr�s importants � %NPC_NAME(1), %NPC_WORLD(1). Ca devrait r�soudre le probl�me. Apr�s �a, revenez nous voir pour toucher votre paye.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
                        	SAY("Ahh, je suis d�sol�, mais si vous pouviez accomplir votre mission je serais ravi.")
                        	SAY("Tangent Industries appr�cierait que vous vous contentiez d'effectuer votre livraison.")
                        	SAY("Vous ne savez plus quoi faire ? Si tout va bien, continuez votre livraison.")
                        	SAY("Revenez me voir une fois que vous avez effectu� votre livraison.")
                                ENDDIALOG()
			else
                                SAY("Bon travail, runner. Comme promis, vous trouverez %REWARD_MONEY() cr�dits sur votre compte.")
                                SAY("La livraison a �t� assur�e sans grand retard. Les %REWARD_MONEY() cr�dits promis ont �t� transf�r�s sur votre compte.")
                                SAY("Nous attendions votre retour. F�licitations, merci pour votre aide. Voici vos %REWARD_MONEY() cr�dits.")
                                SAY("Nous sommes satisfaits de vos services. Nous esp�rons que vous appr�cierez votre r�compense. Voici les %REWARD_MONEY() cr�dits promis.")
                                SAY("Tangent Industries est tr�s satisfaite de vos services. J'ai re�u l'autorisation de vous verser un montant de %REWARD_MONEY() cr�dits.")
                                SAY("Votre mission a �t� accomplie avec succ�s, comme je le constate sur mes �crans. N'h�sitez pas � nous rendre visite � nouveau. Voici les %REWARD_MONEY() cr�dits convenus.")                                ACTIVATEDIALOGTRIGGER(2)
                                ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
	                	SAY("Et notre contrat ? Si la prime vous int�resse toujours, je vous sugg�re d'accomplir votre mission.")
	                	SAY("Tangent Industries n'est pas satisfaite de la mani�re dont vous proc�dez. Veuillez vous occuper du colis imm�diatement.")
	                	SAY("Ce colis est tr�s important pour nous. Revenez avec lui.")
	                	SAY("Ne revenez pas sans le colis.")
	                	ENDDIALOG()
			else
        			SAY("Tangent a une dette envers vous. Allez voir %NPC_NAME(0) et demandez-lui votre r�compense. Vos services ont �t� tr�s appr�ci�s.")
        			SAY("Ah, la livraison, enfin ! Merci. Je suis certain que vous appr�cierez la r�compense que vous offrira %NPC_NAME(0).")
        			SAY("Essayez d'�tre un peu plus rapide la prochaine fois. Merci quand m�me. N'oubliez pas %NPC_NAME(0)pour toucher votre paye.")
        			SAY("M. %NPC_NAME(0) aura votre paye � disposition lorsque vous reviendrez le voir. Je suis satisfait de votre prestation.")
        			SAY("Votre service est plut�t d�cevant en raison de votre manque de s�rieux, mais je pense que %NPC_NAME(0) acceptera tout de m�me de vous payer.")
        			ACTIVATEDIALOGTRIGGER(1)
        			SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("N'h�sitez pas � repasser chez Tangent.")
		SAY("N'oubliez pas les JobTerms si vous cherchez du travail.")
		SAY("Au revoir, citoyen.")
		ENDDIALOG()
	NODE(5)
		SAY("Mais qu'est-ce que vous voulez encore ? J'ai eu la livraison, maintenant retournez voir %NPC_NAME(0) pour toucher votre r�compense.")
		SAY("Merci pour la livraison. Retournez voir %NPC_NAME(0) pour toucher votre r�compense.")
		ENDIALOG()
end
