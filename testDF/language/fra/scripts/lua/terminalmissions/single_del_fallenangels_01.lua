function DIALOG()

	NODE(0)
		SAY("Oui, comment puis-je vous aider ?")
		SAY("Avez-vous besoin de quelque chose ?")
		SAY("Oui, que voulez-vous ?")
		SAY("Besoin de quelque chose ?")
		
		ANSWER("Oui, je sais que vous cherchez un livreur.",1)
		ANSWER("J'ai trouvé sur un terminal une annonce pour une livraison. Je voudrais vous aider.",1)
		ANSWER("Ca ira. Je ne devrais même pas être ici.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Veuillez vous rendre à %NPC_WORLD(), et donnez ces tracts sur la libre pensée à notre agent perturbateur. Il les distribuera alors au peuple opprimé de Neocron, permettant aux Anges Déchus de bénéficier de l'arrivée de nouveaux membres et chercheurs. Notre agent s'appelle %NPC_NAME(). Merci pour votre aide, runner. Vous recevrez une récompense à votre retour. Bonne chance, et souvenez-vous : seuls les esprits libres peuvent former une société libre.")
		SAY("Runner, assurez-vous que cette livraison parvient à notre agent chargé de la distribution. Ce n'est pas une tâche aisée, notre agent se trouve en effet dans %NPC_WORLD(). Faites très attention à vous. Nous ne voulons pas que vous subissiez le moindre mal par notre faute. Lorsque vous aurez accompli votre tâche, revenez ici et je vous paierai, ce sera amplement justifié. Maintenant, veuillez me laisser.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Allez accomplir votre tâche, runner.")
				SAY("Il est vital que ce paquet parvienne à notre agent %NPC_NAME, à %NPC_WORLD(). Dépêchez-vous.")
				SAY("J'ai quelque chose de très important à terminer, je vous parlerai plus tard.")
				SAY("Vous savez ce que vous avez à faire, alors allez-y !")
				ENDDIALOG()
			else
				SAY("Rapide ! Tenez, voilà vos %REWARD_MONEY() crédits. Surveillez votre terminal si d'autres missions chez nous vous intéressent. Merci.")
				SAY("Beau travail. Vous avez certainement aidé les habitants de Neocron. %REWARD_MONEY() crédits ont été transférés sur votre compte. Bonne chance à vous.")
				SAY("Excellent. Voici vos %REWARD_MONEY() crédits. Surveillez votre terminal pour ne pas manquer nos futures offres, et encore merci.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end	
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("J'attends toujours...")
				SAY("C'est vous le livreur ? Est-ce que vous pourriez vous dépêcher s'il-vous-plaît ?")
				SAY("Vous n'avez rien pour moi ? Je vous en prie, c'est urgent...")
				ENDDIALOG()
			else	
				SAY("C'est le colis de %NPC_NAME(0), c'est bien ça ? Retournez d'où vous venez pour toucher votre récompense.")
				SAY("Bien. %NPC_NAME(0) doit avoir une récompense pour vous.")
				SAY("Merci. %NPC_NAME(0) s'occupera de votre rémunération.")
				SAY("Juste à temps. Je pensais devoir attendre jusqu'au Jugement Dernier. %NPC_NAME(0) s'occupera de vous.")
				SAY("Vous avez mis beaucoup de temps. %NPC_NAME(0) m'a dit que vous deviez retourner là-bas pour votre récompense.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Au revoir.")
		SAY("J'ai beaucoup à faire. Si vous n'êtes pas dans mon cas, trouvez-vous quelqu'un d'autre avec qui bavarder.")
		SAY("Revenez quand vous saurez ce que vous voulez. Au revoir.")
		SAY("Si ça ne vous dérange pas, j'attends quelqu'un. Au revoir.")
		ENDDIALOG()
	NODE(5)
		SAY("Mais qu'est-ce que vous voulez ? J'ai eu ce que je voulais, maintenant retournez voir %NPC_NAME(0) pour toucher votre récompense.")
		SAY("Merci pour la livraison. Maintenant retournez voir %NPC_NAME(0) pour toucher votre récompense.") 
		ENDIALOG()
	

	
end
