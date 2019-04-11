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
		SAY("Ecoute, c'est la chance de ta vie. Tu ferais mieux de te tenir à carreaux. Va parler à Lucky au QG, il m'a dit que c'était à propos de Leone. Me demande pas ce qu'il a en tête, j'en ai aucune idée.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("Lucky veut te parler. Ne le fais pas traîner, saute sur l'occasion!")

		ENDDIALOG()

--------------------------------------------------------------------
--LUCKY
--50
	NODE(50)
		SAY("Bienvenue, bienvenue! J'espère que tu as apprécié ton temps libre, parce que les vacances sont finies.")

		ANSWER("Ca dépend de ce que ça paie.",51)
	NODE(51)
		SAY("C'est très simple. Tu as déjà remarqué que Leone était un gros porc, j'imagine? Il joue les putes avec tout le monde, même avec son propre clan. Il faut qu'on le calme. C'est pour ça que j'ai besoin d'un coup de main.")

		ANSWER("Pourquoi, t'as pas le droit de te salir?",52)
	NODE(52)
		SAY("Tu me dois une faveur, je te rappelle! Et c'est toujours intéressant de me rendre service, j'ai beaucoup d'influence ici. N'oublie jamais ça.")

		ANSWER("Je tiens toujours mes promesses. Qu'est-ce que je dois savoir?",53)
	NODE(53)
		SAY("Bien, très bien. Tu sais, il a tourné une saloperie de vidéo, et il veut la montrer à Gecko pour me casser ma réputation. Je veux que tu refroidisses ce gros porc. Mais cause-lui un peu avant de le flinguer, transmets-lui mes sincères salutations. Et reviens quand tu as fini.")
		SETNEXTDIALOGSTATE(54)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(54)
		SAY("J'espère que tu as pas oublié ce que je t'ai demandé. Assure-toi que Leone sache que c'est moi qui le fais flinguer.")
		ENDDIALOG()


--------------------------------------------------------------------
--LEONE
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("J'ai rien à dire à un moucheron dans ton genre. Dégage.")
			ENDDIALOG()
		else
			SAY("Tu me pompes l'air, toi. J'ai pas besoin d'un amateur dans ton genre.")

			ANSWER("Je sais ce que tu penses de moi, pas la peine de me faire un dessin. C'est Lucky qui m'envoie.",101)
		end
	NODE(101)
		SAY("Lucky? Qu'est-ce qu'il me veut celui-là?")

		ANSWER("Il te transmet ses chaleureuses salutations, et il veut te voir mort. Plus précisément, il veut te voir la tête dans le caniveau en train de pisser le sang par tous les trous.",102)
	NODE(102)
		SAY("Moi? Arrête tes conneries, c'est pas son genre. Il parle, il parle, mais il fait que parler.")

		ANSWER("J'aimerais rendre un petit service à Lucky...",103)
	NODE(103)
		SAY("Lucky t'a pas envoyé juste pour me raconter ça, j'imagine? Qu'est-ce qu'il mijote?")

		ANSWER("T'as pas encore compris, gros porc? Je suis venu pour te tuer!",104)
	NODE(104)
		SAY("Tu te fous de moi, hein? T'es pas sérieux?")

		ANSWER("J'ai l'air de rigoler?",105)
	NODE(105)
		SAY("Non, attends, c'est pas possible, attends attends, je veux pas crever, fais pas ça, pitié!")

		ANSWER("Tu implores au lieu de défendre ton honneur? T'es tombé bien bas! Donne-moi une bonne raison de pas te flinguer ici tout de suite.",106)
	NODE(106)
		SAY("Ben euh... parce que... je pourrais t'aider à monter dans la hiérarchie! Je peux m'arranger pour que Gecko aie une dette envers toi! Alors, qu'est-ce que t'en dis? On s'associe, et on bute Lucky. Alors? T'en dis quoi?")

		ANSWER("Sois plus précis, parce pour l'instant ça m'a l'air d'un plan foireux.",107)
	NODE(107)
		SAY("C'est simple. Lucy, tu te souviens? Elle couche avec Lucky... Et Gecko est pas au courant. Mais on pourrait faire en sorte qu'il le soit. Lui donner des preuves.")

		ANSWER("Ca m'a l'air intéressant. Mais j'espère pour toi que tu sais où sont ces preuves.",108)
	NODE(108)
		SAY("Evidemment. Je connais un copain de Lucky qui traîne toujours dans le secteur 04. Il s'appelle Carlos. Tout ce qu'il faut, c'est quelqu'un pour le dépouiller de tout ce qu'il a, et on aura nos preuves. Je pense en particulier à une vidéo qui le montre avec Lucy. Ce salopard me l'a volée avant que j'aie le temps de la montrer à Gecko.")

		ANSWER("Et tu penses que je vais le faire? J'ai l'impression que tu essaies juste de me faire sauver ta peau. Comment Gecko saura que c'est envers moi qu'il a une dette?",109)
	NODE(109)
		SAY("Chaque chose en son temps, tu verras, ça va bien se passer. Ecoute, je serais grillé si j'allais le voir directement, ce type. Je pense que tu vas devoir le flinguer, ça m'étonnerait qu'il veuille bien te filer la cassette comme ça. Une fois que tu l'as trouvée, on fera un petit cadeau à Gecko.")
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
				SAY("Va jouer ailleurs, reviens quand tu auras quelque chose qui pourrait m'intéresser.")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("Va voir au Pussy Club si j'y suis!")
					ENDDIALOG()
				else
					SAY("T'as quelque chose à me dire?")

					ANSWER("Je pense que Gecko serait triste s'il sait que tu t'envoies en l'air avec Lucky.",151)
				end
			end
		end
	NODE(151)
		SAY("Tu me fais marcher, là? Tu as des preuves, au moins?")

		ANSWER("Des vidéos récentes. Je crois que ça sera suffisant. Vous vous éclatez bien, apparemment. L'éclairage pourrait être meilleur, mais on va pas chipoter...",152)
	NODE(152)
		SAY("Je cois... Tu as gagné ton petit jeu, tu es content? Bon... Combien tu veux?")

		ANSWER("Eh bien voilà, c'est mieux comme ça! Disons 10.000. C'est honnête, non?",153)

	NODE(153)
		GIVEMONEY(10000)		
		SAY("D'accord, mais la vidéo est pour moi. J'ai trop peur de la réaction de Gecko si jamais il apprenais ça.")	
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
			SAY("Tu trouveras Carlos dans le secteur 04. Tout ce que tu dois faire, c'est lui faire les poches. Cherche la vidéo.")
			ENDDIALOG()
		else
			TAKEITEM(9462)
--belastendes Video
			if(result==0)then
				SAY("Tu trouveras Carlos dans le secteur 04. Tout ce que tu dois faire, c'est lui faire les poches. Cherche la vidéo.")
				ENDDIALOG()
			else
				GIVEITEM(9462)
				SAY("Excellent, excellent. Montre-moi cette vidéo. Ah, là on a vraiment quelque chose d'intéressant. Je vais filer ça à Gecko, je pense que ça fera son effet. Toi, attends et observe.")


				ANSWER("J'ai changé d'avis. Je pense que j'ai trouvé quelqu'un qui serait intéressé. Je pense que Lucy ne tient pas trop à voir ce genre de vidéo tomber entre de mauvaises mains.",202)
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
		SAY("Oui, qu'est-ce que tu veux? T'as quelque chose à me dire?")

		ANSWER("Non, non, rien.",251)
	NODE(251)
		SAY("T'es encore un des ces pauvres types sans rien dans le cerveau?")
		ENDDIALOG()
end