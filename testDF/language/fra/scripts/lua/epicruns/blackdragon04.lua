--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,PvP, LUCKY 50 (2 Tsunamis)
--1,kill, MIETERVORSTAND PAIN
--2,D, Lucky 50
--3
--
--Startnode, Person
--0, WISEGUY
--50, LUCKY 1672
--100, PAIN
--150, 
--200,
--250,
--Mietervorstand Pain 1675

--Items
--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1672	1675			9	8	2	10	1	1	0	0	0	0	0	0	0	0	0	
--START	START	START	START
--50	100	
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("Ecoute. Lucky sait que tu l'as doublé. T'es grillé avec lui, et malgré ça, il a demandé à te parler. T'as une veine de cocu, c'est moi qui t'le dis. Si tu m'avais fait ça à moi, tu serais déjà en train de nourrir les rats.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("Lucky ne va pas t'attendre toute la journée. Si j'étais toi, je le pousserais pas à bout.")

		ENDDIALOG()

--------------------------------------------------------------------
--LUCKY
--50
	NODE(50)
		SAY("Pourquoi tu m'as fait un coup pareil? Je pensais qu'on était potes! Je t'avais demandé de buter Leone, et il se passe quoi? Rien!")

		ANSWER("J'ai eu un empêchement.",51)
	NODE(51)
		SAY("Arrête tes excuses bidon. T'as de la chance que j'aie pas décidé de te faire tuer. Mais oublions ça quelques minutes, il y a une urgence. C'est encore ce clan Tsunami, les Monsun. Ils recommencent à chercher la merde, ils veulent pas quitter leurs appartements. C'est un bordel sans nom, et je pense que je pourrai pas régler ça tout seul.")

		ANSWER("Je pourrais peut-être te donner un coup de main. Si tu paies, bien sûr.",52)
	NODE(52)
		SAY("D'accord, on s'occupera de Leone plus tard. D'abord, on va commencer à faire chier Tsunami. De ton côté, tu vas flinguer deux de leurs runners, ce sont eux les responsables de tout ce merdier. Pas de gardes, pas de macs ou d'autres guignols. Juste des runners. On veut pas que Tsunami comprenne immédiatement ce qu'on est en train de goupiller. Compris? Allez, vas-y.")

		SETNEXTDIALOGSTATE(53)
		ENDDIALOG()

--PvP ZWEI TSUNAMIS
	NODE(53)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("T'as certainement pas eu le temps de tuer un Tsunami. T'es revenu bien trop vite.")
			ENDDIALOG()
		else
			SAY("Beau travail. Ca devrait les stopper. Il faut absolument gagner du temps sur eux pas tous les moyens, ça vaut le coup.")

			ANSWER("Ces Tsunami n'ont pas fait long feu, c'était de la rigolade.",54)
		end
	NODE(54)
		SAY("Bien, alors tu n'auras aucun problème avec cette mission. Va voir le représentant de l'association des locataires, et apprends-lui ce que c'est que d'avoir mal. J'espère que tu sais comment t'y prendre... Non, encore mieux, tue-le tout de suite, sans dire un mot! Ca fera son petit effet chez ces branquignols.")

		ANSWER("Tu sais choisir tes mots, Lucky. C'est comme si c'était fait.",55)
	NODE(55)
		SAY("Assure-toi que ces types décampent de l'immeuble. Le responsable des logements doit être dans le secteur 06.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()

--SPIELER KILL MIETERVORSTAND

	NODE(56)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Tant que le responsable de l'association est toujours en vie, je peux pas mettre la main sur ces appartements. Et j'en ai besoin, tu comprends? Alors va me nettoyer ça en vitesse.")
			ENDDIALOG()
		else
			SAY("T'as déjà fini? Tu parles d'une coincidence! Devine ce que j'ai entendu dire pendant que t'étais parti!")

			ANSWER("Aucune idée, mais je sens que je vais l'apprendre dans quelques secondes.",57)
		end
	NODE(57)
		SAY("J'ai appris que tu avais causé avec Leone et que tu avais essayé de me faire chanter. Maintenant, Gecko est furieux, et tout ça c'est de ta faute. Tu sais que j'ai été très patient avec toi. Mais décidément, t'as poussé le bouchon trop loin (prochaine mission au niveau 40)")

		ANSWER("C'est une menace?",58)
	NODE(58)
		SAY("...")

		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(9,3)
		ENDDIALOG()

--------------------------------------------------------------------
--PAIN
--100
	NODE(100)
		SAY("Le Dragon t'envoie pour déposer le chèque?")

		ANSWER("En fait...",101)
	NODE(101)
		SAY("Excellent, ces problèmes n'ont que trop duré, nous allons résoudre ça aussi rapidement que possible.")

		ANSWER("C'est bien gentil, tout ça, mais Lucky m'a envoyé pour te flinguer.",102)
	NODE(102)
		SAY("Si tu fais ça, tu vas le regretter, l'association ne baissera pas les bras!")
		ENDDIALOG()


end