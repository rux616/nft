--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, LUCY 50
--1,NPCTYPEloot, Mercurus
--2,LOOTNPC, CHANG
--3
--
--Startnode, Person
--0, WISEGUY
--50, LUCY
--100, MERCURUS 
--150, Chang
--200, LUCY
--250,
--
--Items
--DrogenProduzent 9464
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--
--START	START	START	START
--50	100	150	200
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("Il était temps que tu passes. Lucy m'a dit qu'elle voulait te parler. Mais fais attention, Gecko n'aime pas les gens qui tournent autour de sa nana.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("T'as été voir Lucy?")
		ENDDIALOG()


--------------------------------------------------------------------
--LUCY
--50
	NODE(50)
		SAY("Ah, voilà le meilleur runner du monde. J'espère que tu es prêt à te remplir les poches?")

		ANSWER("J'ai réfléchi, et j'ai rien contre l'idée, je dois dire.",51)
	NODE(51)
		SAY("Ecoute. Le clan Monsun a attaqué un de nos convois à nouveau. Habituellement, ils tuent tous ceux qui résistent, et ils pillent tout. Etant donné le nombre d'attaques qu'ils ont faites ces derniers temps, je pense qu'ils doivent cacher ce qu'ils ont volé quelque part.")

		ANSWER("Je vois. Une sorte de caverne d'Ali Baba.",52)
	NODE(52)
		SAY("Oui. Un trésor qui n'attend que nous. Imagine un peu ce qu'on pourrait en tirer...")

		ANSWER("On serait plein aux as... Je marche! On commence quand?",53)
	NODE(53)
		SAY("Dès que tu es prêt. J'ai l'appui de certains hauts gradés chez Crahn. Ils pourraient nous aider à trouver l'endroit qu'on cherche.")

		ANSWER("Et à quoi tu me sers si je dois tout faire tout seul?",54)
	NODE(54)
		SAY("Imaginons que tu trouves les drogues. A qui tu les donneras? Qu'est-ce que tu en feras? Ton meilleur choix, c'est de compter sur moi, de tout le revendre. Après tout, Leone et Lucky t'en veulent à mort tous les deux en ce moment. Je te ferai un bon prix, fais-moi confiance.")

		ANSWER("Je vois que tu as pensé à tout... Par où est-ce que je commence les recherches?",55)
	NODE(55)
		SAY("Mercurus m'a dit que les voyants de Crahn pourraient détecter des traces. Quelque chose, une piste à suivre. Personne ne sait vraiment ce qu'ils savent faire, mais je sais qu'ils savent deviner les choses avant qu'elles n'arrivent. Dès que tu trouveras quelque chose, reviens me parler.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()



--------------------------------------------------------------------
--MERCURUS
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Les suivants de Crahn ne sont pas là pour te divertir.")
			ENDDIALOG()
		else
			SAY("Je me souviens de toi, on s'est déjà vus. J'espère que Crahn t'a enfin apporté la lumière. Parle, que veux-tu?")

			ANSWER("On m'a promis que vos voyants pourraient me donner des renseignements importants. Une piste menant à un entrepôt appartenant au clan Monsun. Un endroit où ils cachent toutes leurs drogues, celles qu'ils nous ont volées.",101)
		end
	NODE(101)
		SAY("Je vois. Alors vous voulez l'aide de nos voyants pour retrouver ces drogues? Et vous pensez qu'ils n'ont pas déjà mieux à faire?")

		ANSWER("Je suis pas au courant de vos affaires, mais il me faut de l'aide.",102)
	NODE(102)
		SAY("Si tu as besoin de l'aide de nos voyants, tu dois d'abord nous rendre service.")

		ANSWER("Quel genre de service?",103)
	NODE(103)
		SAY("Quelques reins pour une expérience en cours. On se fiche d'où ils viennent. Nous nous comprenons bien? La seule subtilité est qu'il faut des reins d'Anges Déchus. Deux, ce serait suffisant.")

		ANSWER("Donc, tout ce que je dois faire c'est sauter sur un Ange Déchu, le buter et lui arracher les reins?",104)
	NODE(104)
		SAY("Ca vous pose un cas de conscience?")

		ANSWER("Non, si ça m'aide à résoudre mon problème, je vais le faire. Je vais ramener deux reins.",105)
	NODE(105)
		SAY("Bien. Mais attention, n'attaque que des employés, pas de runners. Le problème avec les runners, c'est qu'ils sont souvent exposés aux radiations, et que leurs reins deviennent inutilisables.")

		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
--SPIELER LOOTED 2 FA NPCS 

	NODE(106)
		TAKEITEMCNT(9464,2)
--NIERE
		if(result==0)then
			SAY("Nous avons besoin de ces reins pour notre expérience. Qu'est-ce que tu attends?")
			ENDDIALOG()
		else
			SAY("Excellent. J'ai posé ta question à un de nos voyants pendant que tu étais parti. Maintenant que tu es revenu avec ce que je t'ai demandé, nous allons pouvoir parler.")

			ANSWER("Tant mieux.",107)
		end
	NODE(107)
		SAY("Cherche un dénommé Chang. Il se trouve dans le secteur Tsunami, le secteur 07. Il détient la clé de l'endroit que tu cherches.")

		ANSWER("C'est tout? ",108)
	NODE(108)
		SAY("Oui, et maintenant va-t-en, je n'ai plus de temps à perdre avec toi.")
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
	NODE(109)
		SAY("Chang, dans le secteur 07. C'est lui qui possède la clé.")
		ENDDIALOG()

		

--------------------------------------------------------------------
--Chang
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("J'ai rien à te dire.")
			ENDDIALOG()		
		else
			SAY("Tire-toi d'ici, j'ai pas envie de te parler.")

			ANSWER("Tu dois savoir où Monsun entrepose ses drogues volées, j'imagine?",151)
		end
	NODE(151)
		SAY("Toi, t'es complètement perdu. Chez Tsunami, on touche pas aux drogues.")

		ANSWER("J'ai un contact très fiable, alors pas la peine de jouer à ça avec moi. Je te tabasse d'abord, ou bien tu me réponds tout de suite?",152)
	NODE(152)
		RAND(2)
		if(result==0)then
			SAY("Je vais t'apprendre un truc : te mêle pas des affaires de Tsunami. Les gars, butez-moi ce connard.")
			ATTACK()
			SETNEXTDIALOGSTATE(153)	
			ENDDIALOG()
		else
			SAY("Tu commences à me les briser, j'aime pas beaucoup ça.")
			ATTACK()
			SETNEXTDIALOGSTATE(153)	
			ENDDIALOG()
		end
	NODE(153)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("T'as rien à faire ici, tire-toi!")
			ATTACK()
			ENDDIALOG()
		else
			SAY("J'espère que t'as pas eu ma clé... Putain, je vais perdre mon job sinon!")

			ANSWER("Tu veux dire... cette clé-là?",154)
		end
	NODE(154)
		TAKEITEM(9463)
--KEY FÜR DROGEN EL DORADO
		if(result==0)then
			SAY("Tu l'auras jamais, je vais m'occuper de toi!H")
			
			HELP()
			ENDDIALOG()
		else
			GIVEITEM(9463)
			SAY("Comment t'as eu cette clé? Rends-la moi tout de suite!")
			ATTACK()
			ENDDIALOG()
		end

--------------------------------------------------------------------
--LUCY
--200
	NODE(200)
		TAKEITEM(9463)
--KEY FÜR DROGEN
		if(result==0)then
			SAY("On doit d'abord savoir où sont entreposées les drogues. Va voir Mercurus. Il pourra t'aider à entrer en contact avec les voyants de chez Crahn.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("Fais exactement comme je t'ai dit.")
				ENDDIALOG()
			else	
				ISMISSIONTARGETACCOMPLISHED(1)
				if (result==0)then
					SAY("Tu préfères être riche ou mort?")
					ENDDIALOG()
				else

					SAY("Bravo, tu es tombé sur un gros coup. Donne-moi la clé.")

					ANSWER("D'abord, je veux savoir de quelle quantité de drogues on parle.",201)
				end
			end
		end
	NODE(201)
		SAY("Ca doit se monter à 1 million de crédits. Mais il faut que je voie ça par moi-même. La clé est celle d'un entrepôt, d'après ce que je vois.")

		ANSWER("Alors pour ma récompense, ça sera simple. Deux millions, et je te donne la clé.",202)
	NODE(202)
		SAY("Très drôle. Et d'où est-ce que je sors une somme pareille? J'ai autre chose à te proposer.")

		ANSWER("Dis toujours.",203)
	NODE(203)
		SAY("Je te donne l'accès à notre réserve de drogues, et tu pourras en prendre autant que tu veux.")

		ANSWER("J'aurais préféré du pognon, mais ça ira. Autre chose?",204)
	NODE(204)
		SAY("Le contact qui s'occupera de toi ne pourra t'en donner que par petites quantités à chaque fois, sinon ça se verra. Mais tu peux revenir quand tu veux, il en aura pour toi.")

		ANSWER("Ca me va. Et au sujet de ma carrière? Qu'est-ce que je fais maintenant?",205)
	NODE(205)
		SAY("Moi, je ne pourrai pas t'aider, Gecko va devenir jaloux. Et je ne pense pas que Lucky et Leone voudront t'aider non plus, après les embrouilles entre vous. Tu devrais créer quelque chose de ton côté, pour faire bouger tout ça. Ca serait un bon début. Un clan, par exemple. Bonne chance, tu vas en avoir besoin..")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(9,5)
		ENDDIALOG()

end