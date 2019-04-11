--new
function DIALOG()
	NODE(0)
		SAY("Bonjour runner, comment puis-je vous aider ?")
		SAY("Oui runner ? Un probl�me ?")
		SAY("Oui ? J'ai beaucoup � faire, vous savez.")
		SAY("Qu'est-ce qu'il y a ?") 
		SAY("Je vous �coute.")
		SAY("Allez droit au but.")
		SAY("Je ne pense pas qu'on se connaisse.")
		SAY("Vous venez pour le job, c'est �a ?")
		SAY("Bonjour � vous, runner.")
		SAY("Un probl�me ? J'�coute.")
		
		ANSWER("Je viens pour le job que vous proposez...",2)
		ANSWER("Je pense que vous avez un job pour moi.",2)
		ANSWER("Vous avez du travail pour moi ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Laissez tomber. Au revoir.",1)
		ANSWER("Ce n'est pas � vous que je voulais parler.",1)
		ANSWER("Je voulais parler � quelqu'un d'autre.",1)
		ANSWER("J'ai chang� d'avoir. Au revoir.",1)
	NODE(1)	
		--Person 0
		SAY("Bonne chance pour... peu importe.")
		SAY("N'h�sitez pas � repasser.")
		SAY("Au revoir. J'ai des choses plus importantes � faire.")
		SAY("Au revoir. La prochaine fois, peut-�tre...")
		ENDDIALOG()
	NODE(2)
		--Person 0
		--Person vergibt Name einer Kontaktperson
		SAY("Cette mission est class�e top secret, compris ? Allez voir %NPC_NAME(1) � %NPC_WORLD(1). C'est votre contact.")
		SAY("Officiellement, cette discussion n'a jamais eu lieu, compris ? Votre contact vous donnera plus de d�tails. Vous le trouverez dans %NPC_WORLD(1), son nom est %NPC_NAME(1).")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		SAY("Vous aurez plus d'informations gr�ce au contact que je vous ai donn�.")
		SAY("La discr�tion, c'est tout ce qui compte.")
		ENDDIALOG()
	NODE(4)
		--Person 1 Kontaktperson, nennt Zielperson
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Allez, d�gagez le plancher ! J'ai autre chose � faire que parler � tous les runners qui passent.")
			SAY("Hors de ma vue !")
			ENDDIALOG()
		else
			SAY("Voici votre mission : tuer %NPC_NAME(2) � %NPC_WORLD(2). Revenez ensuite pour paiement.")
			SAY("La cible s'appelle %NPC_NAME(2) et se trouve � %NPC_WORLD(2). Revenez me voir quand vous avez fini pour toucher votre r�compense.")
			SAY("%NPC_NAME(2), � %NPC_WORLD(2), a grand besoin de se faire tuer. Je vous donnerai la r�compense quand vous aurez termin�.")
			ACTIVATEDIALOGTRIGGER(3)
			SETNEXTDIALOGSTATE(5)
			ENDDIALOG()
		end
	NODE(5)
		--Person 1 Kontaktperson
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous ne faites pas preuve d'un grand professionnalisme. Retournez � votre mission. La cible s'appelle %NPC_NAME(2) et se trouve � %NPC_WORLD(2).")
			SAY("Mais pourquoi est-ce qu'ils m'ont envoy� un amateur pareil ? Vous avez une mission. La cible s'appelle %NPC_NAME(2) et se trouve dans %NPC_WORLD(2).")
			SAY("Allez finir votre mission.  La cible s'appelle %NPC_NAME(2) et se trouve dans %NPC_WORLD(2).")
			ENDDIALOG()
		else
			SAY("Voici vos %REWARD_MONEY() cr�dits. On ne s'est jamais rencontr�s, compris ?")
			SAY("Votre r�compense : %REWARD_MONEY() cr�dits. Maintenant parlez, je ne veux pas qu'on nous voie parler ensemble.")
			SAY("Bon travail. Voici votre r�compense, comme promis : %REWARD_MONEY() cr�dits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()
		end
end
