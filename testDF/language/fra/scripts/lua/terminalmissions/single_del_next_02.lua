function DIALOG()

	NODE(0)
		SAY("NEXT, comment puis-je vous aider ?")
		SAY("NEXT, o� voulez-vous aller aujourd'hui ?")
		SAY("Bonjour. Vous venez pour la livraison ?")
		SAY("Bienvenue chez NEXT Inc. Comment puis-je vous aider ?")
		SAY("Bonjour. Vous �tes l� pour la livraison ?")
		SAY("Bonjour � vous. NEXT pourrait avoir besoin de vos services.")
		
		ANSWER("Je viens pour la livraison.",1)
		ANSWER("Ouais, j'ai entendu dire que vous cherchiez un livreur. Donnez-moi seulement le colis et l'adresse...",1)
		ANSWER("Je viens pour la livraison. Dites-moi quoi et o�, je m'occupe du reste.",1)
		ANSWER("D�sol�, j'ai d�j� du travail.",4)
		ANSWER("Trouvez quelqu'un d'autre, je n'ai pas envie de vous aider.",4)
		ANSWER("Ecoutez, j'ai l'air d'un runner ? Je fais pas de livraisons, moi.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("%NPC_NAME(1) a besoin de cette pi�ce. C'est tr�s urgent. Il se trouve � %NPC_WORLD(1). Soyez rapide et efficace. Bonne chance.")
		SAY("OK, Runner. %NPC_NAME(1) attend cette livraison � %NPC_WORLD(1). C'est urgent, alors faites vite. Revenez ici ensuite pour toucher votre r�compense.")
		SAY("Hello! %NPC_NAME(1) a besoin de ce paquet, c'est urgent. Livrez-lui �a � %NPC_WORLD(1) aussi vite que vous pouvez, et revenez ici ensuite.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("O� que vous alliez, choisissez NEXT - Cela s'applique aussi � nos livraisons. Faites ce que je vous ai demand�.")
				SAY("%NPC_NAME(1) nous a envoy� un message, apparemment vous n'�tes pas du genre rapide. Faites cette livraison, ou bien pr�parez-vous � en subir les cons�quences.")
				SAY("Oubli� quelque chose ? La livraison. %NPC_NAME(1). %NPC_WORLD(1). Maintenant !")
				SAY("Ecoutez, j'ai pas le temps de vous parler. %NPC_NAME(1) attend toujours sa livraison. Alors allez-y.")
				ENDDIALOG()
			else
				SAY("OK %NPC_NAME(1) m'a envoy� un message de confirmation. Votre paye de %REWARD_MONEY() cr�dits a �t� d�pos�e sur votre compte. Passez une bonne journ�e.")
				SAY("Merci. %NPC_NAME(1) vient de confirmer la livraison, et %REWARD_MONEY() cr�dits ont �t� vers�s sur votre compte. Merci pour votre aide.")
				SAY("La livraison a �t� confirm�e, j'ai fait verser %REWARD_MONEY() cr�dits sur votre compte. Passez une bonne journ�e.")
				SAY("J'ai fait transf�rer %REWARD_MONEY() cr�dits sur votre compte pour votre travail. Nous vous sommes reconnaissants pour votre aide.")
				SAY("Vous avez bien agi. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Si vous voulez d'autres missions chez nous, surveillez votre terminal")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("J'attends encore...")
				SAY("Ah, pardon. Vous aviez un paquet pour moi, non ? Vous pouvez vous d�p�cher s'il-vous-pla�t ?")
				SAY("Pas de livraison pour moi ? D�p�chez-vous, j'en ai besoin.")
				ENDDIALOG()
			else	
				SAY("La livraison de NEXT, c'est �a ? %NPC_NAME(0) s'occupera de votre paie.")
				SAY("Bien. %NPC_NAME(0) doit probablement avoir quelques cr�dits pour vous.")
				SAY("Merci. %NPC_NAME(0) vous paiera pour la livraison.")
				SAY("Juste � temps, je pensais attendre jusqu'au Jugement Dernier.... %NPC_NAME(0) s'occupera de votre paie.")
				SAY("Vous avez prix votre temps ! Retournez voir %NPC_NAME(0) pour votre prime.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("OK, si vous n'avez rien � faire chez NEXT, je vous demande de partir.")
		SAY("Alors nous n'avons plus rien � nous dire.")
		SAY("NEXT vous remercie pour votre visite et vous souhaite une bonne journ�e. Au revoir.")
		ENDDIALOG()
	NODE(5)
		SAY("Mais qu'est-ce que vous voulez encore ? J'ai eu ma livraison, maintenant allez voir %NPC_NAME(0) pour toucher votre paie.")
		SAY("Merci pour la livraison. Pour votre paie, c'est avec %NPC_NAME(0) que �a se passe.") 
		ENDIALOG()
end