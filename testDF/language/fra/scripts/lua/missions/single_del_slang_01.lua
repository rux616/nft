function DIALOG()

--single_ag_slang

	NODE(0) 
		SAY("H� toi, tu veux te faire du fric rapidement?")
		SAY("Tu veux te faire du fric rapidement?")
		SAY("T'as l'air de quelqu'un qui cherche un job!")
		
		ANSWER("Hmm, du fric, bonne id�e.",1)
		ANSWER("Hmm, tu m'int�resses. Continue.",1)
		ANSWER("D�gage. J'ai � faire...",21)
	NODE(1)
		SAY("T'es au courant que l'r�seau de Neocron est satur�? Ils perdent des chi�es de donn�es � chaque minute, � c'qu'on dit. Alors ils ont pens� embaucher des gens pour transf�rer les donn�es. Ca pourrait �tre ta chance de te faire un peu de fric facile. Qu'es-t'en dis?")
		SAY("J'ai entendu parler d'une bonne combine pour se faire du fric. C'est nul, c'est une livraison, mais tant que �a rapporte, hein? Ca te plairait?")
		
		ANSWER("Ouais, du fric facile, �a me va.",2)
		ANSWER("Ouais, pourquoi pas.",2)
		ANSWER("Non, �a me convient pas. Je cherche autre chose. Au revoir et merci.",20)
	NODE(2) 
		ACCEPTMISSION(0)
		SAY("Va voir %NPC_NAME(1) � %NPC_WORLD(0). L�-bas, on te dire c'que tu dois faire.")
		SAY("Va voir %NPC_NAME(1) � %NPC_WORLD(0). %NPC_NAME(1) te dira quoi faire ensuite.")
		ENDDIALOG()

-- einstieg missions gebender npc
	
	NODE(3)
		SAY("Yo Runner, quoi d'neuf?")
		SAY("'lut Runner, �a va?")
		SAY("Tu me veux quoi, toi?")
		
		ANSWER("Je suis l� pour la livraison. Qu'est-ce que je dois faire?",1)
		ANSWER("Je suis l� pour le job. La livraison.",1)
		ANSWER("Laisse tomber. Bye.",20)
	NODE(4)
		GIVEITEM()
		SAY("Oh, ouais. V'l� un colis avec des donn�es urgentes. Am�ne �a � %NPC_NAME(2), %NPC_WORLD(), et tra�ne pas. Reviens une fois que t'as fini pour avoir ton fric. Et maintenant, disparais!")
		SAY("Ok, je vois, c'est toi. Ok, bouge ton cul et va donner �a � %NPC_NAME(2), %NPC_WORLD(). Reviens prendre ton fric apr�s. Allez, t'attends quoi? %NPC_NAME(2) est d�j� en train de t'attendre!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
	NODE(5)	
		ISMISSIONACCOMPLISHED(1)
			if (result==0)
				SAY("Qu'est-ce que tu fais encore ici? Je t'ai pas demand� quelque chose? Allez, va faire ton job.")
				SAY("Bon Dieu, qu'est-ce que tu fiches ici?! Je t'avais pas demand� quelque chose? Allez, va faire ton job, et reviens pas me voir avant!")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Yo, bon travail, Runner. T'as bien gagn� ton fric. Tiens, voil� tes %REWARD_MONEY() cr�dits. Amuse-toi bien. Maintenant d�gage, j'ai des trucs � faire.")
				SAY("Super, bien jou�. Voil� tes %REWARD_MONEY() cr�dits. Bon, maintenant j'ai des trucs � faire, laisse-moi tranquille!") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
-- packet empf�nger npc(2)
	NODE(7)
		TAKEITEM()
			if (result==0)
				SAY("Ben mon colis, il est o�? Tu devais me l'apporter! Allez, va le chercher en vitesse avant que je m'�nerve!")
				SAY("H�, il est o� mon colis? T'as int�r�t � revenir avec! Maintenant d�gage!")
				ENDDIALOG()
			else	
				SAY("Ah, mon colis. Bon travail. Maintenant, va voir %NPC_NAME(1) pour toucher ta r�compense.")
				SAY("Ah, une livraison. Bon travail. Maintenant, va voir %NPC_NAME(1) pour toucher ta r�compense.")
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
