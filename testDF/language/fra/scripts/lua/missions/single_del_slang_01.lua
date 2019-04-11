function DIALOG()

--single_ag_slang

	NODE(0) 
		SAY("Hé toi, tu veux te faire du fric rapidement?")
		SAY("Tu veux te faire du fric rapidement?")
		SAY("T'as l'air de quelqu'un qui cherche un job!")
		
		ANSWER("Hmm, du fric, bonne idée.",1)
		ANSWER("Hmm, tu m'intéresses. Continue.",1)
		ANSWER("Dégage. J'ai à faire...",21)
	NODE(1)
		SAY("T'es au courant que l'réseau de Neocron est saturé? Ils perdent des chiées de données à chaque minute, à c'qu'on dit. Alors ils ont pensé embaucher des gens pour transférer les données. Ca pourrait être ta chance de te faire un peu de fric facile. Qu'es-t'en dis?")
		SAY("J'ai entendu parler d'une bonne combine pour se faire du fric. C'est nul, c'est une livraison, mais tant que ça rapporte, hein? Ca te plairait?")
		
		ANSWER("Ouais, du fric facile, ça me va.",2)
		ANSWER("Ouais, pourquoi pas.",2)
		ANSWER("Non, ça me convient pas. Je cherche autre chose. Au revoir et merci.",20)
	NODE(2) 
		ACCEPTMISSION(0)
		SAY("Va voir %NPC_NAME(1) à %NPC_WORLD(0). Là-bas, on te dire c'que tu dois faire.")
		SAY("Va voir %NPC_NAME(1) à %NPC_WORLD(0). %NPC_NAME(1) te dira quoi faire ensuite.")
		ENDDIALOG()

-- einstieg missions gebender npc
	
	NODE(3)
		SAY("Yo Runner, quoi d'neuf?")
		SAY("'lut Runner, ça va?")
		SAY("Tu me veux quoi, toi?")
		
		ANSWER("Je suis là pour la livraison. Qu'est-ce que je dois faire?",1)
		ANSWER("Je suis là pour le job. La livraison.",1)
		ANSWER("Laisse tomber. Bye.",20)
	NODE(4)
		GIVEITEM()
		SAY("Oh, ouais. V'là un colis avec des données urgentes. Amène ça à %NPC_NAME(2), %NPC_WORLD(), et traîne pas. Reviens une fois que t'as fini pour avoir ton fric. Et maintenant, disparais!")
		SAY("Ok, je vois, c'est toi. Ok, bouge ton cul et va donner ça à %NPC_NAME(2), %NPC_WORLD(). Reviens prendre ton fric après. Allez, t'attends quoi? %NPC_NAME(2) est déjà en train de t'attendre!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
	NODE(5)	
		ISMISSIONACCOMPLISHED(1)
			if (result==0)
				SAY("Qu'est-ce que tu fais encore ici? Je t'ai pas demandé quelque chose? Allez, va faire ton job.")
				SAY("Bon Dieu, qu'est-ce que tu fiches ici?! Je t'avais pas demandé quelque chose? Allez, va faire ton job, et reviens pas me voir avant!")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Yo, bon travail, Runner. T'as bien gagné ton fric. Tiens, voilà tes %REWARD_MONEY() crédits. Amuse-toi bien. Maintenant dégage, j'ai des trucs à faire.")
				SAY("Super, bien joué. Voilà tes %REWARD_MONEY() crédits. Bon, maintenant j'ai des trucs à faire, laisse-moi tranquille!") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
-- packet empfänger npc(2)
	NODE(7)
		TAKEITEM()
			if (result==0)
				SAY("Ben mon colis, il est où? Tu devais me l'apporter! Allez, va le chercher en vitesse avant que je m'énerve!")
				SAY("Hé, il est où mon colis? T'as intérêt à revenir avec! Maintenant dégage!")
				ENDDIALOG()
			else	
				SAY("Ah, mon colis. Bon travail. Maintenant, va voir %NPC_NAME(1) pour toucher ta récompense.")
				SAY("Ah, une livraison. Bon travail. Maintenant, va voir %NPC_NAME(1) pour toucher ta récompense.")
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
