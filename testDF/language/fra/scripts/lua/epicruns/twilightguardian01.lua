--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,donnovan
--1,D,tovall
--2,D,donnovan
--3,D,tovall
--
--Startnode, Person
--0, Contact Person
--50, Donnovan
--100, TOVALL
--150, DONNOVAN
--200, TOVALL
--250,
--
--Items
--PAKET F�R JADE (100)
--Powerbooze 804
--wINE 806
function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Bienvenue chez les Gardiens du Cr�puscule. Tu n'es pas le seul � condamner les mensonges de la dictature de Neocron. Comme tu viens d'arriver, j'imagine que tu ne fais pas encore partie d'une cellule d'action?")

		ANSWER("En effet, j'arrive juste. Et je viens rendre � Reza la monnaie de sa pi�ce.",1)
	NODE(1)
		SAY("Excellent. On a besoin de gens comme toi. Donnovan va te donner tes directives. C'est un grand combattant, il a particip� � de nombreux affrontements.")

		ANSWER("Parfait, je vais lui parler tout de suite.",2)
	NODE(2)
		SAY("Tu ne pourras pas le manquer, il garde l'entr�e du QG.")

		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		SAY("Alors? Tu as d�j� oubli�? Donnovan t'attend � l'entr�e du QG.")
		ENDDIALOG()

