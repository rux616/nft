--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,Heff
--1,D,Tovall
--2,D,Elias
--3,D,Donnovan
--
--Startnode, Person
--0, Contact Person
--50, Heff
--100, TOVALL
--150, DONNOVAN
--200, ELIAS
--250, DONNOVAN
--
--Items
--PAKET FÜR ELIAS 150

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("T'as entendu parler de notre dernière victoire? On a détruit une usine d'armes. Mais ça a été plus difficile que prévu. Enfin, on sait que Reza n'a pas le peuple avec lui. A long terme, il n'a aucune chance.")

		ANSWER("Des nouvelles de Donnovan? Je pense que je suis prêt à l'aider à nouveau, je me suis entraîné.",1)
	NODE(1)
		SAY("Oui, je me souviens. Il m'a dit que tu allais devoir faire tes preuves contre Heff et Tovall. Un peu de combat contre de vrais adversaires, ça peut pas faire de mal. Tu les trouveras dans le coin, près de l'entrée du QG. Va parler à Donnovan ensuite. Il est convaincu que tu vas bien t'en tirer.")
		
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(2)
		SAY("Commence par choisir celui que tu vas combattre. Je te recommande Heff.")
		ENDDIALOG()
--------------------------------------------------------------------
--Heff
--50
	NODE(50)
		SAY("Hey, du calme. Alors c'est toi que je dois combattre. T'es sûr de ton coup. Au fait, moi c'est Heff, j'arrive tout droit de Neocron. J'ai bossé un peu avec Jade sur une affaire. Mais quand on a eu cet agent secret au cul, ça a été une autre histoire. J'ai perdu sa trace quand on a battu en retraite. Si seulement je pouvais taper un bon coup sur Reza...")

		ANSWER("Je pense que Tovall sera heureux de l'apprendre. Alors, on se fait ce duel?",51)
	NODE(51)
		SAY("Quand tu veux.")
		SETNEXTDIALOGSTATE(52)
		ATTACK()
		ENDDIALOG()
	NODE(52)
		SAY("Tu veux remettre ça? D'accord, mais c'est plus de l'entraînement cette fois.")
		ATTACK()
		ENDDIALOG()

--------------------------------------------------------------------
--TOVALL
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("On m'a déjà appris la bonne nouvelle, je vais pouvoir taper sur une recrue aujourd'hui. Allez, on y va!")
			ENDDIALOG()
		else
			SAY("Des infos? J'entends des rumeurs de partout, mais personne ne me dit jamais rien.")

			ANSWER("Hmm, Heff m'a dit qu'il avait perdu la trace de Jade quand il a dû quitter Neocron en vitesse.",101)
		end
	NODE(101)
		SAY("Alors il y a encore de l'espoir... Je m'imaginais déjà le pire. Mais j'imagine que t'es pas là pour parler de Jade!")

		ANSWER("Pas vraiment. Donnovan m'a dit que je devrais m'entraîner contre toi. Et je vais pas te faire de cadeau.",102)
	NODE(102)
		SAY("Har, ha. D'accord, je te ferai pas de cadeau non plus.")

		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
	NODE(103)
		SAY("Il t'en faut encore? D'accord, cette fois c'est du sérieux!")
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Tu as déjà affronté Heff?")
			ENDDIALOG()
		else
		
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Tu as déjà affronté Tovall?")
				ENDDIALOG()
			else
		
				SAY("Je savais que tu réussirais, tu m'as l'air bien préparé. Ok, passons à autre chose. Tu connais les Anges Déchus?")

				ANSWER("Oui, un groupe de scientifiques typiques. Ils sont à Tech Haven et au Dôme.",151)
			end

		end
	NODE(151)
		SAY("Exactement. De temps en temps, on les contacte parce qu'ils savent ce qu'ils font. A part les Anges Déchus et les Fils de l'Anarchie, personne ne nous soutient réellement. Ca ne me surprend pas trop, toutes les autres factions dépendent plus ou moins de Reza. Elles en dépendent trop pour le lâcher comme ça.")

		ANSWER("Je croyais que les Anges Déchus étaient contre la violence.",152)
	NODE(152)
		GIVEITEM(9481)
--PAKET FÜR ELIAS
		SAY("Evidemment, ils l'ont toujours été. Tiens, voilà quelque chose à donner à Elias, un des leurs, qui se trouve à l'entrée de Tech Haven. Mais fais attention, les routes ne sont pas sûres.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

--------------------------------------------------------------------
--ELIAS
--200
	NODE(200)
		TAKEITEM(9481)
		if(result==0)then
			SAY("J'attends une livraison, c'est urgent, ne traîne pas. On en a besoin pour nos recherches.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(201)
			SAY("C'est rare qu'on voie un Gardien du Crépuscule ici. J'imagine qe c'est pour affaires?")

			ANSWER("Je viens pour une livraison de Donnovan.",201)
		end
	NODE(201)
		SAY("C'est peut-être ce que j'attendais. Montre-moi ça, c'est très important.")

		ANSWER("Voilà. Si tu pouvais m'éclairer un peu...",202)
	NODE(202)
		SAY("Ce sont des métaux rares qu'on ne trouve que dans quelques mines. Heureusement, ce sont les Gardiens du Crépuscule qui les possède,t. Nous avons besoin de ces métaux pour poursuivre certaines... euh... expériences. Tu peux retourner dire à Donnovan que nous allons honorer nos engagements. Merci d'avoir fait le déplacement.")
		SETNEXTDIALOGSTATE(203)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(203)
		SAY("Je ferai en sorte que cette commande des Gardiens du Crépuscule soit prète à temps.")

		ENDDIALOG()
--------------------------------------------------------------------
--DONNOVAN
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Tu as été voir Elias à Tech Haven?")
			ENDDIALOG()
		else
			SAY("Déjà de retour? Alors, qu'est-ce que tu penses de Tech Haven? Impressionnant, hein?")

			ANSWER("Tu m'étonnes! Et Elias semblait vraiment pressé que je lui donne le colis.",251)
		end
	NODE(251)
		GIVEMONEY(8000)
		SAY("Ah, ces scientifiques... Dès qu'on leur donne ce qu'ils veulent, ils se transforment en vrais gamins. Merci d'avoir fait cette livraison, je vais te donner un petit bonus. Utilise-le pour te payer de l'équipement ou quelques bières, comme tu préfères. Quand tu te sentiras prêt, repasse voir un de nos contacts. (prochaine mission au niveau 30)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(15,1)
		ENDDIALOG()


end