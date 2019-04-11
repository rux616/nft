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
		SAY("Leone veut te parler. On commence � parler de toi partout, alors fais attention, c'est pas toujours bon signe. Fais attention � ce que tu dis, Lucky est drogu� jusqu'aux yeux, et il peut partir au quart de tour.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Leone t'a donn� un travail � faire, pourquoi tu ne vas pas terminer ce que tu as commenc�??")
		ENDDIALOG()

--------------------------------------------------------------------
--LEONE
--50
	NODE(50)
		SAY("Je dois te dire franchement, depuis que tu as mis les pieds ici, je sais que je t'aime pas. Mais je sais encore me rendre compte quand un outil peut m'�tre utile. Pour faire court, Gecko aimerait que tu lui rendes un service. Comme tu sais, Lucky se tape Lucy, et Gecko est pas jouasse du tout. Gecko est plut�t vieille �cole, et il veut donner � Lucky un avertissement avant de passer � la vitesse sup�rieure.")

		ANSWER("Le code d'honneur des voleurs, hein? Quelle connerie...",51)
	NODE(51)
		SAY("Va voir Lucky, et assure-toi qu'il sache que Lucky est la poule de Gecko et de personne d'autre. Tu peux le tabasser un peu une fois que tu lui as expliqu�, pour t'assurer que c'est bien rentr� dans sa petite t�te. C'est moi qui te filerai ta r�compense, alors je te conseille de mieux me parler que la derni�re fois. Et je t'arrangerai une faveur de la part de Gecko.")
		SETNEXTDIALOGSTATE(52)
		ENDDIALOG()
	NODE(52)
		SAY("Alors, t'as fait la commission � Lucky?")
		ENDDIALOG()


--------------------------------------------------------------------
--LUCKY
--100
	NODE(100)
		SAY("On se conna�t? Ta t�te me dit rien... Euh, attends... Je... non, je me souviens plus. J'ai la gueule dans le cul aujourd'hui. T'es qui?")

		ANSWER("'Ne pas d�passer la dose prescrite...' On t'a pas appris �a � l'�cole?",101)
	NODE(101)
		SAY("Hein, quoi? Des doses? Le livreur est arriv�? Nan, Regie m'aurait d�j� pr�venu. Nan? Un arrivage direct de Neocron. Des kilos de dope. Ca me rendrait un sacr� coup de main.")

		ANSWER("Lucky, tu m'�coutes quand je te parle?",102)
	NODE(102)
		SAY("Pardon, tu disais? Je pense que j'ai pris une dose de trop, je sens plus mes pattes... Qu'est-ce que tu...")

		ANSWER("Je vais aller voir ce Regie et lui prendre ces drogues dont tu parles, �a me para�t un bon plan.",103)
	NODE(103)
		SAY("Regie? Si tu veux lui causer, il est quelque part dans le secteur 08. Ouh putain mon cr�ne... Il doit pouvoir te renseigner. Moi faut que j'aille m'allonger un peu...")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

--MISSING

	NODE(104)
		SAY("Regie est dans le secteur 8, pr�s de l'entr�e principale. H��, tu m'avais cach� que t'�tais un ange! Jolies ailes...")
		ENDDIALOG()

