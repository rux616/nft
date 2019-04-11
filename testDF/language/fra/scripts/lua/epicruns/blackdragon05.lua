--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, LUCKY 100
--1,LOOT, HUNG 200
--2,D, LUCY 250
--3
--
--Startnode, Person
--0, WISEGUY
--50, LEONE
--100, LUCKY 1672
--150, REGY 1676
--200, HUNG 1677
--250, LUCY 1670
--
--Items
--DROGENPAKET HUNG 9461
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1672	1676	1677	1670	3	0	0	0	10	2	?	0	3	3	2	0	
--START	START	START	START
--100	150	200	250
--

function DIALOG()

--------------------------------------------------------------------
--WISEGUY
--0
	NODE(0)
		SAY("Leone veut te parler. On commence à parler de toi partout, alors fais attention, c'est pas toujours bon signe. Fais attention à ce que tu dis, Lucky est drogué jusqu'aux yeux, et il peut partir au quart de tour.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Leone t'a donné un travail à faire, pourquoi tu ne vas pas terminer ce que tu as commencé??")
		ENDDIALOG()

--------------------------------------------------------------------
--LEONE
--50
	NODE(50)
		SAY("Je dois te dire franchement, depuis que tu as mis les pieds ici, je sais que je t'aime pas. Mais je sais encore me rendre compte quand un outil peut m'être utile. Pour faire court, Gecko aimerait que tu lui rendes un service. Comme tu sais, Lucky se tape Lucy, et Gecko est pas jouasse du tout. Gecko est plutôt vieille école, et il veut donner à Lucky un avertissement avant de passer à la vitesse supérieure.")

		ANSWER("Le code d'honneur des voleurs, hein? Quelle connerie...",51)
	NODE(51)
		SAY("Va voir Lucky, et assure-toi qu'il sache que Lucky est la poule de Gecko et de personne d'autre. Tu peux le tabasser un peu une fois que tu lui as expliqué, pour t'assurer que c'est bien rentré dans sa petite tête. C'est moi qui te filerai ta récompense, alors je te conseille de mieux me parler que la dernière fois. Et je t'arrangerai une faveur de la part de Gecko.")
		SETNEXTDIALOGSTATE(52)
		ENDDIALOG()
	NODE(52)
		SAY("Alors, t'as fait la commission à Lucky?")
		ENDDIALOG()


--------------------------------------------------------------------
--LUCKY
--100
	NODE(100)
		SAY("On se connaît? Ta tête me dit rien... Euh, attends... Je... non, je me souviens plus. J'ai la gueule dans le cul aujourd'hui. T'es qui?")

		ANSWER("'Ne pas dépasser la dose prescrite...' On t'a pas appris ça à l'école?",101)
	NODE(101)
		SAY("Hein, quoi? Des doses? Le livreur est arrivé? Nan, Regie m'aurait déjà prévenu. Nan? Un arrivage direct de Neocron. Des kilos de dope. Ca me rendrait un sacré coup de main.")

		ANSWER("Lucky, tu m'écoutes quand je te parle?",102)
	NODE(102)
		SAY("Pardon, tu disais? Je pense que j'ai pris une dose de trop, je sens plus mes pattes... Qu'est-ce que tu...")

		ANSWER("Je vais aller voir ce Regie et lui prendre ces drogues dont tu parles, ça me paraît un bon plan.",103)
	NODE(103)
		SAY("Regie? Si tu veux lui causer, il est quelque part dans le secteur 08. Ouh putain mon crâne... Il doit pouvoir te renseigner. Moi faut que j'aille m'allonger un peu...")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

--MISSING

	NODE(104)
		SAY("Regie est dans le secteur 8, près de l'entrée principale. Héé, tu m'avais caché que t'étais un ange! Jolies ailes...")
		ENDDIALOG()

