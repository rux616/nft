function DIALOG()

--single_ag_biotech_02

	NODE(0)
		SAY("Bonjour runner. Que puis-je faire pour vous ?")
		SAY("Salutations, runner. Comment puis-je vous aider ?")
		SAY("Oui, runner ? En quoi puis-je vous aider ?")
		
		ANSWER("J'ai accept� un travail d'extermination. J'ai lu sur le terminal que c'�tait � vous que je devais m'adresser.",1)
		ANSWER("Le terminal m'a donn� votre nom. Je suis l� pour l'extermination.",1)
		ANSWER("Je vous ai pris pour quelqu'un d'autre. Pardon.",3)
		ANSWER("Pardon, je crois que je ne suis pas au bon endroit. Au revoir.",3)

	NODE(1)
		SAY("Je vois. Donnez-moi le temps d'acc�der � votre dossier... Le voil�. Comme vous le savez d�j�, BioTech paie des runners pour tuer diff�rentes esp�ces de vermine. Vous n'avez pas besoin de savoir pourquoi, vous avez juste besoin d'aller dans les �gouts du secteur et de tuer des %TARGET_NPCNAME(0). Si vous en tuez %TARGET_VALUE(0,1), revenez me voir pour toucher une prime. C'est un petit job, mais il faut bien commencer quelque part. Amusez-vous bien !")
		SAY("D'accord, donnez-moi le temps d'acc�der � votre dossier... Bien. Vous avez accept� une mission d'extermination, et c'est ce que vous allez faire. Restez dans le secteur, et abattez des %TARGET_NPCNAME(0). Lorsque vous en avez tu� au moins %TARGET_VALUE(0,1), vous pourrez revenir me voir pour toucher votre paye. N'oubliez pas de vous laver les mains une fois que vous avez fini, c'est mieux. Amusez-vous !")
		SAY("Oui, je suis en train d'acc�der � votre fichier... Nous y voil�, runner. Fouillez le secteur et abattez au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Quand vous avez fini, vous pouvez revenir me voir pour toucher votre paye. Je vais �tre honn�te avec vous, runner : ce travail, c'est juste un peu mieux que vous prostituer pour madame V�ronique. Amusez-vous bien !")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Les %TARGET_NPCNAME(0), c'est trop difficile ? Je ne pense pas. Allez, au travail !")
				SAY("D�j� de retour ? Je ne peux pas vous payer tant que vous ne m'en avez pas tu� au moins %TARGET_VALUE(0,1), vous savez. Revenez quand vous avez le compte.")
				SAY("D�j� de retour ? Vous devez y retourner et en tuer au moins %TARGET_VALUE(0,1) avant d'�tre pay�, alors ne baissez pas les bras !")
				ENDDIALOG()
			else
				SAY("Bon travail, runner, voil� vos %REWARD_MONEY() cr�dits. Si vous voulez encore travailler chez BioTech, v�rifiez votre terminal. Peut-�tre que la prochaine fois vous ferez quelque chose de plus valorisant que de chasser des %TARGET_NPCNAME(0). Passez une bonne journ�e.")
				SAY("Tr�s bien, runner. Voil� vos %REWARD_MONEY() cr�dits. Peut-�tre que la prochaine fois, vous trouverez un meilleur job chez nous. Merci !") 
				SAY("Vous revoil� enfin, runner. Acceptez ces %REWARD_MONEY() cr�dits en r�compense de votre travail. Si vous voulez encore travailler chez BioTech, v�rifiez votre terminal.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Au revoir.")
		ENDDIALOG()
end
