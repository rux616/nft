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
		SAY("On a envoy� un message � votre contact de Biotech pour lui dire qu'on �tait int�ress�s par le plan. Nous avons tent� de n�gocier avec lui, mais...")

		ANSWER("Il a refus� l'offre? Le plan �tait d�j� vendu?",1)
	NODE(1)
		SAY("Non, c'est diff�rent. Je pense qu'il sait que nous sommes une compagnie importante. Tangent pourrait lui donner tout l'argent qu'il veut. Alors il a demand� une autre forme de paiement.")

		ANSWER("CONTINUER",2)
	NODE(2)
		SAY("Il nous a expliqu� qu'il avait des affaires en cours avec les Anges D�chus. Ils lui auraient refus� une place chez eux, sous le pr�texte qu'il n'�tait pas assez qualifi�.")

		ANSWER("C'est plut�t courant. M�me Tangent n'a pas de bonnes relations avec les Anges.",3)
	NODE(3)
		SAY("En effet. Mais les Anges n'�taient pas forc�s de pirater nos syst�mes comme ils l'ont fait. Nous avons eu beaucoup de probl�mes suite � ces attaques, et � pr�sent ils n'ont que ce qu'ils m�ritent. J'irai droit au but : nous voulons que vous r�pondiez aux demandes de votre contact.")

		ANSWER("Dites-moi ce que je dois faire.",4)
		ANSWER("Navr�, pas en ce moment.",9)
	NODE(4)
		SAY("C'est tr�s simple. M�me si nous n'avons pas recours � ce genre d'actions habituellement. Prenez rendez-vous avec Max, vous le trouverez dans l'ancienne prison de l'Outzone. Il a une tr�s bonne exp�rience de ce genre de choses.")

		ANSWER("CONTINUER",5)
	NODE(5)
		SAY("Dites-lui qu'on veut qu'il descende 10 Anges D�chus. Facile, n'est-ce pas? Mais dites-lui de ne pas abattre du menu fretin. Qu'il choisisse parmi ceux qui ont un peu plus de poids.")

		ANSWER("Si c'est pour Tangent, je le ferai. Apr�s tout, ce sont les Anges D�chus qui nous ont attaqu�s en premier. Mais j'ai tout de m�me mes doutes.",6)
	NODE(6)
		SAY("Vous n'irez pas loin avec cette attitude. Il va falloir vous faire � l'id�e de r�pandre des cadavres pour Tangent de temps en temps. Allons... Qu'est-ce que vous esp�riez? Si on produit des armes, �a n'est pas pour rien.")

		ANSWER("CONTINUER",7)
	NODE(7)
		SAY("Pour quoi faire, alors? Certainement pas pour faire des trous dans les nuages. La compagnie vaut plus que quelques Anges D�chus qui ont mut�.")

		ANSWER("C'est bon, pas la peine d'insister, je vous ai dit que j'allais m'en occuper. Mais je ne pense pas qu'un plan a le m�me prix qu'une vie humaine, c'est tout.",8)
	NODE(8)
		SAY("Ne vous inqui�tez pas pour �a, laissez Tangent r�soudre les questions de morale. Allez voir Max � la prison de l'Outzone. C'est un Dragon Noir. Lorsque vous avez r�cup�r� le plan, allez voir Mazzaro. Il veut vous parler.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(9)
		SAY("Comme vous voulez. Mais ne comptez pas sur Tangent pour avoir une mission pour vous � chaque fois que vous pointerez le bout de votre nez.")
		ENDDIALOG()
		
	NODE(10)
		SAY("Vous avez eu votre mission. Allez voir Max � la prison de l'Outzone, et dites-lui d'aller tuer ces Anges D�chus. Ensuite, vous obtiendrez le plan aupr�s de Benjamin, dans le secteur industriel 02.")

		ENDDIALOG()


-----------------------------------------------------
--Max

	NODE(50)
		SAY("Qu'est-ce que quelqu'un comme vous fait ici? Vous pourriez vous retrouver � bouffer les pissenlits par la racine un de ces jours. Tout �a parce que vous faites pas attention � vous...")

		ANSWER("J'ai �t� envoy� par Tangent.",51)
	NODE(51)
		SAY("Oui, j'avais devin�. C'est quoi le probl�me, cette fois?")

		ANSWER("Il va falloir que vous vous occupiez de dix Anges D�chus. Peu importe qui...",52)
	NODE(52)
		SAY("Peu importe qui? Parfait. J'adore ce genre de missions. Traquer ses victimes tout en s'amusant, c'est le paradis.")

		ANSWER("Attendez... Vous vous amusez en faisant �a?!",53)
	NODE(53)
		SAY("Je confirme! La vie, c'est quelque chose de temporaire. Avec les drogues, vous voyez d�j� ce qu'il y a apr�s la vie. Voir comment �a se passe dans l'au-del�.")

		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("Moi, je m'amuse. Vous avez d�j� crois� le regard de quelqu'un en train de mourir? Avec de l'exp�rience, on arrive m�me � voir lorsque l'autre pousse son dernier soupir.")

		ANSWER("Arr�tez, j'en ai assez!",55)
	NODE(55)
		SAY("Pourtant, vous devriez m'�couter. Les Anges D�chus sont des cibles faciles, mais je viens de changer d'avis. Je vais en descendre que cinq. Pas plus.")

		ANSWER("On s'�tait mis d'accord sur dix! Vous n'avez pas le droit de remettre en question votre contrat!",56)
	NODE(56)
		SAY("Alors il ne reste plus qu'une solution : faudra vous en charger vous-m�me. Vous voulez pas vous mettre sur la liste noire de Tangent, n'est-ce pas? Vous aurez sur les mains le sang de cinq personnes innocentes. Ensuite, on verra de quoi vous r�verez la nuit...")

		ANSWER("Mais je ne sais m�me pas qui je dois tuer!",58)

--Spieler muss 5 FallenAngels umbringen PvP 6
		
	NODE(57)
		SAY("Je ne vais m'occuper que de cinq Anges D�chus. Vous �tes responsable des autres. Alors vous allez vous occuper de cinq de ces rigolos.")
		ENDDIALOG()

	NODE(58)
		SAY("Vous devez aller tuer un runner des Anges D�chus. Pas d'employ�, pas de garde, pas de repr�sentant officiel. Juste un runner.")
		
		ANSWER("N'importe lequel?",59)
	NODE(59)
		SAY("Non. Seulement quelqu'un qui est au moins aussi puissant que vous. Sinon �a ne sera pas accept�. Bonne chance.")
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
		SAY("Vous avez termin�? Bien, bien. Ils ont enfin pay� pour ce qu'il m'ont fait.")

		ANSWER("Est-ce que �a valait vraiment la vie de dix personnes?",102)
	NODE(102)
		SAY("Qui sait? Ce que pense un runner, �a ne m'int�resse pas. J'ob�is � mes propres buts.")

		ANSWER("Attendez. Et le plan?",103)

-- Spieler bekommt Blueprint 9153

	NODE(103)	
		GIVEITEM(9153)
		SAY("C'est on, tenez. Maintenant partez, j'aime pas parler de ce que je fais.")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

	NODE(104)
		SAY("Je vous ai d�j� donn� le plan. Maintenant, d�p�chez-vous de le donner � Tangent.")
		ENDDIALOG()


-----------------------------------------------------
--Mazzaro

	NODE(150)
		TAKEITEM(9153)
		if(result==0)then
			SAY("Ne revenez pas sans le plan. J'esp�re que vous avez vu Max � la prison de l'Outzone, sinon je pense que Benjamin, du secteur Industriel 02 refusera de vous donner le plan.")
			ENDDIALOG()
		else
			SAY("Alors? Comment avez-vous trouv� votre mission? Sanglante? D�go�tante? Allez, parlez, je vous �coute.")
	
			ANSWER("Je pense que la vie de plusieurs personnes ne vaut pas un plan.",151)
		end
	NODE(151)
		SAY("Vous pouvez dire ce que vous voulez sur le prix de la vie humaine, mais sachez que si nous ne faisons rien, des vies vont dispara�tre.")

		ANSWER("CONTINUE3",152)
	NODE(152)
		SAY("La mort fait partie de la vie. La mort, on pourrait m�me la d�crire comme le but de tout le monde sur cette terre.")

		ANSWER("Oui, c'est vrai, mais �a n'a pas de rapport avec le prix d'une vie humaine.",153)
	NODE(153)
		SAY("Si vous refusez l'existence de la mort, alors vous �tes soit stupide, soit aveugle. Certaines personnes croient en la pr�destination. Et si vous adoptez le point de vue de cette philosophie, alors sachez que les Anges D�chus sont faits pour mourir.")

		ANSWER("M�me si vous prenez ce point de vue, c'est cruel...",154)
	NODE(154)
		SAY("Oui, je sais que parfois on se pose ce genre de question. Pourquoi la guerre, pourquoi la mort... ")

		ANSWER("CONTINUER",155)
	NODE(155)
		SAY("Mais c'est toujours la m�me r�ponse : il n'y a pas de raison! Les humains souffrent d'une mal�diction, qui est en m�me temps une b�n�diction si on y r�fl�chit cinq minutes : ils cr�ent leur propre r�alit�.")

		ANSWER("Que dire de plus...",156)
	NODE(156)

		GIVEMONEY(10000)
		SAY("Donnez-moi ce plan, qu'on en finisse. Je comprends que �a n'a pas �t� facile pour vous. Tenez, vous avez gagn� 10.000 cr�dits.")

		ANSWER("CONTINUER",157)

	NODE(157)
		SAY("Prenez le temps qu'il faut pour vous reposer et vous entra�ner. Et revenez lorsque vous vous sentirez pr�t, je pense qu'on aura encore besoin de vous.")
		EPICRUNFINISHED(4,3)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

end