--------------------------------------------------------------------
--REGY
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je suis pas ici pour m'amuser, tu sais? J'ai du travail, et tout le monde en b�n�ficie. Je m'occupe des arrivages de drogues.")
			ENDDIALOG()
		else
			SAY("Salut runner. Tu t'es perdu?")

			ANSWER("Tr�s dr�le. C'est Lucky qui m'envoie. Il est encore d�fonc� au dernier degr�.",151)
		end
	NODE(151)
		SAY("C'est tout lui... Mais je peux rien faire pour l'aider. Il y a autre chose, ou tu voulais juste me dire �a?")

		ANSWER("En fait, je dois prendre la toute derni�re livraison pour lui transmettre.",152)
	NODE(152)
		SAY("Ah, t'es l� pour la livraison? D�sol�, t'arrives trop tard, j'ai plus rien.")

		ANSWER("Qu'est-ce que �a veut dire?! Ca dispara�t pas comme �a, un tas de drogues! Qu'est-ce qui s'est pass�?",153)
	NODE(153)
		SAY("Tu me prends pour un con? Evidemment qu'elles ont pas disparu. J'ai juste dit que j'en avais plus! Les drogues, ou plut�t les mati�res premi�res, elles viennent directement de Neocron. Habituellement, on en perd un peu pendant le transport. Attaques mutantes, convois qui se perdent, trucs dans le genre. Mais cette fois c'est diff�rent.")

		ANSWER("Les drogues viennent de Neocron directement?",154)
	NODE(154)
		SAY("En partie, ouais. Et quand le convoi se rapproche du D�me, parfois les Tsunami se pointent et l'attaquent.")

		ANSWER("encore les Tsunami? Quand est-ce qu'on les butera jusqu'au dernier, ceux-l�? O� est-ce qu'ils sont pass�s?",155)
	NODE(155)
		SAY("J'en sais rien. J'�tais pas l� quand �a s'est pass�. Un de nos gars m'a dit que Myaki Hung �tait dans le groupe. C'est un mac bien connu qui travaille pour Monsun. Pourquoi tu veux savoir �a?")

		ANSWER("Je veux r�cup�rer ces drogues, t'as pas encore compris?",156)
	NODE(156)
		SAY("Les drogues appartiennent � Lucky. Penses-y avant de les chourer � ce Tsunami.")

		ANSWER("Lucky est plein de came jusqu'aux yeux en ce moment, et il va mettre longtemps � redescendre. Mais c'est � Lucy que je donnerai cette dope, pas � Lucky.",157)
	NODE(157)
		SAY("Comme tu veux, mais � mon avis tu vas te faire flinguer. Si tu veux un conseil... Bute d'abord Hung, et prend tout ce qu'il a sur lui. Il est dans le secteur 07. Mais fais gaffe, c'est un secteur Tsunami.")
		SETNEXTDIALOGSTATE(158)
		ENDDIALOG()

	NODE(158)
		SAY("Hung? Tu le trouveras dans le secteur 07.")
		SETNEXTDIALOGSTATE(159)
		ENDDIALOG()
	
	NODE(159)
		SAY("H�, petite t�te, Hung est dans le secteur 07, tu te souviens? Maintenant casse-toi!")
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

			SAY("Avec ta r�putation, tu ferais mieux de garder tes distances.")
			ENDDIALOG()

		else
			SAY("Qu'est-ce que tu veux? On entend beaucoup parler de toi ces temps-ci.")

			ANSWER("C'est � dire?",251)
		end
	NODE(251)
		SAY("Par exemple, le fait que tes actions soient impr�visibles. J'aime les gens comme toi. Dis-moi ce que je peux faire pour toi.")

		ANSWER("J'ai une proposition. Je pense te donner ce paquet de drogues, et en �change tu me paies. Qu'est-ce que tu en dis?",252)
	NODE(252)
		SAY("Je sais pas trop... O� est-ce que tu as eu toutes ces drogues? Habituellement, �a se trouve pas par terre, ce genre de choses... Et qu'est-ce que tu as en t�te comme tarifs?")

		ANSWER("Je suis du genre raisonnable, on peut marchander. Mais je dirais au moins 50.000.",253)
	NODE(253)
		SAY("Ca m'a l'air d'�tre de la bonne qualit�. Je prends, et si tu en trouves d'autres je les prendrai aussi.")

		ANSWER("Excellent, j'esp�rais que �a se passerait comme �a.",254)
	NODE(254)
		TAKEITEM(9461)
--DROGENPAKET
		if(result==0)then
			SAY("Sans drogues, pas de march�.")
			ENDDIALOG()
		else
			GIVEMONEY(50000)
			SAY("La prochaine fois, on parlera de quelques plans pour que tu gagnes plus de cr�dits. Mais pas pour l'instant, chaque chose en son temps. (prochaine mission au niveau 45)")
			ACTIVATEDIALOGTRIGGER(2)
			EPICRUNFINISHED(9,4)
			ENDDIALOG()
		end

end