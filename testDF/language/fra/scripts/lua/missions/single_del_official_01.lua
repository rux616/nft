function DIALOG()

--single_ag_slang

	NODE(0) 
		SAY("Hé, citoyen, vous cherchez du travail?")
		SAY("Hé, runner, vous cherchez un travail facile?")
		SAY("Vous me semblez en quête d'un travail! J'ai quelque chose à vous proposer, ça vous intéresse?")
		
		ANSWER("Hmm, pourquoi pas. ",1)
		ANSWER("Hmm, pourquoi pas. Continuez.",1)
		ANSWER("Non merci. J'ai à faire...",21)
	NODE(1)
		SAY("Avez-vous entendu parler de la surcharge des réseaux de Neocron? Ils perdent d'importantes quantités de données à chaque minute. C'est pourquoi ils ont décidé de demander à ces citoyens d'assurer certains transferts. C'est une bonne occasion de gagner un peu d'argent. Qu'en dites-vous?")
		SAY("J'ai entendu parler d'une bonne occasion de gagner de l'argent. Ce n'est qu'une livraison, mais tant que la paye est là, c'est ce qui compte, n'est-ce pas? Est-ce que ça peut vous intéresser?")
		
		ANSWER("Ouais.",2)
		ANSWER("Bien sûr.",2)
		ANSWER("Non, je n'en veux pas. Je vais chercher autre chose. Au revoir et merci.",20)
	NODE(2) 
		ACCEPTMISSION(0)
		SAY("Allez voir %NPC_NAME(1), à %NPC_WORLD(0). Là-bas, on vous dira ce que vous avez à faire.")
		SAY("Allez voir %NPC_NAME(1), à %NPC_WORLD(0). %NPC_NAME(1) vous en dira plus à ce sujet.")
		ENDDIALOG()

-- einstieg missions gebender npc
	
	NODE(3)
		SAY("Oui, citoyen, comment peut-on vous aider?")
		SAY("Salutations, citoyen, en quoi peut-on vous être utile?")
		SAY("Qu'attendez-vous de moi?")
		
		ANSWER("Je suis ici pour la livraison. Qu'est-ce que je dois faire?",1)
		ANSWER("La livraison. Je suis là pour ça.",1)
		ANSWER("Oubliez ce que je viens de dire. Au revoir.",20)
	NODE(4)
		GIVEITEM()
		SAY("Oh, je vois. J'ai un colis urgent à faire livrer. Allez porter ça à %NPC_NAME(2), %NPC_WORLD(), et vite. Revenez une fois que vous avez fini pour toucher votre récompense. Maintenant, filez!")
		SAY("Bien, je vois qui vous êtes. Allez porter ce paquet à %NPC_NAME(2), %NPC_WORLD(). Revenez une fois que vous avez fini pour toucher votre récompense. Dépêchez-vous, %NPC_NAME(2) est déjà en train de vous attendre.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
	NODE(5)	
		ISMISSIONACCOMPLISHED(1)
			if (result==0)
				SAY("Mais qu'est-ce que vous fichez ici? Je vous ai demandé de faire une livraison. Maintenant, au travail!")
				SAY("Bon dieu, mais qu'est-ce que vous faites ici? Je vous ai demandé de livrer quelque chose, il me semble. Maintenant, au travail! Et ne revenez pas avant d'en avoir fini!")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Bon travail, runner. Vous avez bien mérité votre récompense. Voilà vos %REWARD_MONEY() crédits. Amusez-vous bien.")
				SAY("Très bien, parfait. Voilà vos %REWARD_MONEY() crédits.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
-- packet empfänger npc(2)
	NODE(7)
		TAKEITEM()
			if (result==0)
				SAY("Où est mon colis? On vous a demandé de me livrer quelque chose! Alors courez le chercher!")
				SAY("Vous n'avez pas mon colis? Et pourquoi? Allez le chercher tout de suite!")
				ENDDIALOG()
			else	
				SAY("Ah, voilà mon colis. Bon travail. Retournez voir %NPC_NAME(1) pour toucher votre récompense.")
				SAY("Ah, ma livraison. Bon travail. Retournez voir %NPC_NAME(1) pour toucher votre récompense.")
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
