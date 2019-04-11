function DIALOG()

--single_ag_biotech_02

	NODE(0)
		SAY("Bonjour runner. Que puis-je faire pour vous ?")
		SAY("Salutations, runner. Comment puis-je vous aider ?")
		SAY("Oui, runner ? En quoi puis-je vous aider ?")
		
		ANSWER("J'ai accepté un travail d'extermination. J'ai lu sur le terminal que c'était à vous que je devais m'adresser.",1)
		ANSWER("Le terminal m'a donné votre nom. Je suis là pour l'extermination.",1)
		ANSWER("Je vous ai pris pour quelqu'un d'autre. Pardon.",3)
		ANSWER("Pardon, je crois que je ne suis pas au bon endroit. Au revoir.",3)

	NODE(1)
		SAY("Je vois. Donnez-moi le temps d'accéder à votre dossier... Le voilà. Comme vous le savez déjà, BioTech paie des runners pour tuer différentes espèces de vermine. Vous n'avez pas besoin de savoir pourquoi, vous avez juste besoin d'aller dans les égouts du secteur et de tuer des %TARGET_NPCNAME(0). Si vous en tuez %TARGET_VALUE(0,1), revenez me voir pour toucher une prime. C'est un petit job, mais il faut bien commencer quelque part. Amusez-vous bien !")
		SAY("D'accord, donnez-moi le temps d'accéder à votre dossier... Bien. Vous avez accepté une mission d'extermination, et c'est ce que vous allez faire. Restez dans le secteur, et abattez des %TARGET_NPCNAME(0). Lorsque vous en avez tué au moins %TARGET_VALUE(0,1), vous pourrez revenir me voir pour toucher votre paye. N'oubliez pas de vous laver les mains une fois que vous avez fini, c'est mieux. Amusez-vous !")
		SAY("Oui, je suis en train d'accéder à votre fichier... Nous y voilà, runner. Fouillez le secteur et abattez au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Quand vous avez fini, vous pouvez revenir me voir pour toucher votre paye. Je vais être honnête avec vous, runner : ce travail, c'est juste un peu mieux que vous prostituer pour madame Véronique. Amusez-vous bien !")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Les %TARGET_NPCNAME(0), c'est trop difficile ? Je ne pense pas. Allez, au travail !")
				SAY("Déjà de retour ? Je ne peux pas vous payer tant que vous ne m'en avez pas tué au moins %TARGET_VALUE(0,1), vous savez. Revenez quand vous avez le compte.")
				SAY("Déjà de retour ? Vous devez y retourner et en tuer au moins %TARGET_VALUE(0,1) avant d'être payé, alors ne baissez pas les bras !")
				ENDDIALOG()
			else
				SAY("Bon travail, runner, voilà vos %REWARD_MONEY() crédits. Si vous voulez encore travailler chez BioTech, vérifiez votre terminal. Peut-être que la prochaine fois vous ferez quelque chose de plus valorisant que de chasser des %TARGET_NPCNAME(0). Passez une bonne journée.")
				SAY("Très bien, runner. Voilà vos %REWARD_MONEY() crédits. Peut-être que la prochaine fois, vous trouverez un meilleur job chez nous. Merci !") 
				SAY("Vous revoilà enfin, runner. Acceptez ces %REWARD_MONEY() crédits en récompense de votre travail. Si vous voulez encore travailler chez BioTech, vérifiez votre terminal.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Au revoir.")
		ENDDIALOG()
end
