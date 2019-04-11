--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, LUCKY 50
--1,D, LEONE 100
--2,Loot, CARLOS
--3,D, LUCY 150,LEONE 200
--
--Startnode, Person
--0, WISEGUY
--50, LUCKY 1672
--100, LEONE 1671
--150, LUCY 1670
--200, LEONE
--250, CARLOS 1674
--
--Items
--belastendes Video (150,200) 9462
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1672	1671	1670	1674	3	0	0	0	3	1	1	0	10	3	2	0	3	1	3
--START	START	START	START
--50	100	150	250
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("Ecoute, c'est la chance de ta vie. Tu ferais mieux de te tenir � carreaux. Va parler � Lucky au QG, il m'a dit que c'�tait � propos de Leone. Me demande pas ce qu'il a en t�te, j'en ai aucune id�e.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("Lucky veut te parler. Ne le fais pas tra�ner, saute sur l'occasion!")

		ENDDIALOG()

--------------------------------------------------------------------
--LUCKY
--50
	NODE(50)
		SAY("Bienvenue, bienvenue! J'esp�re que tu as appr�ci� ton temps libre, parce que les vacances sont finies.")

		ANSWER("Ca d�pend de ce que �a paie.",51)
	NODE(51)
		SAY("C'est tr�s simple. Tu as d�j� remarqu� que Leone �tait un gros porc, j'imagine? Il joue les putes avec tout le monde, m�me avec son propre clan. Il faut qu'on le calme. C'est pour �a que j'ai besoin d'un coup de main.")

		ANSWER("Pourquoi, t'as pas le droit de te salir?",52)
	NODE(52)
		SAY("Tu me dois une faveur, je te rappelle! Et c'est toujours int�ressant de me rendre service, j'ai beaucoup d'influence ici. N'oublie jamais �a.")

		ANSWER("Je tiens toujours mes promesses. Qu'est-ce que je dois savoir?",53)
	NODE(53)
		SAY("Bien, tr�s bien. Tu sais, il a tourn� une saloperie de vid�o, et il veut la montrer � Gecko pour me casser ma r�putation. Je veux que tu refroidisses ce gros porc. Mais cause-lui un peu avant de le flinguer, transmets-lui mes sinc�res salutations. Et reviens quand tu as fini.")
		SETNEXTDIALOGSTATE(54)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(54)
		SAY("J'esp�re que tu as pas oubli� ce que je t'ai demand�. Assure-toi que Leone sache que c'est moi qui le fais flinguer.")
		ENDDIALOG()


--------------------------------------------------------------------
--LEONE
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("J'ai rien � dire � un moucheron dans ton genre. D�gage.")
			ENDDIALOG()
		else
			SAY("Tu me pompes l'air, toi. J'ai pas besoin d'un amateur dans ton genre.")

			ANSWER("Je sais ce que tu penses de moi, pas la peine de me faire un dessin. C'est Lucky qui m'envoie.",101)
		end
	NODE(101)
		SAY("Lucky? Qu'est-ce qu'il me veut celui-l�?")

		ANSWER("Il te transmet ses chaleureuses salutations, et il veut te voir mort. Plus pr�cis�ment, il veut te voir la t�te dans le caniveau en train de pisser le sang par tous les trous.",102)
	NODE(102)
		SAY("Moi? Arr�te tes conneries, c'est pas son genre. Il parle, il parle, mais il fait que parler.")

		ANSWER("J'aimerais rendre un petit service � Lucky...",103)
	NODE(103)
		SAY("Lucky t'a pas envoy� juste pour me raconter �a, j'imagine? Qu'est-ce qu'il mijote?")

		ANSWER("T'as pas encore compris, gros porc? Je suis venu pour te tuer!",104)
	NODE(104)
		SAY("Tu te fous de moi, hein? T'es pas s�rieux?")

		ANSWER("J'ai l'air de rigoler?",105)
	NODE(105)
		SAY("Non, attends, c'est pas possible, attends attends, je veux pas crever, fais pas �a, piti�!")

		ANSWER("Tu implores au lieu de d�fendre ton honneur? T'es tomb� bien bas! Donne-moi une bonne raison de pas te flinguer ici tout de suite.",106)
	NODE(106)
		SAY("Ben euh... parce que... je pourrais t'aider � monter dans la hi�rarchie! Je peux m'arranger pour que Gecko aie une dette envers toi! Alors, qu'est-ce que t'en dis? On s'associe, et on bute Lucky. Alors? T'en dis quoi?")

		ANSWER("Sois plus pr�cis, parce pour l'instant �a m'a l'air d'un plan foireux.",107)
	NODE(107)
		SAY("C'est simple. Lucy, tu te souviens? Elle couche avec Lucky... Et Gecko est pas au courant. Mais on pourrait faire en sorte qu'il le soit. Lui donner des preuves.")

		ANSWER("Ca m'a l'air int�ressant. Mais j'esp�re pour toi que tu sais o� sont ces preuves.",108)
	NODE(108)
		SAY("Evidemment. Je connais un copain de Lucky qui tra�ne toujours dans le secteur 04. Il s'appelle Carlos. Tout ce qu'il faut, c'est quelqu'un pour le d�pouiller de tout ce qu'il a, et on aura nos preuves. Je pense en particulier � une vid�o qui le montre avec Lucy. Ce salopard me l'a vol�e avant que j'aie le temps de la montrer � Gecko.")

		ANSWER("Et tu penses que je vais le faire? J'ai l'impression que tu essaies juste de me faire sauver ta peau. Comment Gecko saura que c'est envers moi qu'il a une dette?",109)
	NODE(109)
		SAY("Chaque chose en son temps, tu verras, �a va bien se passer. Ecoute, je serais grill� si j'allais le voir directement, ce type. Je pense que tu vas devoir le flinguer, �a m'�tonnerait qu'il veuille bien te filer la cassette comme �a. Une fois que tu l'as trouv�e, on fera un petit cadeau � Gecko.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
--------------------------------------------------------------------
--LUCY
--150
	NODE(150)
		TAKEITEM(9462)
--BELASTENDES VIDEO
		if(result==0)then
			SAY("Tu peux pas aller jouer ailleurs?")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Va jouer ailleurs, reviens quand tu auras quelque chose qui pourrait m'int�resser.")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("Va voir au Pussy Club si j'y suis!")
					ENDDIALOG()
				else
					SAY("T'as quelque chose � me dire?")

					ANSWER("Je pense que Gecko serait triste s'il sait que tu t'envoies en l'air avec Lucky.",151)
				end
			end
		end
	NODE(151)
		SAY("Tu me fais marcher, l�? Tu as des preuves, au moins?")

		ANSWER("Des vid�os r�centes. Je crois que �a sera suffisant. Vous vous �clatez bien, apparemment. L'�clairage pourrait �tre meilleur, mais on va pas chipoter...",152)
	NODE(152)
		SAY("Je cois... Tu as gagn� ton petit jeu, tu es content? Bon... Combien tu veux?")

		ANSWER("Eh bien voil�, c'est mieux comme �a! Disons 10.000. C'est honn�te, non?",153)

	NODE(153)
		GIVEMONEY(10000)		
		SAY("D'accord, mais la vid�o est pour moi. J'ai trop peur de la r�action de Gecko si jamais il apprenais �a.")	
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(9,2)
---MISSING
		ENDDIALOG()


--------------------------------------------------------------------
--LEONE
--200

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Tu trouveras Carlos dans le secteur 04. Tout ce que tu dois faire, c'est lui faire les poches. Cherche la vid�o.")
			ENDDIALOG()
		else
			TAKEITEM(9462)
--belastendes Video
			if(result==0)then
				SAY("Tu trouveras Carlos dans le secteur 04. Tout ce que tu dois faire, c'est lui faire les poches. Cherche la vid�o.")
				ENDDIALOG()
			else
				GIVEITEM(9462)
				SAY("Excellent, excellent. Montre-moi cette vid�o. Ah, l� on a vraiment quelque chose d'int�ressant. Je vais filer �a � Gecko, je pense que �a fera son effet. Toi, attends et observe.")


				ANSWER("J'ai chang� d'avis. Je pense que j'ai trouv� quelqu'un qui serait int�ress�. Je pense que Lucy ne tient pas trop � voir ce genre de vid�o tomber entre de mauvaises mains.",202)
			end
		end

	NODE(202)
		SAY("Sale fils de pute! Tu oses me faire un coup pareil?! Pour que je te redonne du travail, tu peux toujours aller te brosser!")
		SETNEXTDIALOGSTATE(202)		
		ENDDIALOG()

--------------------------------------------------------------------
--CARLOS
--250

	NODE(250)
		SAY("Oui, qu'est-ce que tu veux? T'as quelque chose � me dire?")

		ANSWER("Non, non, rien.",251)
	NODE(251)
		SAY("T'es encore un des ces pauvres types sans rien dans le cerveau?")
		ENDDIALOG()
end