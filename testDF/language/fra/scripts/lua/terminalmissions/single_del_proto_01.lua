function DIALOG()

	NODE(0)
		SAY("Votre espoir, votre force, votre rem�de. ProtoPharm, que puis-je faire pour vous ?")
		SAY("Bienvenue � ProtoPharm. Comment puis-je vous aider ?")
		SAY("Bonjour. Vous venez pour la livraison ?")
		SAY("Comment puis-je vous aider ?")
		SAY("Salutations. Vous venez pour la livraison ?")
		SAY("Bonjour, j'ai une livraison � vous confier si vous voulez.")
		
		ANSWER("Bonjour, je viens pour la livraison.",1)
		ANSWER("Parlons de cette livraison. Donnez-moi le destinataire et le colis...",1)
		ANSWER("Je viens pour la livraison. Donnez-moi l'adresse et le colis, et j'en fais mon affaire.",1)
		ANSWER("Pardon, c'est pas mon truc.",4)
		ANSWER("Trouvez-vous quelqu'un d'autre, j'ai pas le temps.",4)
		ANSWER("Ecoutez, je fais pas de livraisons, moi. Compris ?",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Un de nos patients a besoin de ce m�dicament tr�s rapidement. Allez trouver %NPC_NAME(1) � %NPC_WORLD(1), et donnez-lui �a. D�p�chez-vous, et revenez ici apr�s.")
		SAY("Hello, Runner. Un patient du nom de %NPC_NAME(1) attend ses m�dicaments � %NPC_WORLD(1). Apportez-les-lui rapidement, et revenez me voir.")
		SAY("Ah, c'est pas trop t�t. %NPC_NAME(1), un de nos patients, a vraiment besoin de ce m�dicament. Il se trouve � %NPC_WORLD(1). Faites-lui la livraison, et revenez pour toucher votre paye.")
		SAY("Enfin, voil� un runner. Apportez ce m�dicament � %NPC_NAME(1), %NPC_WORLD(1), il en a vraiment besoin. Une fois que vous avez fini, revenez ici pour toucher votre paye.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Ecoutez, la vie de %NPC_NAME(1) est entre vos mains, alors d�p�chez-vous !")
				SAY("Runner, on vient de me t�l�phoner, la livraison n'a pas encore �t� effectu�e. Quelqu'un va peut-�tre mourir � cause de vous ! Allez, d�p�chez-vous !!")
				SAY("Sauf si vous �tes une entit� divine, je vous sugg�re de livrer ces m�dicaments maintenant !")
				SAY("J'esp�re que vous savez que %NPC_NAME(1) est en train de souffrir parce que vous �tes plus lent qu'une limace !")
				ENDDIALOG()
			else
				SAY("Merci pour la livraison. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Passez une bonne journ�e.")
				SAY("Bien jou�. %NPC_NAME(1) serait mort si vous n'aviez pas �t� l�. Voil� vos %REWARD_MONEY() cr�dits, en signe de gratitude de la part du d�partement des relations publiques.")
				SAY("Vous revoil�. La livraison a �t� confirm�e, et %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Bonne journ�e.")
				SAY("%NPC_NAME(1) a appel� pour confirmer. %REWARD_MONEY() cr�dits vont �tre transf�r�s sur votre compte. Merci pour votre aide.")
				SAY("Excellent travail ! %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Ce fut un plaisir de traiter avec vous !")
				SAY("Vous avez pris votre temps. Notre patient a failli mourir. Enfin, %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Vous pouvez partir.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Allez. Allez ! Donnez-le-moi ! Comment �a, vous l'avez pas ? H�, mais je suis en train de crever, moi !!")
				SAY("Quoi ?! J'ai besoin de ces m�dicaments, enflure ! T'amuse pas � jouer avec ma vie, va me chercher ces m�dicaments en vitesse !")
				SAY("Mais pourquoi ils ont pris quelqu'un comme toi pour me donner mes m�dicaments ? D�p�che-toi, ou bien la derni�re chose que je ferai avant de crever, �a sera de te tirer une balle dans la t�te.")
				SAY("Ouais, tu te crois dans un jeu, toi ? Tu te crois dr�le ? Donne-moi mes m�dicaments rapidement, ou bien tu vas le regretter.")
				ENDDIALOG()
			else	
				SAY("Ah, mes m�dicaments. Merci beaucoup ! %NPC_NAME(0) te paiera pour la livraison.")
				SAY("C'est mes m�dicaments, �a ? Ouais ! Viens, donne-moi �a, vite ! %NPC_NAME(0) te paiera pour la livraison.")
				SAY("C'est les m�dicaments qu'envoie %NPC_NAME(0) de ProtoPharm, c'est �a ? Enfin ! Je commen�ais � m'inqui�ter. On s'occupera de ta paie au bureau.")
				SAY("T'as pris ton temps ! Donne-moi �a, vite ! %NPC_NAME(0) devrait avoir ta r�compense.")
				SAY("M�dicaments ! M�dicaments ! Ohhh, m�dicaments !! Je suis certain que %NPC_NAME(0) aura une r�compense pour toi, mais en fait je m'en fiche. M�dicaments !")
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Eh bien, ProtoPharm est une compagnie, et nous avons du travail. Si vous ne souhaitez pas travailler, je vous sugg�re de partir. Maintenant.")
		SAY("Eh bien, si vous changez d'avis, je vous attends ici.")
		SAY("Eh bien, veuillez partir. Bonne journ�e.")
		ENDDIALOG()
end
