function DIALOG()

	NODE(0)
		SAY("Oui, comment puis-je vous aider ?")
		SAY("Avez-vous besoin de quelque chose ?")
		SAY("Oui, que voulez-vous ?")
		SAY("Besoin de quelque chose ?")
		
		ANSWER("Oui, je sais que vous cherchez un livreur.",1)
		ANSWER("J'ai trouv� sur un terminal une annonce pour une livraison. Je voudrais vous aider.",1)
		ANSWER("Ca ira. Je ne devrais m�me pas �tre ici.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Veuillez vous rendre � %NPC_WORLD(), et donnez ces tracts sur la libre pens�e � notre agent perturbateur. Il les distribuera alors au peuple opprim� de Neocron, permettant aux Anges D�chus de b�n�ficier de l'arriv�e de nouveaux membres et chercheurs. Notre agent s'appelle %NPC_NAME(). Merci pour votre aide, runner. Vous recevrez une r�compense � votre retour. Bonne chance, et souvenez-vous : seuls les esprits libres peuvent former une soci�t� libre.")
		SAY("Runner, assurez-vous que cette livraison parvient � notre agent charg� de la distribution. Ce n'est pas une t�che ais�e, notre agent se trouve en effet dans %NPC_WORLD(). Faites tr�s attention � vous. Nous ne voulons pas que vous subissiez le moindre mal par notre faute. Lorsque vous aurez accompli votre t�che, revenez ici et je vous paierai, ce sera amplement justifi�. Maintenant, veuillez me laisser.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Allez accomplir votre t�che, runner.")
				SAY("Il est vital que ce paquet parvienne � notre agent %NPC_NAME, � %NPC_WORLD(). D�p�chez-vous.")
				SAY("J'ai quelque chose de tr�s important � terminer, je vous parlerai plus tard.")
				SAY("Vous savez ce que vous avez � faire, alors allez-y !")
				ENDDIALOG()
			else
				SAY("Rapide ! Tenez, voil� vos %REWARD_MONEY() cr�dits. Surveillez votre terminal si d'autres missions chez nous vous int�ressent. Merci.")
				SAY("Beau travail. Vous avez certainement aid� les habitants de Neocron. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Bonne chance � vous.")
				SAY("Excellent. Voici vos %REWARD_MONEY() cr�dits. Surveillez votre terminal pour ne pas manquer nos futures offres, et encore merci.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end	
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("J'attends toujours...")
				SAY("C'est vous le livreur ? Est-ce que vous pourriez vous d�p�cher s'il-vous-pla�t ?")
				SAY("Vous n'avez rien pour moi ? Je vous en prie, c'est urgent...")
				ENDDIALOG()
			else	
				SAY("C'est le colis de %NPC_NAME(0), c'est bien �a ? Retournez d'o� vous venez pour toucher votre r�compense.")
				SAY("Bien. %NPC_NAME(0) doit avoir une r�compense pour vous.")
				SAY("Merci. %NPC_NAME(0) s'occupera de votre r�mun�ration.")
				SAY("Juste � temps. Je pensais devoir attendre jusqu'au Jugement Dernier. %NPC_NAME(0) s'occupera de vous.")
				SAY("Vous avez mis beaucoup de temps. %NPC_NAME(0) m'a dit que vous deviez retourner l�-bas pour votre r�compense.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Au revoir.")
		SAY("J'ai beaucoup � faire. Si vous n'�tes pas dans mon cas, trouvez-vous quelqu'un d'autre avec qui bavarder.")
		SAY("Revenez quand vous saurez ce que vous voulez. Au revoir.")
		SAY("Si �a ne vous d�range pas, j'attends quelqu'un. Au revoir.")
		ENDDIALOG()
	NODE(5)
		SAY("Mais qu'est-ce que vous voulez ? J'ai eu ce que je voulais, maintenant retournez voir %NPC_NAME(0) pour toucher votre r�compense.")
		SAY("Merci pour la livraison. Maintenant retournez voir %NPC_NAME(0) pour toucher votre r�compense.") 
		ENDIALOG()
	

	
end
