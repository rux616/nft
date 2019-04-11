function DIALOG()

--single_ag_slang

	NODE(0) 
		SAY("H�, citoyen, vous cherchez du travail?")
		SAY("H�, runner, vous cherchez un travail facile?")
		SAY("Vous me semblez en qu�te d'un travail! J'ai quelque chose � vous proposer, �a vous int�resse?")
		
		ANSWER("Hmm, pourquoi pas. ",1)
		ANSWER("Hmm, pourquoi pas. Continuez.",1)
		ANSWER("Non merci. J'ai � faire...",21)
	NODE(1)
		SAY("Avez-vous entendu parler de la surcharge des r�seaux de Neocron? Ils perdent d'importantes quantit�s de donn�es � chaque minute. C'est pourquoi ils ont d�cid� de demander � ces citoyens d'assurer certains transferts. C'est une bonne occasion de gagner un peu d'argent. Qu'en dites-vous?")
		SAY("J'ai entendu parler d'une bonne occasion de gagner de l'argent. Ce n'est qu'une livraison, mais tant que la paye est l�, c'est ce qui compte, n'est-ce pas? Est-ce que �a peut vous int�resser?")
		
		ANSWER("Ouais.",2)
		ANSWER("Bien s�r.",2)
		ANSWER("Non, je n'en veux pas. Je vais chercher autre chose. Au revoir et merci.",20)
	NODE(2) 
		ACCEPTMISSION(0)
		SAY("Allez voir %NPC_NAME(1), � %NPC_WORLD(0). L�-bas, on vous dira ce que vous avez � faire.")
		SAY("Allez voir %NPC_NAME(1), � %NPC_WORLD(0). %NPC_NAME(1) vous en dira plus � ce sujet.")
		ENDDIALOG()

-- einstieg missions gebender npc
	
	NODE(3)
		SAY("Oui, citoyen, comment peut-on vous aider?")
		SAY("Salutations, citoyen, en quoi peut-on vous �tre utile?")
		SAY("Qu'attendez-vous de moi?")
		
		ANSWER("Je suis ici pour la livraison. Qu'est-ce que je dois faire?",1)
		ANSWER("La livraison. Je suis l� pour �a.",1)
		ANSWER("Oubliez ce que je viens de dire. Au revoir.",20)
	NODE(4)
		GIVEITEM()
		SAY("Oh, je vois. J'ai un colis urgent � faire livrer. Allez porter �a � %NPC_NAME(2), %NPC_WORLD(), et vite. Revenez une fois que vous avez fini pour toucher votre r�compense. Maintenant, filez!")
		SAY("Bien, je vois qui vous �tes. Allez porter ce paquet � %NPC_NAME(2), %NPC_WORLD(). Revenez une fois que vous avez fini pour toucher votre r�compense. D�p�chez-vous, %NPC_NAME(2) est d�j� en train de vous attendre.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
	NODE(5)	
		ISMISSIONACCOMPLISHED(1)
			if (result==0)
				SAY("Mais qu'est-ce que vous fichez ici? Je vous ai demand� de faire une livraison. Maintenant, au travail!")
				SAY("Bon dieu, mais qu'est-ce que vous faites ici? Je vous ai demand� de livrer quelque chose, il me semble. Maintenant, au travail! Et ne revenez pas avant d'en avoir fini!")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Bon travail, runner. Vous avez bien m�rit� votre r�compense. Voil� vos %REWARD_MONEY() cr�dits. Amusez-vous bien.")
				SAY("Tr�s bien, parfait. Voil� vos %REWARD_MONEY() cr�dits.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
-- packet empf�nger npc(2)
	NODE(7)
		TAKEITEM()
			if (result==0)
				SAY("O� est mon colis? On vous a demand� de me livrer quelque chose! Alors courez le chercher!")
				SAY("Vous n'avez pas mon colis? Et pourquoi? Allez le chercher tout de suite!")
				ENDDIALOG()
			else	
				SAY("Ah, voil� mon colis. Bon travail. Retournez voir %NPC_NAME(1) pour toucher votre r�compense.")
				SAY("Ah, ma livraison. Bon travail. Retournez voir %NPC_NAME(1) pour toucher votre r�compense.")
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