--------------------------------------------------------------------
--donnovan
--50
	NODE(50)
		SAY("Une nouvelle t�te! J'aime �a! Plus nous sommes, plus vite nous allons r�ussir, et nous allons renverser l'inf�me dictateur! Tu sais pourquoi on fait tout �a?")

		ANSWER("Parce que Reza a eu beaucoup plus de temps que n�cessaire pour prouver au monde qu'il valait pas un clou?",51)
	NODE(51)
		SAY("On peut el dire comme �a. Mais c'est aussi parce qu'il se croit au-dessus du peuple, et parce qu'il nous a trahis! On le fait parce que les CopBots ex�cutent des innocents � tous les coins de rue. Reza est un dictateur, il ne travaille que pour lui seul. La v�rit�, c'est que Neocron n'est pas une ville s�re. Elle n'est qu'oppression, partout. Nous sommes les seuls qui puissions le combattre, au nom de tous les habitants de Neocron.")

		ANSWER("Nous allons redonner Neocron � ses habitants, alors?",52)
	NODE(52)
		SAY("Hagen Yager A des plans. Une fois que le gouvernement de Reza sera d�truit, il sentira son peuple se soulever. Car il n'�coute plus personne depuis le d�but, et cette fois, il ne pourra plus se boucher les oreilles.")

		ANSWER("On n'a pas le droit de le laisser continuer.",53)
	NODE(53)
		SAY("Exactement. Et c'est pour cela que nous devons persister, jour apr�s jour. C'est notre destin de lib�rer Neocron des griffes de Reza. Nous allons suivre nos r�gles, comme toujours. Tovall est un de nos membres, et lui, il a enfreint une r�gle importante, justement. Il faut que je lui parle. Va lui dire que je dois lui parler, et que c'est urgent.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

--------------------------------------------------------------------
--TOVALL
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("D�sol�, je re�ois personne. J'ai pas le temps.")
			ENDDIALOG()
		else
			SAY("Tiens tiens, une nouvelle t�te. Enfin, j'imagine... Sinon je t'aurais d�j� reconnu.")
	
			ANSWER("Je viens de commencer. C'est Donnovan qui m'envoie.",101)
		end
	NODE(101)
		SAY("Qu'est-ce qu'il me veut, le croulant? Il passe son temps � chercher des poux � tout le monde.")

		ANSWER("Il veut te parler. Apparemment, tu as enfreint une r�gle.",102)
	NODE(102)
		SAY("Et il veut que j'aille le voir? J'ai l'impression que tu te fiches de moi. Je te fais pas confiance!")

		ANSWER("Allez, on est alli�s, quoi! Ca te suffit pas d'avoir Reza comme ennemi, il faut en plus que tu sois parano?",103)
	NODE(103)
		SAY("Mais � quoi �a servira de lui parler? Je sais que j'ai fait une connerie, pas la peine de revenir dessus cent fois.")

		ANSWER("J'essaie seulement de t'aider, mais franchement, je me demande pourquoi je fais �a. Ce sont les types dans ton genre qui nous emp�chent de r�ussir.",104)
		ANSWER("Ecoute, je veux pas te critiquer, mais tu me facilites pas les choses.",106)
	NODE(104)
		SAY("Tu peux r�p�ter �a?")

		ANSWER("J'ai dit que tu �tais un sale con et que tu faisais chier tout le monde!",105)
		ANSWER("Rien, laisse tomber.",106)
	NODE(105)
		SAY("T'oses me parler comme �a?")

		ATTACK()
		ENDDIALOG()
	NODE(106)
		GIVEITEM(804)
		SETNEXTDIALOGSTATE(107)
--EIN BOOZE
		SAY("Oui je sais, mais qu'est-ce que tu veux, je suis un t�tu. T'as raison, je vais me calmer, �a sert � rien de se taper dessus. Prends une bi�re.")

		ANSWER("Pas de probl�me, je sais ce que c'est quand on est sur les nerfs.",107)
	NODE(107)
		GIVEITEM(9480)
--PAKET F�R JADE		

		SAY("Bon, je vais aller voir Donnovan. Pr�viens-le que j'arrive. Et tiens, pendant que tu es l�, tu pourras donner �a � Jade? Donnovan comprendra. Merci.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


	
--------------------------------------------------------------------
--DONNOVAN
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Va d'abord parler � Tovall. Ensuite on verra.")
			ENDDIALOG()

		else
			SAY("Alors, t'as parl� � cette t�te de drom?")

			ANSWER("Oui, il va venir discuter.",151)
		end
	NODE(151)
		SAY("Excellent. Il a dit autre chose?")

		ANSWER("Il m'a donn� un paquet pour Jade. Mais je sais pas du tout ce que c'est.",152)
	NODE(152)
		SAY("Jade? C'est pas bon signe. Le dernier message de sa part signalait un regain d'activit� du NCPD. Elle disait qu'elle ne savait pas combien de temps elle pourrait rester incognito. On a re�u son dernier message il y a une semaine.")

		ANSWER("Une semaine? Il a pu se passer beaucoup de choses depuis.",153)
	NODE(153)
		GIVEITEM(806)
		SETNEXTDIALOGSTATE(154) 
		SAY("Nous devons faire face � la mort sans trembler, on a tout � gagner, rien � perdre. M�me si certains meurent, nous devons continuer en leur nom. C'est un honneur que de mourir pour une cause qu'on d�fend. Tiens, va donner cette bouteille de vin � Tovall, il comprendra ce qui est arriv�.")

		ANSWER("Et ensuite, qu'est-ce que je dois faire?",154)
	NODE(154)
		SAY("D'abord, entra�ne-toi, encore et encore. Ensuite, tu reviendras ici, et tu parleras � un des responsables pour une nouvelle mission.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(155)
		ENDDIALOG()
	NODE(155)
		SAY("Va donner cette bouteille � Tovall. Ensuite, retourne t'entra�ner.")
		ENDDIALOG()



--------------------------------------------------------------------
--TOVALL
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("T'inqui�te pas, je vais pas tarder � aller voir Donovan.")
			ENDDIALOG()
		else
			TAKEITEM(9480)
			if(result==0)then
				SAY("Si tu veux pas lui donner ce que je t'ai pass�, au moins rends-le moi.")
				ENDDIALOG()
			else
				SETNEXTDIALOGSTATE(201)
				SAY("Tu me ram�nes une bouteille de vin en plus... Ouais, ouais.")

				ANSWER("Apparemment, tu sais ce que �a veut dire.",201)
			end
		end
	NODE(201)
		GIVEMONEY(5000)
		SAY("Ouais... Mais Donovan se trompe. Elle est forte, elle se fera pas avoir comme �a. Bon, je vais siroter mon vin et r�fl�chir � tout �a. A la prochaine. (prochaine mission au niveau 20)")
		EPICRUNFINISHED(15,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end