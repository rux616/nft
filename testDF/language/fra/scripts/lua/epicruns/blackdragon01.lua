--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, MANUEL50
--1,D, WISEGUY 100
--2,D,
--3
--
--Startnode, Person
--0, WISEGUY
--50, MANUEL 1649
--100, WISEGUY
--150, LUCY 1670
--200, LEONE 1671
--250, LUCKY 1672
--
--Items
--Drogenpaket
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1649	1670	1671	1672	3	0	0	0	3	4	1	0
--START	START	START	START
--50	150	200	250
--


function DIALOG()
--------------------------------------------------------------------
--Soldat
--0
	
	NODE(0)
		SAY("Si tu t'imagines que ça va te tomber tout cuit dans la bouche, tire-toi. Tu vas bosser dur comme tout le monde. Et ça se bouscule, crois-moi.")

		ANSWER("Dis-moi un peu ce que vous faites ici, je vais pas commencer à bosser pour quelqu'un que je connais pas.",1)
	NODE(1)
		SAY("Déjà, tu vas commencer par apprendre le respect, on te prendra plus au sérieux. Pourquoi faut toujours que les bleus aient aucune éducation, bordel?!")

		ANSWER("Pas la peine de me parler comme ça, je comprends très bien quand on me crie pas dessus.",2)
	NODE(2)
		SAY("Bon, d'accord. J'essaie pas de te mettre dehors, mais avec tous ces Tsunami, on sait jamais à qui on a affaire. Alors je vais te demander de faire un peu tes preuves pour commencer. Ensuite, je répondrai à tes questions.")

		ANSWER("Pas de souci, je suis prêt à tout.",3)
	NODE(3)
		SAY("Si tu agis tout le temps comme ça, tu iras loin, c'est moi qui te le dis. Mais rappelle-toi toujours notre première règle, sinon tu feras pas long feu ici.")

		ANSWER("J'écoute...",4)
	NODE(4)
		GIVEITEM(9460)
