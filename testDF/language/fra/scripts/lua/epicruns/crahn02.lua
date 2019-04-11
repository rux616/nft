
--new
function DIALOG()
-----------------------------------------------------------------
--resources officer
	NODE(0)
		SAY("Que Crahn te bénisse, jeune moine. A ce que je vois, tu as fait un entraînement intensif... l'ordre est prêt à t'accepter dans un cercle supérieur. Je crois qu'il est temps de te confier une autre tâche importante. Es-tu prêt pour ce défi?")

		ANSWER("Oui, mon père. Je souhaite servir Crahn de mon mieux.",1)
		ANSWER("J'aimerais que tu me donnes un peu de répit, mon père.",10)
	NODE(1)
		SAY("Bien... Jadis, quand Shirkan et Neopha Kansil prêchaient encore la parole de Crahn dans les rues de Neocron, et que nos pères contrôlaient la ville, un petit groupe de scientifiques parvint à échapper à notre emprise.")

		ANSWER("Cela me dit quelque chose...",2)
	NODE(2)
		SAY("Tu l'as deviné, je parle des Anges Déchus. Le tout premier groupe partit dans les Terres Brûlées en 2633 afin d'y édifier le laboratoire de Tech Haven.")

		ANSWER("Oui père, j'ai étudié toute l'histoire de Neocron et de notre ordre.",3)
	NODE(3)
		SAY("Jeune moine, les livres d'histoire ne disent pas toute la vérité. Aux yeux d'un citoyen de Neocron, les Anges Déchus sont un groupe de savants inoffensifs... mais nous, moines PSI, connaissons la vérité.")

		ANSWER("CONTINUER",4)
	NODE(4)
		SAY("Les Anges Déchus sont des tueurs d'enfants et des voleurs. Dans leurs laboratoires secrets, ils font des expériences répugnantes sur des humains, dont je t'épargnerai les détails.")

		ANSWER("Mais je croyais que les Anges Déchus se consacraient au bien de l'humanité...",5)
	NODE(5)
		SAY("Silence! ... Ne crois jamais la propagande mensongère des Anges. Seule la Fraternité de Crahn connaît le chemin de la lumière... C'est déjà suffisamment diabolique que les Anges Déchus fassent leurs sinistres expériences au nez et à la barbe de la population.")

		ANSWER("C'est donc une mascarade...",6)
	NODE(6)
		SAY("... mais le pire pour notre ordre, est que leurs travaux sont basés sur nos recherches. Les Anges Déchus n'auraient jamais développé le Système NeuroLink si leur chef Thomas Cooper n'avait pas eu nos documents de recherches pour l'aider.")

		ANSWER("Père, dis-moi comment je peux aider l'ordre.",7)

	NODE(7)
		SAY("L'heure de notre revanche a sonné. Frère Gabriel a réussi à infiltrer les Anges Déchus et à y être reconnu comme un des leurs, après des années de planification méticuleuse. Il travaille pour eux depuis deux ans à Tech Haven et est devenu le bras droit de Sylvia Bennet.")

		ANSWER("J'imagine que je vais devoir le rencontrer. Où se trouve-t-il?",8)
	NODE(8)
		SAY("Il devrait être rentré de sa réunion chez les Anges Déchus. Tu le verras aux portes du Dôme qui donnent sur la zone contrôlée par les Gardiens du Crépuscule. Il te donnera un holodisque, que tu transmettras au père Manus. Le père Manus t'attend dans la cathédrale de Crahn.")

		ANSWER("Il en sera fait ainsi, père.",9)
	NODE(9)
		SAY("Attention de ne pas attirer l'attention sur toi. Il pourrait y avoir des Anges Déchus aux alentours. Ils ne doivent pas s'apercevoir que frère Gabriel est notre contact. Marche dans la lumière de Crahn.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(11)
		ENDDIALOG()

	NODE(10)
		SAY("Tu ferais mieux de te préparer et revenir plus tard.")
		ENDDIALOG()

	NODE(11)
		SAY("Cette tâche ne se fera pas toute seule, tu sais? Tu étais supposé rencontrer Gabriel dans le secteur 01, puis transmettre le holodisque au père Manus, dans notre cathédrale.")
		ENDDIALOG()
-----------------------------------------------------------------
--Bruder Gabriel
	NODE(50)
		ACTIVATEDIALOGTRIGGER(0)
		SAY("*ARGH* Finalement te voilà ... frère...")

		ANSWER("Que t'est-il arrivé, frère Gabriel?",51)
	NODE(51)
		--Spieler organisiert ein Medpack
		TAKEITEM(35)
		if(result==0)then
			SAY("Les Anges... *ARGH* Je suis blessé... vite... j'ai besoin d'un MedPack rapidement.")
			SETNEXTDIALOGSTATE(51)
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(52)
			SAY("*ARGH*")	

			ANSWER("Tiens, prends ce MedPack et dis-moi ce qui est arrivé.",52)
		end
	NODE(52)
		
		SAY("Merci... ahhh. Ca va mieux.")

		ANSWER("Allons... as-tu le holodisque que je dois porter à Père Agnus?",53)
	NODE(53)
		SAY("Non... Je l'ai seulement réussi à arriver ici, et ça n'a pas été sans mal. Apparemment, on dirait que Sylvia Bennet a découvert que je ne suis pas un Ange, mais un disciple de Crahn.")

		ANSWER("Qu'est-ce qui te fait penser cela?",54)
	NODE(54)
		SAY("Un Runner masqué des Anges Déchus m'a tendu une embuscade. Il m'a poignardé à plusieurs reprises avec un stiletto, m'a volé le holodisque et a disparu. J'ai échoué. La colère de Crahn va sûrement s'abattre sur moi.")

		ANSWER("Ne t'en fais pas, frère. Je ne parlerai à personne de ton échec... Mais c'est très ennuyeux. Les données de l'holodisque étaient très importantes pour la Fraternité.",55)
	NODE(55)
		SAY("Je sais, je sais... mais attends... le voleur m'a cru mort et a parlé de transmettre ce disque à Neocron, à ProtoPharm... Il a aussi parlé d'El Farid... Et de personnes qui seraient ravies de mettre la main sur ce disque. Ensuite il m'a donné un coup de pied au visage, et j'ai perdu conscience.")

		ANSWER("Hmmm... Je ne comprends pas. Si c'était un Ange, pourquoi apporterait-il le disque à ProtoPharm?",56)
	NODE(56)
		SAY("Peut-être y a t'il une alliance secrète entre ProtoPharm et les Anges... Une alliance que nous ne connaissons pas...? Si tu fais vite, tu peux encore récupérer le disque avant qu'il soit trop tard!")

		ANSWER("Mais comment?",57)
	NODE(57)
		SAY("Il va très certainement le transmettre à un de ses contact. Essaie El Farid, je connais une seule personne dans ce village qui pourrait transmettre des informations à Neocron. Il s'appelle Ray quelque chose... je ne me souviens plus. C'est loin d'ici, mais il faut le faire.")

		ANSWER("On dirait bien que je vais devoir aller faire un tour dans ce trou perdu.",58)
	NODE(58)
		SAY("Trouve Ray et neutralise-le, je ne pense pas qu'il se laisse faire. Après, tu pourras le fouiller. Mais fais attention, il est sûrement armé.")

		ANSWER("Repose-toi maintenant, frère... Je m'en occupe.",59)
	NODE(59)
		SAY("Que Crahn te montre la voie.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(60)
		ENDDIALOG()
	NODE(60)
		SAY("As-tu réussi à trouver Ray à El Farid? Si tu as déjà le disque, va le porter au père Manus, dans notre cathédrale.")
		ENDDIALOG()


--Spieler killt Wissenschaftler Trigger 6
-----------------------------------------------------------------
--Pater Agnus
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Où est le Holodisque du frère Gabriel? L'as tu rencontré aux portes du secteur 01?")
			ENDDIALOG()
		else
			SAY("Ahhh... mon jeune ami. Bienvenue à l'abbaye. As-tu reçu le disque de frère Gabriel?")

			ANSWER("Pas de frère Gabriel... mais oui, je l'ai. Il est à toi maintenant, père.",101)
		end
	NODE(101)
		TAKEITEM(9005)
		if(result==0)then
			SAY("Où est le holodisque?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(102)
			SAY("Merci. La fraternité a appris à compter sur ta fiabilité et ton dévouement. Si un jour je peux faire quelque chose pour toi, n'hésite pas à me le faire savoir.")

			ANSWER("Merci père, je le ferai. Avez-vous des nouvelles concernant l'objet fabriqué à base de Tacholytium?",102)
		end
	NODE(102)
		SAY("Oui, j'avais presque oublié. Dans nos archives, il y avait un autre objet fait à partir de la même matière. Je l'ai trouvé dans une vieille caisse plutôt poussiéreuse. Sa taille est presque identique à ton fragment, mais la conception est différente.")

		ANSWER("Qu'est-ce que cela signifie?",103)
	NODE(103)
		SAY("C'est presque comme si, d'une certaine façon, ces deux fragments étaient liés. Je ne sais pas ce qu'il y a derrière tout cela, mais tous les renseignements que j'ai réussi à amasser jusqu'à aujourd'hui semblent indiquer que ces fragments sont très précieux.")

		ANSWER("Merci pour tes recherches, père.",104)
	NODE(104)
		SAY("L'ordre m'a autorisé à te récompenser de 4000 crédits pour avoir terminé ta tâche. Investis l'argent sagement et perfectionne tes capacités.")

		ANSWER("Je le ferai, avec l'aide de Crahn.",105)
	NODE(105)
		SAY("La prochaine tâche ne sera sûrement pas aussi facile que les précédentes... Va en paix et que Crahn te bénisse.")
		GIVEMONEY(4000)
		EPICRUNFINISHED(10,1)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

--Parkins

	NODE(150)
		SAY("Si tu n'as rien à me proposer, fiche le camp.")
		ENDDIALOG()

end