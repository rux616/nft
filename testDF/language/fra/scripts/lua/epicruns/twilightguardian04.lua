--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D, JOHNSON
--1,PvP vs CityMerc
--2,D, Donnovan
--3
--
--Startnode, Person
--0, Contact Person
--50, DONNOVAN
--100, JOHNSON
--150, cont P
--200, DONNOVAN
--250,
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("On entend de plus en plus de rumeurs au sujet d'une police secrète mise en place par Reza. Ils ont déjà réussi à abattre un grand nombre de nos membres. Ils semblent être violents et très efficaces.")

		ANSWER("On sait autre chose sur eux?",1)
	NODE(1)
		SAY("J'espérais qu'en te disant ça, tu aies d'autres éléments à ajouter, mais je vois que tu n'en sais pas plus que nous. Tiens, j'y pense, Donovan a quelque chose de spécial pour toi.")

		ANSWER("Excellent, je vais le voir tout de suite.",2)
	NODE(2)
		SAY("D'accord. Moi, je pense payer n'importe quelle information sur cette police secrète, donc si tu entends quelque chose...")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--50
	NODE(50)
		SAY("Désolé, mais cette fois je vais te mettre à forte contribution. J'aurais aimé mener cette opération moi-même, mais je me suis cassé la jambe hier, et j'en suis incapable. Mon nouvel implant doit se mettre en place le temps que les nanotech terminent le travail.")

		ANSWER("J'espère que tu pourras marcher normalement bientôt. Plus vite j'aurai accompli cette mission, plus vite le gouvernement de Reza chutera.",51)
	NODE(51)
		SAY("Pour commencer, on a quelques problèmes avec nos anciens ennemis. Les CityMercs ont envoyé des troupes dans les environs. Ils opèrent toujours par groupes de 6. On a déjà perdu deux combats. Il va falloir renverser la vapeur rapidement.")

		ANSWER("Et si on les embauchait?",52)
	NODE(52)
		SAY("Arrête de dire des bêtises, ils sont neutres envers tout le monde sauf envers nous. Il faut tuer des runners qui ne sont pas protégés par un groupe de ce genre. C'est ta première mission. Trouve un runner à peu près aussi fort que toi, et tue-le. C'est important de tuer un runner, ce sont leurs soutiens les plus fidèles.")

		ANSWER("Compris. Je descends un runner de CityMercs aussi fort que moi.",53)
	NODE(53)
		SAY("Voilà. Tu te rappelles de Simmons. Il a organisé la rencontre dont tu m'as parlé. Fais attention, on ne sait pas encore de quoi ce contact est capable. Le rendez-vous est dans les Terres Brûlées, en F 06. Il s'appelle Johnson. Va le voir une fois que tu as réglé le problème avec CityMercs, et n'oublie pas de me faire un rapport détaillé après tout ça.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


--------------------------------------------------------------------
--JOHNSON
--100
	NODE(100)
		SAY("Tu es le contact des Gardiens du Crépuscule?")

		ANSWER("Si c'est toi Johnson, alors oui. J'espère que j'ai raison d'avoir confiance en toi.",101)
	NODE(101)
		SAY("Evidemment, et je ferai de mon mieux. Après tout, on a les mêmes buts.")

		ANSWER("Tu as intérêt. Déballe-moi tout.",102)
	NODE(102)
		SAY("J'aimerais que tu me parles autrement, je risque beaucoup ici. C'est pas trop demander?")

		ANSWER("Excuse-moi... Tu peux nous dire ce que tu sais?",103)
	NODE(103)
		SAY("Reza a une nouvelle force de police secrète. Les NeoKorps. Le chef des NeoKorps est probablement connu de Reza seulement. Je sais que leurs opérations sont violentes et décisives. Mais j'ai appris autre chose.")

		ANSWER("Ca expliquerait ces nombreux raids.",104)
	NODE(104)
		SAY("Attends, ça n'est pas tout. Ils vont organiser une rencontre secrète entre le chef des NeoKorps et les officiers. Ce sera une chance à saisir pour leur porter un coup fatal.")

		ANSWER("Ca m'a l'air tentant. Mais qu'est-ce que tu as à y gagner, toi? Tu risques beaucoup pour un tel résultat.",105)
	NODE(105)
		SAY("T'en fais pas pour moi. Ma récompense, ça sera la chute de Reza. Je te donnerai des infos bientôt au sujet de l'endroit de la rencontre. Mais pour l'instant, ne reste pas là, on pourrait nous surprendre.")

		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
	NODE(106)
		SAY("Je te donnerai le lieu de la rencontre plus tard.")

		ENDDIALOG()
--SPIELER BRINGT EINEN CITYMERC UM 2
--------------------------------------------------------------------
--cONTACT pERSON
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Va parler à Donnovan.")
			ENDDIALOG()
		else

			SAY("Content de te voir. Alors, les nouvelles sont bonnes?")

			ANSWER("Oui, plutôt bonnes. Je vais quand même pas te laisser mourir dans ton coin sans te dire ce que je sais.",151)
		end
	NODE(151)
		SAY("Merci, t'es vraiment un philanthrope. Tiens, voilà 2000 crédits pour ce genre d'info.")

		ANSWER("Philan-quoi? Euh... Ouais. Reza a une nouvelle police secrète, les NeoKorps. J'ai rencontré un traître de CityAdmin qui veut trahir le commandant de cette force de police.",152)
	NODE(152)
		GIVEMONEY(2000)
		SAY("Intéressant. Ce genre d'info me plaît beaucoup, merci.")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		SAY("Si tu en apprends plus, reviens me voir.")

		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Va tuer un runner CityMercs, et ensuite tu as rendez-vous avec Johnson en F 06. Tu te rappelles?")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("Va tuer un runner CityMercs, et ensuite tu as rendez-vous avec Johnson en F 06. Tu te rappelles?")
				ENDDIALOG()
			else
				SAY("Tu as été voir Johnson?")

				ANSWER("Pourquoi tu ne me demandes pas d'abord si j'ai tué un CityMercs comme convenu?",201)
			end
		end
	NODE(201)
		SAY("Parce que si tu ne l'avais pas fait, tu n'aurais pas osé revenir. Allez, dis-moi ce que t'a appris Johnson.")

		ANSWER("Il m'a parlé d'une force de police secrète, les NeoKorps. Apparemment, c'est une idée de Reza.",202)
	NODE(202)
		SAY("Voilà pourquoi on perd tant d'hommes ces derniers temps. C'est tout? C'est un peu léger comme info...")

		ANSWER("Il m'a aussi promis qu'il nous tiendrait au courant si une opportunité se présentait de frapper les NeoKorps en plein coeur.",203)
	NODE(203)
		SAY("Ah vraiment? Il est bien, ce Johnson, il me plaît beaucoup. Il ne faut pas manquer l'occasion. Dis-moi quand ça se passera et où.")

		ANSWER("Aucune idée pour l'instant. Mais il m'a dit qu'il me préviendrait.",204)
	NODE(204)
		GIVEMONEY(10000)
		SAY("Bon travail, tu commences à me plaire de plus en plus, tu sais? Tiens, j'ai une récompense pour t'encourager. Je crois que tu devrais t'entraîner un peu, et reviens nous voir ensuite. Bonne chance! (prochaine mission au niveau 40)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(15,3)
		ENDDIALOG()
end