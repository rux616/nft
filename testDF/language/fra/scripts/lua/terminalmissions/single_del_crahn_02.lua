function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Salutations, mon Fr�re, comment puis-je t'aider ?")
				SAY("Gloire � Crahn, mon Fr�re, que cherches-tu ?")
				SAY("As-tu besoin d'aide, mon Fr�re ?")

				ANSWER("Je sais que vous recherchez un livreur. Je peux peut-�tre vous aider ?",1)
				ANSWER("J'ai entendu dire que vous recherchiez un livreur, si c'est le cas j'accepte.",1)
				ANSWER("Pardonnez-moi, j'ai fait une erreur. Au revoir.",4)
			else
				SAY("Salutations, ma Soeur, comment puis-je t'aider ?")
				SAY("Gloire � Crahn, ma Soeur, que cherches-tu ?")
				SAY("As-tu besoin d'aide, ma Soeur ?")

				ANSWER("Je sais que vous recherchez un livreur. Je peux peut-�tre vous aider ?",1)
				ANSWER("J'ai entendu dire que vous recherchiez un livreur, si c'est le cas j'accepte.",1)
				ANSWER("Pardonnez-moi, j'ai fait une erreur. Au revoir.",4)
			end
	NODE(1)
		GIVEQUESTITEM(91)
			SAY("Nous recevons souvent des dons de nos g�n�reux concitoyens pour soutenir l'action de la Fraternit� et sa recherche de la V�rit� profonde dans l'Ether. Nous aimons r�compenser ces marques de soutien en offrant � nos g�n�reux collaborateurs des �ditions reli�es des enseignements de Crahn. %NPC_NAME(1) est un de nos plus r�cents collaborateurs, vous le trouverez � %NPC_WORLD(1). Veuillez lui faire parvenir ceci pour lui montrer combien nous appr�cions son soutien. Lorsque vous avez fini, repassez ici pour toucher votre r�compense.")
			SAY("Il faut que ces documents soient livr�s � %NPC_NAME(1), %NPC_WORLD(1). Lorsque vous avez effectu� cette livraison, vous serez r�compens� en cons�quence. Maintenant d�p�chez-vous, %NPC_NAME(1) a un besoin urgent de ces documents.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(2)
			ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Je pensais que tes instructions �taient claires, disciple. Ne reviens pas tant que ce paquet n'est pas livr�. Ce n'est qu'alors que tu toucheras ta r�compense.")
				SAY("Pourquoi fl�nez-vous encore ici, disciple ? Le temps nous est compt�, alors allez livrer ce que je vous ai donn�. Ce n'est que lorsque votre mission sera accomplie que vous conna�trez la bienveillance de Crahn.")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Excellent travail, disciple. Je m'assurerai que votre oeuvre soit mentionn�e � Golon Kalah en personne. Veuillez accepter ces %REWARD_MONEY() cr�dits en r�compense de vos efforts. Peut-�tre la Fraternit� vous offrira-t-elle du travail � nouveau. Mais pour le moment, je dois aller m�diter.") 
				SAY("la Fraternit� appr�cie votre d�vouement � sa cause. Beau travail, disciple. Veuillez accepter ces %REWARD_MONEY() cr�dits en signe d'appr�ciation de vos efforts.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Mais enfin, o� est ma livraison ! %NPC_NAME(0) m'a dit que vous en �tiez responsable, j'attends ! Ne revenez pas me voir tant que vous n'avez rien !")
				SAY("O� est ma livraison ! Revenez me voir quand vous l'avez !")
				ENDDIALOG()
			else	
				SAY("Ah, mon colis, enfin ! Excellente nouvelle. Retournez voir %NPC_NAME(0) pour toucher votre r�compense.")
				SAY("Ma livraison. Bon travail. Si vous retournez voir %NPC_NAME(0), on vous r�compensera comme vous le m�ritez.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Bonne journ�e � toi, disciple.")
		SAY("Reviens lorsque tu auras fait le m�nage dans tes pens�es, disciple.")
		ENDDIALOG()
	NODE(5)
		SAY("Mais qu'est-ce que vous voulez ? J'ai eu ce que je voulais, maintenant allez r�clamer votre argent � %NPC_NAME(0).")
		SAY("Merci pour la livraison. Retournez voir %NPC_NAME(0) pour voucher votre r�compense.") 

		ENDIALOG()
end