--DRUGPAKET
		SAY("Pas de regrets et pas de pitié! C'est mauvais pour les affaires, compris? Maintenant que tu connais les subtilités, tu vas nous faire une petite livraison. Manuel est un de nos dealers, et il commence à manquer de stock. Tu vas l'approvisionner en lui portant ça au secteur 08. Il se trouve dans une des allées. Ensuite, tu reviens me voir. Sauf si bien sûr tu veux causer un peu aux gens du coin d'abord. Mais attention, t'avise pas de t'approcher de Lucy, t'as compris. Parle plutôt à Leone ou Lucky si tu veux rencontrer des gens bien.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		


--------------------------------------------------------------------
-- MANUEL
--50
	NODE(50)
		SAY("Oui, quoi? Tu veux essayer notre toute dernière marchandise? Je peux te trouver ce que tu veux, et même des trucs spéciaux si c'est ce que tu recherches.")

		ANSWER("Non merci. Mais j'ai une livraison pour toi. C'est une sorte de test, apparemment, tu sais comment ça se passe...",51)
	NODE(51)
		TAKEITEM(9460)
--Drogenpaket
		if(result==0)then
			SAY("Si tu commences à jouer au con avec moi, on va pas s'entendre. Reviens quand tu auras le paquet, j'ai pas de temps à perdre.")
			ENDDIALOG()
		else
			SAY("Un test? Je préférerais un bon paquet de fric, plutôt. C'est un sale boulot, ce que je fais, et si je fais ça pour encore vingt ans, je crois que je vais en crever.")

			ANSWER("Vingt ans? Ca fait un paquet! Tu dois connaître plein de trucs, non?",52)
		end
	NODE(52)
		SAY("Tu m'étonnes! Après tout, c'est là que j'ai grandi. Tiens, un conseil : évite les Tsunami, sauf si tu es en position avantageuse par rapport à eux. Et va causer à Lucky et Leone, c'est eux qui gèrent le business dans le quartier. Enfin, si on compte pas Gecko évidemment. Lui, tu auras de la chance si tu réussis à le croiser. Il traîne souvent avec sa copine, Lucy. T'avise pas de lui faire du gringue, elle est déjà maquée. Et je pense que Lucky serait pas d'accord non plus. Mais tiens, pendant que t'es là, j'ai un service à te demander.")

		ANSWER("Dis toujours...",53)
	NODE(53)
		SAY("C'est le bordel ici en ce moment, personne n'achète plus rien, et les finances sont pas roses. J'ai rien bouffé depuis des jours à cause de ce merdier. J'ai besoin de pognon. 1000 creds, ça serait bien pour m'aider à remonter la pente. Allez, sois chic, aide un vieux pote...")

		ANSWER("D'accord, mais je peux pas te donner plus que ça.",54)
		ANSWER("Pas question que je joue les nounous pour toi, tu m'entends? Démerde-toi tout seul!",55)
	NODE(54)
		SAY("T'as vraiment rien compris à la vie, toi! Tu ferais mieux d'aller chez les Anges Déchus, parce que t'es complètement à la masse. T'as foiré le test, tocard!")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()
		
	NODE(55)
		SAY("Je suis lourd quand je me mets à chialer, hein? Allez, félicitations, t'as passé le test. On aime les salopards dans ton genre, qui se laissent pas marcher sur les pieds!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()
	NODE(56)
		SAY("Désolé, pas de seconde chance. Retourne d'où tu viens.")
		ENDDIALOG()

	NODE(57)
		SAY("Va voir le capo qui t'a envoyé, dis-lui que tu as passé le test.")
		ENDDIALOG()



--------------------------------------------------------------------
--WISEGUY
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Va d'abord parler à Manuel. S'il t'envoie chier, tu vas devoir tout recommencer depuis le début.")
			ENDDIALOG()
		else
			SAY("Bien joué, t'as passé le test. On diraît que la première règle t'est bien rentrée dans le crâne.")

			ANSWER("Ouais. Alors, j'ai une récompense, un truc dans le genre?",101)
		end
	NODE(101)
		GIVEMONEY(1000)
		SAY("Tu te crois fûté? Tiens, voilà 1000 crédits, parce que je suis bon prince. Va les claquer quelque part. Si t'es vraiment malin, tu te feras encore un paquet de blé avec nous. Reviens quand tu te sentiras prêt, actuellement je pense pas qu'on puisse faire quelque chose de plus compliqué ensemble. (prochaine mission au niveau 20)")

		EPICRUNFINISHED(9,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

		

--------------------------------------------------------------------
--Lucy
--150
	NODE(150)
		SAY("Je ne te reconnais pas. Tu es nouveau? Comme c'est triste. On reprendra cette conversation lorsque tu seras riche et célèbre.")

		ANSWER("Manuel m'a parlé de toi. J'ai de l'ambition, je vais monter très haut. Un peu de patience, tu vas voir.",151)
	NODE(151)
		SAY("Tu n'as pas idée du nombre de fois que j'ai pu entendre ces conneries. Si tu as des tripes, essaie de devenir ami avec Gecko. C'est le bras droit de Trond, c'est quelqu'un de très puissant. Maximilian Trond, c'est un peu notre dieu. Estime-toi heureux si tu le croises un jour.")
		SETNEXTDIALOGSTATE(152)
		ENDDIALOG()
	NODE(152)
		SAY("J'aimerais bien pouvoir causer plus souvent aux autres, mais Gecko est facilement jaloux.")

		ENDDIALOG()
--------------------------------------------------------------------
--Leone
--200

	NODE(200)
		SAY("Qu'est-ce que tu me veux? J'ai rien à dire à un microbe dans ton genre. J'ai pas envie de finir comme Wan Tokai. Tu sais comment il a fini? Mort!")
	
		ANSWER("T'en fais pas, je compte pas rester un microbe toute ma vie. Qui c'est, Wan?",201)
	NODE(201)
		SAY("Tu connais même pas Wan Tokai, alias Le Dragon? C'est lui qui a donné son nom à l'organisation, putain! T'es vraiment un tocard, tu ferais mieux de te barrer vite fait.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Faut te le dire en quelle langue? Suis les règles, ou crève. Pigé?")
		ENDDIALOG()	

--------------------------------------------------------------------
--Lucky
--250
	NODE(250)
		SAY("Tiens, une nouvelle tête! Tu me veux quoi? Je t'ai jamais vu dans le coin. Je vais pas te faire de cadeau, mais rappelle-toi que les meilleures combines pour se faire du pognon ici, c'est les appartements et les drogues! Si tu cherches du boulot, va demander à un des Wiseguys.")
	
		SETNEXTDIALOGSTATE(251)
		ENDDIALOG()
	NODE(251)
		SAY("Entraîne-toi, on verra ensuite.")
	
		ENDDIALOG()
end