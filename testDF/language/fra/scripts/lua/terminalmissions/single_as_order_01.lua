--new
function DIALOG()
	NODE(0)
		SAY("Bonjour runner, comment puis-je vous aider ?")
		SAY("Oui runner ? Un problème ?")
		SAY("Oui ? J'ai beaucoup à faire, vous savez.")
		SAY("Qu'est-ce qu'il y a ?") 
		SAY("Je vous écoute.")
		SAY("Allez droit au but.")
		SAY("Je ne pense pas qu'on se connaisse.")
		SAY("Vous venez pour le job, c'est ça ?")
		SAY("Bonjour à vous, runner.")
		SAY("Un problème ? J'écoute.")
		
		ANSWER("Je viens pour le job que vous proposez...",2)
		ANSWER("Je pense que vous avez un job pour moi.",2)
		ANSWER("Vous avez du travail pour moi ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Laissez tomber. Au revoir.",1)
		ANSWER("Ce n'est pas à vous que je voulais parler.",1)
		ANSWER("Je voulais parler à quelqu'un d'autre.",1)
		ANSWER("J'ai changé d'avoir. Au revoir.",1)
	NODE(1)	
		--Person 0
		SAY("Bonne chance pour... peu importe.")
		SAY("N'hésitez pas à repasser.")
		SAY("Au revoir. J'ai des choses plus importantes à faire.")
		SAY("Au revoir. La prochaine fois, peut-être...")
		ENDDIALOG()
	NODE(2)
		--Person 0
		--Person vergibt Name einer Kontaktperson
		SAY("Cette mission est classée top secret, compris ? Allez voir %NPC_NAME(1) à %NPC_WORLD(1). C'est votre contact.")
		SAY("Officiellement, cette discussion n'a jamais eu lieu, compris ? Votre contact vous donnera plus de détails. Vous le trouverez dans %NPC_WORLD(1), son nom est %NPC_NAME(1).")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		SAY("Vous aurez plus d'informations grâce au contact que je vous ai donné.")
		SAY("La discrétion, c'est tout ce qui compte.")
		ENDDIALOG()
	NODE(4)
		--Person 1 Kontaktperson, nennt Zielperson
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Allez, dégagez le plancher ! J'ai autre chose à faire que parler à tous les runners qui passent.")
			SAY("Hors de ma vue !")
			ENDDIALOG()
		else
			SAY("Voici votre mission : tuer %NPC_NAME(2) à %NPC_WORLD(2). Revenez ensuite pour paiement.")
			SAY("La cible s'appelle %NPC_NAME(2) et se trouve à %NPC_WORLD(2). Revenez me voir quand vous avez fini pour toucher votre récompense.")
			SAY("%NPC_NAME(2), à %NPC_WORLD(2), a grand besoin de se faire tuer. Je vous donnerai la récompense quand vous aurez terminé.")
			ACTIVATEDIALOGTRIGGER(3)
			SETNEXTDIALOGSTATE(5)
			ENDDIALOG()
		end
	NODE(5)
		--Person 1 Kontaktperson
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous ne faites pas preuve d'un grand professionnalisme. Retournez à votre mission. La cible s'appelle %NPC_NAME(2) et se trouve à %NPC_WORLD(2).")
			SAY("Mais pourquoi est-ce qu'ils m'ont envoyé un amateur pareil ? Vous avez une mission. La cible s'appelle %NPC_NAME(2) et se trouve dans %NPC_WORLD(2).")
			SAY("Allez finir votre mission.  La cible s'appelle %NPC_NAME(2) et se trouve dans %NPC_WORLD(2).")
			ENDDIALOG()
		else
			SAY("Voici vos %REWARD_MONEY() crédits. On ne s'est jamais rencontrés, compris ?")
			SAY("Votre récompense : %REWARD_MONEY() crédits. Maintenant parlez, je ne veux pas qu'on nous voie parler ensemble.")
			SAY("Bon travail. Voici votre récompense, comme promis : %REWARD_MONEY() crédits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()
		end
end