--------------------------------------------------------------------
--REGY
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je suis pas ici pour m'amuser, tu sais? J'ai du travail, et tout le monde en bénéficie. Je m'occupe des arrivages de drogues.")
			ENDDIALOG()
		else
			SAY("Salut runner. Tu t'es perdu?")

			ANSWER("Très drôle. C'est Lucky qui m'envoie. Il est encore défoncé au dernier degré.",151)
		end
	NODE(151)
		SAY("C'est tout lui... Mais je peux rien faire pour l'aider. Il y a autre chose, ou tu voulais juste me dire ça?")

		ANSWER("En fait, je dois prendre la toute dernière livraison pour lui transmettre.",152)
	NODE(152)
		SAY("Ah, t'es là pour la livraison? Désolé, t'arrives trop tard, j'ai plus rien.")

		ANSWER("Qu'est-ce que ça veut dire?! Ca disparaît pas comme ça, un tas de drogues! Qu'est-ce qui s'est passé?",153)
	NODE(153)
		SAY("Tu me prends pour un con? Evidemment qu'elles ont pas disparu. J'ai juste dit que j'en avais plus! Les drogues, ou plutôt les matières premières, elles viennent directement de Neocron. Habituellement, on en perd un peu pendant le transport. Attaques mutantes, convois qui se perdent, trucs dans le genre. Mais cette fois c'est différent.")

		ANSWER("Les drogues viennent de Neocron directement?",154)
	NODE(154)
		SAY("En partie, ouais. Et quand le convoi se rapproche du Dôme, parfois les Tsunami se pointent et l'attaquent.")

		ANSWER("encore les Tsunami? Quand est-ce qu'on les butera jusqu'au dernier, ceux-là? Où est-ce qu'ils sont passés?",155)
	NODE(155)
		SAY("J'en sais rien. J'étais pas là quand ça s'est passé. Un de nos gars m'a dit que Myaki Hung était dans le groupe. C'est un mac bien connu qui travaille pour Monsun. Pourquoi tu veux savoir ça?")

		ANSWER("Je veux récupérer ces drogues, t'as pas encore compris?",156)
	NODE(156)
		SAY("Les drogues appartiennent à Lucky. Penses-y avant de les chourer à ce Tsunami.")

		ANSWER("Lucky est plein de came jusqu'aux yeux en ce moment, et il va mettre longtemps à redescendre. Mais c'est à Lucy que je donnerai cette dope, pas à Lucky.",157)
	NODE(157)
		SAY("Comme tu veux, mais à mon avis tu vas te faire flinguer. Si tu veux un conseil... Bute d'abord Hung, et prend tout ce qu'il a sur lui. Il est dans le secteur 07. Mais fais gaffe, c'est un secteur Tsunami.")
		SETNEXTDIALOGSTATE(158)
		ENDDIALOG()

	NODE(158)
		SAY("Hung? Tu le trouveras dans le secteur 07.")
		SETNEXTDIALOGSTATE(159)
		ENDDIALOG()
	
	NODE(159)
		SAY("Hé, petite tête, Hung est dans le secteur 07, tu te souviens? Maintenant casse-toi!")
		ENDDIALOG()
		
--------------------------------------------------------------------
--HUNG
--200
--SPIELER LOOTED HUNG
	NODE(200)
		SAY("Quitte notre territoire tout de suite, ou tu vas souffrir, t'as compris?")

		ENDDIALOG()
--------------------------------------------------------------------
--LUCY
--250

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then

			SAY("Avec ta réputation, tu ferais mieux de garder tes distances.")
			ENDDIALOG()

		else
			SAY("Qu'est-ce que tu veux? On entend beaucoup parler de toi ces temps-ci.")

			ANSWER("C'est à dire?",251)
		end
	NODE(251)
		SAY("Par exemple, le fait que tes actions soient imprévisibles. J'aime les gens comme toi. Dis-moi ce que je peux faire pour toi.")

		ANSWER("J'ai une proposition. Je pense te donner ce paquet de drogues, et en échange tu me paies. Qu'est-ce que tu en dis?",252)
	NODE(252)
		SAY("Je sais pas trop... Où est-ce que tu as eu toutes ces drogues? Habituellement, ça se trouve pas par terre, ce genre de choses... Et qu'est-ce que tu as en tête comme tarifs?")

		ANSWER("Je suis du genre raisonnable, on peut marchander. Mais je dirais au moins 50.000.",253)
	NODE(253)
		SAY("Ca m'a l'air d'être de la bonne qualité. Je prends, et si tu en trouves d'autres je les prendrai aussi.")

		ANSWER("Excellent, j'espérais que ça se passerait comme ça.",254)
	NODE(254)
		TAKEITEM(9461)
--DROGENPAKET
		if(result==0)then
			SAY("Sans drogues, pas de marché.")
			ENDDIALOG()
		else
			GIVEMONEY(50000)
			SAY("La prochaine fois, on parlera de quelques plans pour que tu gagnes plus de crédits. Mais pas pour l'instant, chaque chose en son temps. (prochaine mission au niveau 45)")
			ACTIVATEDIALOGTRIGGER(2)
			EPICRUNFINISHED(9,4)
			ENDDIALOG()
		end

end