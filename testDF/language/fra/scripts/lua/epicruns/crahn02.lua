
--new
function DIALOG()
-----------------------------------------------------------------
--resources officer
	NODE(0)
		SAY("Que Crahn te b�nisse, jeune moine. A ce que je vois, tu as fait un entra�nement intensif... l'ordre est pr�t � t'accepter dans un cercle sup�rieur. Je crois qu'il est temps de te confier une autre t�che importante. Es-tu pr�t pour ce d�fi?")

		ANSWER("Oui, mon p�re. Je souhaite servir Crahn de mon mieux.",1)
		ANSWER("J'aimerais que tu me donnes un peu de r�pit, mon p�re.",10)
	NODE(1)
		SAY("Bien... Jadis, quand Shirkan et Neopha Kansil pr�chaient encore la parole de Crahn dans les rues de Neocron, et que nos p�res contr�laient la ville, un petit groupe de scientifiques parvint � �chapper � notre emprise.")

		ANSWER("Cela me dit quelque chose...",2)
	NODE(2)
		SAY("Tu l'as devin�, je parle des Anges D�chus. Le tout premier groupe partit dans les Terres Br�l�es en 2633 afin d'y �difier le laboratoire de Tech Haven.")

		ANSWER("Oui p�re, j'ai �tudi� toute l'histoire de Neocron et de notre ordre.",3)
	NODE(3)
		SAY("Jeune moine, les livres d'histoire ne disent pas toute la v�rit�. Aux yeux d'un citoyen de Neocron, les Anges D�chus sont un groupe de savants inoffensifs... mais nous, moines PSI, connaissons la v�rit�.")

		ANSWER("CONTINUER",4)
	NODE(4)
		SAY("Les Anges D�chus sont des tueurs d'enfants et des voleurs. Dans leurs laboratoires secrets, ils font des exp�riences r�pugnantes sur des humains, dont je t'�pargnerai les d�tails.")

		ANSWER("Mais je croyais que les Anges D�chus se consacraient au bien de l'humanit�...",5)
	NODE(5)
		SAY("Silence! ... Ne crois jamais la propagande mensong�re des Anges. Seule la Fraternit� de Crahn conna�t le chemin de la lumi�re... C'est d�j� suffisamment diabolique que les Anges D�chus fassent leurs sinistres exp�riences au nez et � la barbe de la population.")

		ANSWER("C'est donc une mascarade...",6)
	NODE(6)
		SAY("... mais le pire pour notre ordre, est que leurs travaux sont bas�s sur nos recherches. Les Anges D�chus n'auraient jamais d�velopp� le Syst�me NeuroLink si leur chef Thomas Cooper n'avait pas eu nos documents de recherches pour l'aider.")

		ANSWER("P�re, dis-moi comment je peux aider l'ordre.",7)

	NODE(7)
		SAY("L'heure de notre revanche a sonn�. Fr�re Gabriel a r�ussi � infiltrer les Anges D�chus et � y �tre reconnu comme un des leurs, apr�s des ann�es de planification m�ticuleuse. Il travaille pour eux depuis deux ans � Tech Haven et est devenu le bras droit de Sylvia Bennet.")

		ANSWER("J'imagine que je vais devoir le rencontrer. O� se trouve-t-il?",8)
	NODE(8)
		SAY("Il devrait �tre rentr� de sa r�union chez les Anges D�chus. Tu le verras aux portes du D�me qui donnent sur la zone contr�l�e par les Gardiens du Cr�puscule. Il te donnera un holodisque, que tu transmettras au p�re Manus. Le p�re Manus t'attend dans la cath�drale de Crahn.")

		ANSWER("Il en sera fait ainsi, p�re.",9)
	NODE(9)
		SAY("Attention de ne pas attirer l'attention sur toi. Il pourrait y avoir des Anges D�chus aux alentours. Ils ne doivent pas s'apercevoir que fr�re Gabriel est notre contact. Marche dans la lumi�re de Crahn.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(11)
		ENDDIALOG()

	NODE(10)
		SAY("Tu ferais mieux de te pr�parer et revenir plus tard.")
		ENDDIALOG()

	NODE(11)
		SAY("Cette t�che ne se fera pas toute seule, tu sais? Tu �tais suppos� rencontrer Gabriel dans le secteur 01, puis transmettre le holodisque au p�re Manus, dans notre cath�drale.")
		ENDDIALOG()
-----------------------------------------------------------------
--Bruder Gabriel
	NODE(50)
		ACTIVATEDIALOGTRIGGER(0)
		SAY("*ARGH* Finalement te voil� ... fr�re...")

		ANSWER("Que t'est-il arriv�, fr�re Gabriel?",51)
	NODE(51)
		--Spieler organisiert ein Medpack
		TAKEITEM(35)
		if(result==0)then
			SAY("Les Anges... *ARGH* Je suis bless�... vite... j'ai besoin d'un MedPack rapidement.")
			SETNEXTDIALOGSTATE(51)
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(52)
			SAY("*ARGH*")	

			ANSWER("Tiens, prends ce MedPack et dis-moi ce qui est arriv�.",52)
		end
	NODE(52)
		
		SAY("Merci... ahhh. Ca va mieux.")

		ANSWER("Allons... as-tu le holodisque que je dois porter � P�re Agnus?",53)
	NODE(53)
		SAY("Non... Je l'ai seulement r�ussi � arriver ici, et �a n'a pas �t� sans mal. Apparemment, on dirait que Sylvia Bennet a d�couvert que je ne suis pas un Ange, mais un disciple de Crahn.")

		ANSWER("Qu'est-ce qui te fait penser cela?",54)
	NODE(54)
		SAY("Un Runner masqu� des Anges D�chus m'a tendu une embuscade. Il m'a poignard� � plusieurs reprises avec un stiletto, m'a vol� le holodisque et a disparu. J'ai �chou�. La col�re de Crahn va s�rement s'abattre sur moi.")

		ANSWER("Ne t'en fais pas, fr�re. Je ne parlerai � personne de ton �chec... Mais c'est tr�s ennuyeux. Les donn�es de l'holodisque �taient tr�s importantes pour la Fraternit�.",55)
	NODE(55)
		SAY("Je sais, je sais... mais attends... le voleur m'a cru mort et a parl� de transmettre ce disque � Neocron, � ProtoPharm... Il a aussi parl� d'El Farid... Et de personnes qui seraient ravies de mettre la main sur ce disque. Ensuite il m'a donn� un coup de pied au visage, et j'ai perdu conscience.")

		ANSWER("Hmmm... Je ne comprends pas. Si c'�tait un Ange, pourquoi apporterait-il le disque � ProtoPharm?",56)
	NODE(56)
		SAY("Peut-�tre y a t'il une alliance secr�te entre ProtoPharm et les Anges... Une alliance que nous ne connaissons pas...? Si tu fais vite, tu peux encore r�cup�rer le disque avant qu'il soit trop tard!")

		ANSWER("Mais comment?",57)
	NODE(57)
		SAY("Il va tr�s certainement le transmettre � un de ses contact. Essaie El Farid, je connais une seule personne dans ce village qui pourrait transmettre des informations � Neocron. Il s'appelle Ray quelque chose... je ne me souviens plus. C'est loin d'ici, mais il faut le faire.")

		ANSWER("On dirait bien que je vais devoir aller faire un tour dans ce trou perdu.",58)
	NODE(58)
		SAY("Trouve Ray et neutralise-le, je ne pense pas qu'il se laisse faire. Apr�s, tu pourras le fouiller. Mais fais attention, il est s�rement arm�.")

		ANSWER("Repose-toi maintenant, fr�re... Je m'en occupe.",59)
	NODE(59)
		SAY("Que Crahn te montre la voie.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(60)
		ENDDIALOG()
	NODE(60)
		SAY("As-tu r�ussi � trouver Ray � El Farid? Si tu as d�j� le disque, va le porter au p�re Manus, dans notre cath�drale.")
		ENDDIALOG()


--Spieler killt Wissenschaftler Trigger 6
-----------------------------------------------------------------
--Pater Agnus
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("O� est le Holodisque du fr�re Gabriel? L'as tu rencontr� aux portes du secteur 01?")
			ENDDIALOG()
		else
			SAY("Ahhh... mon jeune ami. Bienvenue � l'abbaye. As-tu re�u le disque de fr�re Gabriel?")

			ANSWER("Pas de fr�re Gabriel... mais oui, je l'ai. Il est � toi maintenant, p�re.",101)
		end
	NODE(101)
		TAKEITEM(9005)
		if(result==0)then
			SAY("O� est le holodisque?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(102)
			SAY("Merci. La fraternit� a appris � compter sur ta fiabilit� et ton d�vouement. Si un jour je peux faire quelque chose pour toi, n'h�site pas � me le faire savoir.")

			ANSWER("Merci p�re, je le ferai. Avez-vous des nouvelles concernant l'objet fabriqu� � base de Tacholytium?",102)
		end
	NODE(102)
		SAY("Oui, j'avais presque oubli�. Dans nos archives, il y avait un autre objet fait � partir de la m�me mati�re. Je l'ai trouv� dans une vieille caisse plut�t poussi�reuse. Sa taille est presque identique � ton fragment, mais la conception est diff�rente.")

		ANSWER("Qu'est-ce que cela signifie?",103)
	NODE(103)
		SAY("C'est presque comme si, d'une certaine fa�on, ces deux fragments �taient li�s. Je ne sais pas ce qu'il y a derri�re tout cela, mais tous les renseignements que j'ai r�ussi � amasser jusqu'� aujourd'hui semblent indiquer que ces fragments sont tr�s pr�cieux.")

		ANSWER("Merci pour tes recherches, p�re.",104)
	NODE(104)
		SAY("L'ordre m'a autoris� � te r�compenser de 4000 cr�dits pour avoir termin� ta t�che. Investis l'argent sagement et perfectionne tes capacit�s.")

		ANSWER("Je le ferai, avec l'aide de Crahn.",105)
	NODE(105)
		SAY("La prochaine t�che ne sera s�rement pas aussi facile que les pr�c�dentes... Va en paix et que Crahn te b�nisse.")
		GIVEMONEY(4000)
		EPICRUNFINISHED(10,1)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

--Parkins

	NODE(150)
		SAY("Si tu n'as rien � me proposer, fiche le camp.")
		ENDDIALOG()

end