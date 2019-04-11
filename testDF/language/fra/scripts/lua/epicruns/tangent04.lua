--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
-- 6(0),PvP, Max
-- 1,D, Mazzaro

--Startnode, Person
--0
--50, Max
--100, Benjamin
--150, Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("On a envoyé un message à votre contact de Biotech pour lui dire qu'on était intéressés par le plan. Nous avons tenté de négocier avec lui, mais...")

		ANSWER("Il a refusé l'offre? Le plan était déjà vendu?",1)
	NODE(1)
		SAY("Non, c'est différent. Je pense qu'il sait que nous sommes une compagnie importante. Tangent pourrait lui donner tout l'argent qu'il veut. Alors il a demandé une autre forme de paiement.")

		ANSWER("CONTINUER",2)
	NODE(2)
		SAY("Il nous a expliqué qu'il avait des affaires en cours avec les Anges Déchus. Ils lui auraient refusé une place chez eux, sous le prétexte qu'il n'était pas assez qualifié.")

		ANSWER("C'est plutôt courant. Même Tangent n'a pas de bonnes relations avec les Anges.",3)
	NODE(3)
		SAY("En effet. Mais les Anges n'étaient pas forcés de pirater nos systèmes comme ils l'ont fait. Nous avons eu beaucoup de problèmes suite à ces attaques, et à présent ils n'ont que ce qu'ils méritent. J'irai droit au but : nous voulons que vous répondiez aux demandes de votre contact.")

		ANSWER("Dites-moi ce que je dois faire.",4)
		ANSWER("Navré, pas en ce moment.",9)
	NODE(4)
		SAY("C'est très simple. Même si nous n'avons pas recours à ce genre d'actions habituellement. Prenez rendez-vous avec Max, vous le trouverez dans l'ancienne prison de l'Outzone. Il a une très bonne expérience de ce genre de choses.")

		ANSWER("CONTINUER",5)
	NODE(5)
		SAY("Dites-lui qu'on veut qu'il descende 10 Anges Déchus. Facile, n'est-ce pas? Mais dites-lui de ne pas abattre du menu fretin. Qu'il choisisse parmi ceux qui ont un peu plus de poids.")

		ANSWER("Si c'est pour Tangent, je le ferai. Après tout, ce sont les Anges Déchus qui nous ont attaqués en premier. Mais j'ai tout de même mes doutes.",6)
	NODE(6)
		SAY("Vous n'irez pas loin avec cette attitude. Il va falloir vous faire à l'idée de répandre des cadavres pour Tangent de temps en temps. Allons... Qu'est-ce que vous espériez? Si on produit des armes, ça n'est pas pour rien.")

		ANSWER("CONTINUER",7)
	NODE(7)
		SAY("Pour quoi faire, alors? Certainement pas pour faire des trous dans les nuages. La compagnie vaut plus que quelques Anges Déchus qui ont muté.")

		ANSWER("C'est bon, pas la peine d'insister, je vous ai dit que j'allais m'en occuper. Mais je ne pense pas qu'un plan a le même prix qu'une vie humaine, c'est tout.",8)
	NODE(8)
		SAY("Ne vous inquiétez pas pour ça, laissez Tangent résoudre les questions de morale. Allez voir Max à la prison de l'Outzone. C'est un Dragon Noir. Lorsque vous avez récupéré le plan, allez voir Mazzaro. Il veut vous parler.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(9)
		SAY("Comme vous voulez. Mais ne comptez pas sur Tangent pour avoir une mission pour vous à chaque fois que vous pointerez le bout de votre nez.")
		ENDDIALOG()
		
	NODE(10)
		SAY("Vous avez eu votre mission. Allez voir Max à la prison de l'Outzone, et dites-lui d'aller tuer ces Anges Déchus. Ensuite, vous obtiendrez le plan auprès de Benjamin, dans le secteur industriel 02.")

		ENDDIALOG()


-----------------------------------------------------
--Max

	NODE(50)
		SAY("Qu'est-ce que quelqu'un comme vous fait ici? Vous pourriez vous retrouver à bouffer les pissenlits par la racine un de ces jours. Tout ça parce que vous faites pas attention à vous...")

		ANSWER("J'ai été envoyé par Tangent.",51)
	NODE(51)
		SAY("Oui, j'avais deviné. C'est quoi le problème, cette fois?")

		ANSWER("Il va falloir que vous vous occupiez de dix Anges Déchus. Peu importe qui...",52)
	NODE(52)
		SAY("Peu importe qui? Parfait. J'adore ce genre de missions. Traquer ses victimes tout en s'amusant, c'est le paradis.")

		ANSWER("Attendez... Vous vous amusez en faisant ça?!",53)
	NODE(53)
		SAY("Je confirme! La vie, c'est quelque chose de temporaire. Avec les drogues, vous voyez déjà ce qu'il y a après la vie. Voir comment ça se passe dans l'au-delà.")

		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("Moi, je m'amuse. Vous avez déjà croisé le regard de quelqu'un en train de mourir? Avec de l'expérience, on arrive même à voir lorsque l'autre pousse son dernier soupir.")

		ANSWER("Arrêtez, j'en ai assez!",55)
	NODE(55)
		SAY("Pourtant, vous devriez m'écouter. Les Anges Déchus sont des cibles faciles, mais je viens de changer d'avis. Je vais en descendre que cinq. Pas plus.")

		ANSWER("On s'était mis d'accord sur dix! Vous n'avez pas le droit de remettre en question votre contrat!",56)
	NODE(56)
		SAY("Alors il ne reste plus qu'une solution : faudra vous en charger vous-même. Vous voulez pas vous mettre sur la liste noire de Tangent, n'est-ce pas? Vous aurez sur les mains le sang de cinq personnes innocentes. Ensuite, on verra de quoi vous rêverez la nuit...")

		ANSWER("Mais je ne sais même pas qui je dois tuer!",58)

--Spieler muss 5 FallenAngels umbringen PvP 6
		
	NODE(57)
		SAY("Je ne vais m'occuper que de cinq Anges Déchus. Vous êtes responsable des autres. Alors vous allez vous occuper de cinq de ces rigolos.")
		ENDDIALOG()

	NODE(58)
		SAY("Vous devez aller tuer un runner des Anges Déchus. Pas d'employé, pas de garde, pas de représentant officiel. Juste un runner.")
		
		ANSWER("N'importe lequel?",59)
	NODE(59)
		SAY("Non. Seulement quelqu'un qui est au moins aussi puissant que vous. Sinon ça ne sera pas accepté. Bonne chance.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()
-----------------------------------------------------
--Benjamin

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Pourquoi est-ce que vous mettez autant de temps? Vous avez une mission il me semble.")
			ENDDIALOG()
		else
			SAY("Pourquoi est-ce que vous mettez autant de temps?")

			ANSWER("C'est juste que je n'ai pas l'habitude de tuer autant de monde pour un simple plan.",101)
		end
	NODE(101)
		SAY("Vous avez terminé? Bien, bien. Ils ont enfin payé pour ce qu'il m'ont fait.")

		ANSWER("Est-ce que ça valait vraiment la vie de dix personnes?",102)
	NODE(102)
		SAY("Qui sait? Ce que pense un runner, ça ne m'intéresse pas. J'obéis à mes propres buts.")

		ANSWER("Attendez. Et le plan?",103)

-- Spieler bekommt Blueprint 9153

	NODE(103)	
		GIVEITEM(9153)
		SAY("C'est on, tenez. Maintenant partez, j'aime pas parler de ce que je fais.")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

	NODE(104)
		SAY("Je vous ai déjà donné le plan. Maintenant, dépêchez-vous de le donner à Tangent.")
		ENDDIALOG()


-----------------------------------------------------
--Mazzaro

	NODE(150)
		TAKEITEM(9153)
		if(result==0)then
			SAY("Ne revenez pas sans le plan. J'espère que vous avez vu Max à la prison de l'Outzone, sinon je pense que Benjamin, du secteur Industriel 02 refusera de vous donner le plan.")
			ENDDIALOG()
		else
			SAY("Alors? Comment avez-vous trouvé votre mission? Sanglante? Dégoûtante? Allez, parlez, je vous écoute.")
	
			ANSWER("Je pense que la vie de plusieurs personnes ne vaut pas un plan.",151)
		end
	NODE(151)
		SAY("Vous pouvez dire ce que vous voulez sur le prix de la vie humaine, mais sachez que si nous ne faisons rien, des vies vont disparaître.")

		ANSWER("CONTINUE3",152)
	NODE(152)
		SAY("La mort fait partie de la vie. La mort, on pourrait même la décrire comme le but de tout le monde sur cette terre.")

		ANSWER("Oui, c'est vrai, mais ça n'a pas de rapport avec le prix d'une vie humaine.",153)
	NODE(153)
		SAY("Si vous refusez l'existence de la mort, alors vous êtes soit stupide, soit aveugle. Certaines personnes croient en la prédestination. Et si vous adoptez le point de vue de cette philosophie, alors sachez que les Anges Déchus sont faits pour mourir.")

		ANSWER("Même si vous prenez ce point de vue, c'est cruel...",154)
	NODE(154)
		SAY("Oui, je sais que parfois on se pose ce genre de question. Pourquoi la guerre, pourquoi la mort... ")

		ANSWER("CONTINUER",155)
	NODE(155)
		SAY("Mais c'est toujours la même réponse : il n'y a pas de raison! Les humains souffrent d'une malédiction, qui est en même temps une bénédiction si on y réfléchit cinq minutes : ils créent leur propre réalité.")

		ANSWER("Que dire de plus...",156)
	NODE(156)

		GIVEMONEY(10000)
		SAY("Donnez-moi ce plan, qu'on en finisse. Je comprends que ça n'a pas été facile pour vous. Tenez, vous avez gagné 10.000 crédits.")

		ANSWER("CONTINUER",157)

	NODE(157)
		SAY("Prenez le temps qu'il faut pour vous reposer et vous entraîner. Et revenez lorsque vous vous sentirez prêt, je pense qu'on aura encore besoin de vous.")
		EPICRUNFINISHED(4,3)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

end