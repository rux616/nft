function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Salutations, mon Frère, comment puis-je t'aider ?")
				SAY("Gloire à Crahn, mon Frère, que cherches-tu ?")
				SAY("As-tu besoin d'aide, mon Frère ?")

				ANSWER("Je sais que vous recherchez un livreur. Je peux peut-être vous aider ?",1)
				ANSWER("J'ai entendu dire que vous recherchiez un livreur, si c'est le cas j'accepte.",1)
				ANSWER("Pardonnez-moi, j'ai fait une erreur. Au revoir.",4)
			else
				SAY("Salutations, ma Soeur, comment puis-je t'aider ?")
				SAY("Gloire à Crahn, ma Soeur, que cherches-tu ?")
				SAY("As-tu besoin d'aide, ma Soeur ?")

				ANSWER("Je sais que vous recherchez un livreur. Je peux peut-être vous aider ?",1)
				ANSWER("J'ai entendu dire que vous recherchiez un livreur, si c'est le cas j'accepte.",1)
				ANSWER("Pardonnez-moi, j'ai fait une erreur. Au revoir.",4)
			end
	NODE(1)
		GIVEQUESTITEM(91)
			SAY("Nous recevons souvent des dons de nos généreux concitoyens pour soutenir l'action de la Fraternité et sa recherche de la Vérité profonde dans l'Ether. Nous aimons récompenser ces marques de soutien en offrant à nos généreux collaborateurs des éditions reliées des enseignements de Crahn. %NPC_NAME(1) est un de nos plus récents collaborateurs, vous le trouverez à %NPC_WORLD(1). Veuillez lui faire parvenir ceci pour lui montrer combien nous apprécions son soutien. Lorsque vous avez fini, repassez ici pour toucher votre récompense.")
			SAY("Il faut que ces documents soient livrés à %NPC_NAME(1), %NPC_WORLD(1). Lorsque vous avez effectué cette livraison, vous serez récompensé en conséquence. Maintenant dépêchez-vous, %NPC_NAME(1) a un besoin urgent de ces documents.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(2)
			ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Je pensais que tes instructions étaient claires, disciple. Ne reviens pas tant que ce paquet n'est pas livré. Ce n'est qu'alors que tu toucheras ta récompense.")
				SAY("Pourquoi flânez-vous encore ici, disciple ? Le temps nous est compté, alors allez livrer ce que je vous ai donné. Ce n'est que lorsque votre mission sera accomplie que vous connaîtrez la bienveillance de Crahn.")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Excellent travail, disciple. Je m'assurerai que votre oeuvre soit mentionnée à Golon Kalah en personne. Veuillez accepter ces %REWARD_MONEY() crédits en récompense de vos efforts. Peut-être la Fraternité vous offrira-t-elle du travail à nouveau. Mais pour le moment, je dois aller méditer.") 
				SAY("la Fraternité apprécie votre dévouement à sa cause. Beau travail, disciple. Veuillez accepter ces %REWARD_MONEY() crédits en signe d'appréciation de vos efforts.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Mais enfin, où est ma livraison ! %NPC_NAME(0) m'a dit que vous en étiez responsable, j'attends ! Ne revenez pas me voir tant que vous n'avez rien !")
				SAY("Où est ma livraison ! Revenez me voir quand vous l'avez !")
				ENDDIALOG()
			else	
				SAY("Ah, mon colis, enfin ! Excellente nouvelle. Retournez voir %NPC_NAME(0) pour toucher votre récompense.")
				SAY("Ma livraison. Bon travail. Si vous retournez voir %NPC_NAME(0), on vous récompensera comme vous le méritez.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Bonne journée à toi, disciple.")
		SAY("Reviens lorsque tu auras fait le ménage dans tes pensées, disciple.")
		ENDDIALOG()
	NODE(5)
		SAY("Mais qu'est-ce que vous voulez ? J'ai eu ce que je voulais, maintenant allez réclamer votre argent à %NPC_NAME(0).")
		SAY("Merci pour la livraison. Retournez voir %NPC_NAME(0) pour voucher votre récompense.") 

		ENDIALOG()
end
