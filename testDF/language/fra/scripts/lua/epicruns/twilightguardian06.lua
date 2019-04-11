--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,50
--1,PVP VS CA, 150
--2,kill Blight
--3,D,DONNOVAN 200
--
--Startnode, Person
--0, Contact Person
--50, JADE
--100, BECKERT
--150, JADE
--200, JADE
--250, donnovan
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("J'ai entendu dire que tu allais apprendre les bonnes manières au NeoKorps, c'est vrai?")

		ANSWER("En effet.",1)
	NODE(1)
		SAY("Alors tu as ma bénédiction. Jade t'attend dans Outzone 04. Va leur montrer de quoi on est capables!")
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("Je sais que tu peux y arriver. Tu t'es déjà tiré des autres missions avec brio, je me fais pas de souci pour toi.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--50
	NODE(50)
		SAY("Salut! Si tout se passe comme prévu, on pourra quitter ce trou à rats bientôt. J'espère que tu as tout ce qu'il faut sur toi, ça va pas être une partie de plaisir.")

		ANSWER("Je sais, sinon je ne serais pas là.",51)
	NODE(51)
		SAY("Bien. J'ai beaucoup travaillé sur cette mission, alors essaie de ne pas la rater. On a un contact à Loba Village. Ca n'est pas le genre de personne qui inspire confiance à première vue, mais toutes les infos qu'il m'a données se sont avérées vraies. J'ai fait un bon marché avec lui. Il me donne toutes les infos que je veux au sujet des NeoKorps, et je le paie très cher.")

		ANSWER("Pas de problème. Où est l'argent?",52)
	NODE(52)
		SAY("Ca n'est pas si simple. Tu vas devoir te procurer 10.000 crédits. Je n'ai pas assez de liquide sur moi. 10.000 crédits pour contrecarrer les plans de Reza, c'est rien du tout...")

		ANSWER("D'accord, c'est bien parce que c'est toi...",53)
	NODE(53)
		SAY("Notre contact est à Loba Village. Nous déciderons du plan quand nous en saurons plus. Il s'appelle Beckert.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()


--------------------------------------------------------------------
--BECKERT
--100
	NODE(100)

			SAY("Shht, je suis en train de... et merde, j'ai perdu la fréquence. C'est la troisième fois aujourd'hui. Bon, qu'est-ce que tu veux?")

			ANSWER("Tu connais Jade, à ce qu'on m'a dit. Et tu as fait un marché avec elle.",101)
	
	NODE(101)
		SAY("C'est vrai. On me paie, et je transmets un petit quelque chose de ma collection personnelle. Tu as l'argent?")

		ANSWER("Voilà. 10.000 crédits, le compte y est.",102)
	NODE(102)
		SAY("Superbe. Mais je te préviens, ce genre d'info peut te coûter la vie!")

		ANSWER("La bonne blague! J'ai déjà risqué ma vie plus d'une fois rien qu'en venant ici, alors ne t'en fais pas pour moi.",103)
	NODE(103)
		SAY("Peut-être, mais ici c'est l'endroit idéal, loin de Neocron et des emmerdeurs. Alors, t'es prêt?")

		ANSWER("Vas-y, balance tout.",104)
	NODE(104)
		SAY("J'ai saisi au vol quelques conversations, et je sais maintenant où le commandant des NeoKorps aime passer du temps. Je sais aussi que vous l'avez dans le collimateur depuis pas mal de temps.")

		ANSWER("Alors? Il est où?",105)
	NODE(105)
		SAY("Minute, minute. Il est à la porte principale de Neocron le plus souvent. Il y a quelques boutiques dans le coin, c'est là qu'il fait son shopping. Il s'appelle Blight, à ce que je sais. Voilà, c'est toujours un plaisir de faire des affaires avec vous, les mecs. Va en parler à Jade.")
		SETNEXTDIALOGSTATE(106)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(106)
		SAY("Essaie la porte principale de Neocron. Passe cette porte, tu tombes sur des boutiques, et notre homme s'y promène parfois. Va transmettre tout ça à Jade.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Quelqu'un à Loba Village pourra nous aider.")
			ENDDIALOG()
		else
			SAY("Alors, ces informations?")

			ANSWER("Je sais où le commandant des NeoKorps aime faire son shopping. J'espère que cette information est fiable.",151)
		end
	NODE(151)
		SAY("Il va falloir faire comme si ça l'était, parce que c'est notre seule piste. Tu es prêt à lever le camp?")

		ANSWER("Oui, laisse-le moi, j'en fais mon affaire.",152)
	NODE(152)
		SAY("Désolée, mais je passe devant. J'ai besoin que tu arranges une petite diversion pour moi. Si tu tuais 1 runners CityAdmin à peu près de ta force, ce serait parfait. Ensuite, j'aurai le champ libre pour éliminer Blight.")

		ANSWER("Si c'est ce que tu veux, d'accord. Tu le trouveras en passant par les portes principales de Neocron. Il y a des boutiques dans le coin, c'est là qu'il est en général.",153)
	NODE(153)
		SAY("Merci, je n'oublierai pas ce que tu as fait pour moi. On se revoit quand tout est fini, d'accord? Allons-y.")
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()

--SPIELER KILLT 1 CITYADMIN RUNNER

	NODE(154)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Tue 1 runners CityAdmin. Pas d'employés, ni de gardes, ni de civils. L'attaque doit créer une diversion.")
			ENDDIALOG()
		else
			SAY("Je suis désolée, je n'ai pas pu le tuer. Je n'ai pas pu dépasser les STORM Bots.")

			ANSWER("Tu es blessée?",155)
		end
	NODE(155)
		SAY("Non, c'est superficiel. Mais j'ai échoué.")

		ANSWER("Alors je vais tenter ma chance.",156)
	NODE(156)
		SAY("C'est du suicide, maintenant il est au courant, tu vas mourir!")

		ANSWER("Parfois, il faut savoir prendre quelques risques. Ne t'en fais pas, je vais revenir.",157)
	NODE(157)
		SAY("Fais attention à toi, c'est très dangereux.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

--SPIELER KILLT NEOKORPS MANN
--------------------------------------------------------------------
--JADE
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Alors, comment ça se passe? Tu as échoué toi aussi...?")
			ENDDIALOG()
		else
			SAY("Tu l'as fait? Tu l'as tué?")

			ANSWER("Ca a été dur, mais il a fait une erreur décisive à la fin. Il m'a sous-estimé, il a sous-estimé notre cause.",201)
		end
	NODE(201)
		SAY("Tu te rends compte que tu viens d'éliminer un de nos plus gros problèmes? Personne n'oubliera ce que tu as fait. Mais il ne faut pas rester ici, ils vont devenir fous et chercher les responsables partout. Retourne voir Donnovan, ne tarde pas dans le coin. Moi, je m'en vais de mon côté.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Retourne voir Donnovan.")

		ENDDIALOG()
--------------------------------------------------------------------
--DONNOVAN
--250

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Il y a une prime sur la tête du commandant des NeoKorps. C'est un gros poisson.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Jade est dans le secteur Outzone 04, elle a toutes les infos nécessaires.")
				ENDDIALOG()
			else
				SAY("Tu es un soldat exceptionnel, j'en suis maintenant convaincu, vu la manière dont tu t'es tiré de tout ce qu'on t'a demandé de faire. Et tout couronné par la mort de Blight, chapeau! Je pense que tu es prêt à diriger ton propre clan, avec un parcours pareil.")
	
				ANSWER("Bonne idée, pourquoi pas... On m'a aussi parlé d'une récompense.",251)
			end
		end
	NODE(251)
		SAY("C'est exact. La prime était de 80.000 crédits, ils sont à toi. Prends un peu de vacances, et pense ensuite à fonder ton propre clan pour nous soutenir dans notre lutte contre Reza. Actuellement, je n'ai plus de missions à te donner. Bonne chance, et bonne réussite!")
	
		ANSWER("Je continuerai comme je l'ai toujours fait, tu peux en être certain.",252)
	NODE(252)
		GIVEMONEY(80000)
		SAY("Avant que tu partes, tu te rappelles ce que je t'avais demandé de livrer aux Anges Déchus? Ils ont terminé leur commande, et ont mis au point des grenades explosives très performantes, les Freedom Strike. Tu peux en prendre autant que tu veux. Mais ils sont plutôt lents pour nous livrer, donc on n'en a qu'en petite quantités. Va demander à Heff, il t'expliquera tout.")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(15,5)
		ENDDIALOG()
--------------------------------------------------------------------
--Blight
--300
	NODE(300)
		SAY("Tu as de la chance que je sois en pause, sinon je te ferais exécuter pour m'avoir interrompu en train de faire mes courses!")
		ENDDIALOG()
end