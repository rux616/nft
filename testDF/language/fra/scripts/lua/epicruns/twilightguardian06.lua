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
		SAY("J'ai entendu dire que tu allais apprendre les bonnes mani�res au NeoKorps, c'est vrai?")

		ANSWER("En effet.",1)
	NODE(1)
		SAY("Alors tu as ma b�n�diction. Jade t'attend dans Outzone 04. Va leur montrer de quoi on est capables!")
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("Je sais que tu peux y arriver. Tu t'es d�j� tir� des autres missions avec brio, je me fais pas de souci pour toi.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--50
	NODE(50)
		SAY("Salut! Si tout se passe comme pr�vu, on pourra quitter ce trou � rats bient�t. J'esp�re que tu as tout ce qu'il faut sur toi, �a va pas �tre une partie de plaisir.")

		ANSWER("Je sais, sinon je ne serais pas l�.",51)
	NODE(51)
		SAY("Bien. J'ai beaucoup travaill� sur cette mission, alors essaie de ne pas la rater. On a un contact � Loba Village. Ca n'est pas le genre de personne qui inspire confiance � premi�re vue, mais toutes les infos qu'il m'a donn�es se sont av�r�es vraies. J'ai fait un bon march� avec lui. Il me donne toutes les infos que je veux au sujet des NeoKorps, et je le paie tr�s cher.")

		ANSWER("Pas de probl�me. O� est l'argent?",52)
	NODE(52)
		SAY("Ca n'est pas si simple. Tu vas devoir te procurer 10.000 cr�dits. Je n'ai pas assez de liquide sur moi. 10.000 cr�dits pour contrecarrer les plans de Reza, c'est rien du tout...")

		ANSWER("D'accord, c'est bien parce que c'est toi...",53)
	NODE(53)
		SAY("Notre contact est � Loba Village. Nous d�ciderons du plan quand nous en saurons plus. Il s'appelle Beckert.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()


--------------------------------------------------------------------
--BECKERT
--100
	NODE(100)

			SAY("Shht, je suis en train de... et merde, j'ai perdu la fr�quence. C'est la troisi�me fois aujourd'hui. Bon, qu'est-ce que tu veux?")

			ANSWER("Tu connais Jade, � ce qu'on m'a dit. Et tu as fait un march� avec elle.",101)
	
	NODE(101)
		SAY("C'est vrai. On me paie, et je transmets un petit quelque chose de ma collection personnelle. Tu as l'argent?")

		ANSWER("Voil�. 10.000 cr�dits, le compte y est.",102)
	NODE(102)
		SAY("Superbe. Mais je te pr�viens, ce genre d'info peut te co�ter la vie!")

		ANSWER("La bonne blague! J'ai d�j� risqu� ma vie plus d'une fois rien qu'en venant ici, alors ne t'en fais pas pour moi.",103)
	NODE(103)
		SAY("Peut-�tre, mais ici c'est l'endroit id�al, loin de Neocron et des emmerdeurs. Alors, t'es pr�t?")

		ANSWER("Vas-y, balance tout.",104)
	NODE(104)
		SAY("J'ai saisi au vol quelques conversations, et je sais maintenant o� le commandant des NeoKorps aime passer du temps. Je sais aussi que vous l'avez dans le collimateur depuis pas mal de temps.")

		ANSWER("Alors? Il est o�?",105)
	NODE(105)
		SAY("Minute, minute. Il est � la porte principale de Neocron le plus souvent. Il y a quelques boutiques dans le coin, c'est l� qu'il fait son shopping. Il s'appelle Blight, � ce que je sais. Voil�, c'est toujours un plaisir de faire des affaires avec vous, les mecs. Va en parler � Jade.")
		SETNEXTDIALOGSTATE(106)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(106)
		SAY("Essaie la porte principale de Neocron. Passe cette porte, tu tombes sur des boutiques, et notre homme s'y prom�ne parfois. Va transmettre tout �a � Jade.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Quelqu'un � Loba Village pourra nous aider.")
			ENDDIALOG()
		else
			SAY("Alors, ces informations?")

			ANSWER("Je sais o� le commandant des NeoKorps aime faire son shopping. J'esp�re que cette information est fiable.",151)
		end
	NODE(151)
		SAY("Il va falloir faire comme si �a l'�tait, parce que c'est notre seule piste. Tu es pr�t � lever le camp?")

		ANSWER("Oui, laisse-le moi, j'en fais mon affaire.",152)
	NODE(152)
		SAY("D�sol�e, mais je passe devant. J'ai besoin que tu arranges une petite diversion pour moi. Si tu tuais 1 runners CityAdmin � peu pr�s de ta force, ce serait parfait. Ensuite, j'aurai le champ libre pour �liminer Blight.")

		ANSWER("Si c'est ce que tu veux, d'accord. Tu le trouveras en passant par les portes principales de Neocron. Il y a des boutiques dans le coin, c'est l� qu'il est en g�n�ral.",153)
	NODE(153)
		SAY("Merci, je n'oublierai pas ce que tu as fait pour moi. On se revoit quand tout est fini, d'accord? Allons-y.")
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()

--SPIELER KILLT 1 CITYADMIN RUNNER

	NODE(154)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Tue 1 runners CityAdmin. Pas d'employ�s, ni de gardes, ni de civils. L'attaque doit cr�er une diversion.")
			ENDDIALOG()
		else
			SAY("Je suis d�sol�e, je n'ai pas pu le tuer. Je n'ai pas pu d�passer les STORM Bots.")

			ANSWER("Tu es bless�e?",155)
		end
	NODE(155)
		SAY("Non, c'est superficiel. Mais j'ai �chou�.")

		ANSWER("Alors je vais tenter ma chance.",156)
	NODE(156)
		SAY("C'est du suicide, maintenant il est au courant, tu vas mourir!")

		ANSWER("Parfois, il faut savoir prendre quelques risques. Ne t'en fais pas, je vais revenir.",157)
	NODE(157)
		SAY("Fais attention � toi, c'est tr�s dangereux.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

--SPIELER KILLT NEOKORPS MANN
--------------------------------------------------------------------
--JADE
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Alors, comment �a se passe? Tu as �chou� toi aussi...?")
			ENDDIALOG()
		else
			SAY("Tu l'as fait? Tu l'as tu�?")

			ANSWER("Ca a �t� dur, mais il a fait une erreur d�cisive � la fin. Il m'a sous-estim�, il a sous-estim� notre cause.",201)
		end
	NODE(201)
		SAY("Tu te rends compte que tu viens d'�liminer un de nos plus gros probl�mes? Personne n'oubliera ce que tu as fait. Mais il ne faut pas rester ici, ils vont devenir fous et chercher les responsables partout. Retourne voir Donnovan, ne tarde pas dans le coin. Moi, je m'en vais de mon c�t�.")
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
			SAY("Il y a une prime sur la t�te du commandant des NeoKorps. C'est un gros poisson.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Jade est dans le secteur Outzone 04, elle a toutes les infos n�cessaires.")
				ENDDIALOG()
			else
				SAY("Tu es un soldat exceptionnel, j'en suis maintenant convaincu, vu la mani�re dont tu t'es tir� de tout ce qu'on t'a demand� de faire. Et tout couronn� par la mort de Blight, chapeau! Je pense que tu es pr�t � diriger ton propre clan, avec un parcours pareil.")
	
				ANSWER("Bonne id�e, pourquoi pas... On m'a aussi parl� d'une r�compense.",251)
			end
		end
	NODE(251)
		SAY("C'est exact. La prime �tait de 80.000 cr�dits, ils sont � toi. Prends un peu de vacances, et pense ensuite � fonder ton propre clan pour nous soutenir dans notre lutte contre Reza. Actuellement, je n'ai plus de missions � te donner. Bonne chance, et bonne r�ussite!")
	
		ANSWER("Je continuerai comme je l'ai toujours fait, tu peux en �tre certain.",252)
	NODE(252)
		GIVEMONEY(80000)
		SAY("Avant que tu partes, tu te rappelles ce que je t'avais demand� de livrer aux Anges D�chus? Ils ont termin� leur commande, et ont mis au point des grenades explosives tr�s performantes, les Freedom Strike. Tu peux en prendre autant que tu veux. Mais ils sont plut�t lents pour nous livrer, donc on n'en a qu'en petite quantit�s. Va demander � Heff, il t'expliquera tout.")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(15,5)
		ENDDIALOG()
--------------------------------------------------------------------
--Blight
--300
	NODE(300)
		SAY("Tu as de la chance que je sois en pause, sinon je te ferais ex�cuter pour m'avoir interrompu en train de faire mes courses!")
		ENDDIALOG()
end