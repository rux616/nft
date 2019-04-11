--new
--Fallen Angel 05
--
--Trigger
--Triggernumber,Type,Person
--0,D,Constantine(50)
--1,D,Feng(100)
--2,D,Constantine(150)
--3
--
--Startnode, Person
--0, Personal Director
--50, Constantine
--100, Feng
--150, Constantine
--200,
--250,
--
--Items
-- BioTech Hacking Cpu 3 2235 Blueprint
-- Element T (Node 106)
-- special alloy ( Node 151)
-- Forschungsimplantat (Node 153)

function DIALOG()
--------------------------------------------------------------------
--Personal Director
--0
	
	NODE(0)
		SAY("Le conseil a pris une d�cision au sujet de Grimm. Ils ont analys� toutes les donn�es, et ont d�cid� de mettre Grimm sous surveillance pendant 24 heures, et de le d�grader.")

		ANSWER("Ca n'est pas juste, Grimm devrait �tre banni, purement et simplement. J'ai failli me faire tuer � cause de lui.",1)
	NODE(1)
		SAY("Oui, failli. Je sais. Mais �a n'est pas all� plus loin, et les informations qu'il a transmises hors de Tech Haven n'�taient que des donn�es d'ordre g�n�ral. Quoiqu'il en soit, le Conseil a d�cid� de lui donner une nouvelle chance.")

		ANSWER("Il semble que je n'ai pas le choix. Je vais accepter le verdict du Conseil.",2)
	NODE(2)
		SAY("Mais j'ai une bonne nouvelle pour vous. Le Conseil a �galement approuv� un cr�dit de 35.000 nc pour vos recherches. Votre assistante m'a demand� de vous dire que les exp�riences pouvaient d�buter; Elle vous attend pour commencer les recherches.")

		ANSWER("D'accord, je vais voir �a.",3)
		ANSWER("Pas tout de suite, j'avais autre chose de pr�vu d'abord.",4)
	NODE(3)
		SAY("Bonne chance.")
		SETNEXTDIALOGSTATE(5)
		ACCEPTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("C'est vous qui voyez.")
		ENDDIALOG()

	NODE(5)
		SAY("Vous devriez parler � Constantine.")
		ENDDIALOG()

	
--------------------------------------------------------------------
-- Constantine
--50
	NODE(50)
		SAY("Bonjour, �a fait quelques temps qu'on ne s'est pas crois�s. Vous avez re�u mon message? D�sormais, on a toutes les donn�es n�cessaires pour commencer le projet.")

		ANSWER("Oui, je suis au courant. Je suis pr�t pour commencer les recherches.",51)
	NODE(51)
		SAY("Excellent. J'ai l� toutes les donn�es r�unies par le d�partement de biologie, mais il me faut encore un ou deux �l�ments.")

		ANSWER("Apr�s tout ce qu'on a v�cu, on peut bien se permettre un petit tracas suppl�mentaire. je vosu �coute.",52)
	NODE(52)
		SAY("Il nous faut un plan de BioTech Hacking CPU 2. Cet implant poss�de une structure interne qui nous serait tr�s utile. L'avantage, c'est que cet implant existe d�j�.")

		ANSWER("Tr�s bien. Je vais voir ce que je peux faire.",53)
	NODE(53)
		SAY("Attendez, �a n'est pas tout.")

		ANSWER("Oui...?",54)
	NODE(54)
		SAY("Nous avons aussi besoin d'un minerai que seuls les Gardiens du Cr�puscule poss�dent. Apr�s tout, ils poss�dent plusieurs mines, �a repr�sente un stock important.")

		ANSWER("On a besoin de quelque chose en particulier?",55)
	NODE(55)
		SAY("Un alliage, qu'on peut utiliser comme semi-conducteur. Pour l'instant, on peut fabriquer cet alliage seulement en recyclage des composants de base. Il vous faudra de l'Element T, que vous pourrez vous procurer chez les Gardiens du Cr�puscule. Mais ils n'en vendent qu'en petites quantit�s. Il vous faudra aussi du Trisol, mais �a, c'est beaucoup plus facile � trouver.")

		ANSWER("Jusqu'ici, pas de probl�me. Je vais peut-�tre m'occuper du plan, pour commencer.",56)
	NODE(56)
		SAY("Bonne id�e. D�s que vous l'avez, je pourrai le transmettre � notre d�partement biologique. Ensuite, je vous en dirai plus sur les composants du semi-conducteur.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()


--Spieler besorgt Blueprint von Biotec Hacking CPU 2 (2234)
	NODE(57)
		TAKESPECIALITEMCNT(1507,1,2234,1)
		if(result==0)then
			SAY("Je crois que vous deviez d'abord obtenir un plan de BioTech Hacking CPU 2...")
			ENDDIALOG()
		else
			SAY("Bon travail! Maintenant, il faut trouver le semi-conducteur. On peut en recycler � partir de Trisol et d'Element E. Cet �l�ment est produit uniquement par les Gardiens du Cr�puscule. Feng Kennet est responsable des ventes d'Element T. C'est un gars un peu fanatique, mais il a bon coeur, et il est digne de confiance.")

			ANSWER("Bien, je vais voir ce que je peux faire pour qu'on puisse finaliser cet implant rapidement.",58)
		end
	NODE(58)
		SAY("Je vais pr�parer tout ce qu'il faut. Les constructeurs du d�partement biologique attendent d�j� les �l�ments avec impatience. Mais faites attention, la route jusqu'au Canyon est loin d'�tre s�re.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()


--------------------------------------------------------------------
-- feng
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("H�, soldat, rends-toi utile et arr�te de tra�ner dans le coin.")
			ENDDIALOG()
		else
			SAY("Hep, soldat!!")

			ANSWER("Moi? Je viens...",101)
		end
	NODE(101)
		SAY("A notre �poque, les actions comptent plus que les mots, et chaque h�sitation signifie une victoire de plus pour la dictature! Nous devons agir sans tarder!")

		ANSWER("Oui, si vous voulez, mais moi je cherche simplement de l'Element T.",102)
	NODE(102)
		SAY("Et tu travailles pour Reza? Tu es un de ses valets? En quoi crois-tu?!")

		ANSWER("Heureusement, je suis un Ange D�chu, je dois dire qu'on ne se parle pas trop. Et �videmment, je n'approuve pas ce qu'il a fait de Neocron.",104)
		ANSWER("Je pense que Reza fait de l'excellent travail...",103)
	NODE(103)
		SAY("Quoi?! Tu oses me dire �a, � moi? AU QG des Gardiens du Cr�puscule? Fiche-moi le camp avant que je t'�trangle de mes mains!")
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
	NODE(104)
		SAY("Ton attitude est celle d'un faible, soldat. Attends de voir les CopBots frapper � ta porte � Tech Haven, tu comprendras qu'on ne peut pas laisser la dictature de Reza pourrir le monde comme elle le fait. Nous devons la d�truire maintenant, et poser ensemble les fondations d'un avenir glorieux!")

		ANSWER("Dites, si on revenait � l'Element T...",105)
	NODE(105)
		SAY("Tu as de la chance d'�tre un Ange D�chu, sinon je ne t'aurais jamais rendu ce service. Mais nos relations ont toujours �t� fructueuses, et je vais t'aider. Je vais t'en donner pour un prix d'ami, 10.000 cr�dits. Qu'est-ce que tu en dis?")

		ANSWER("C'est cher, mais je sais que je n'ai pas d'autre solution.",106)
	NODE(106)
		TAKEMONEY(10000)
		if(result==0)then
			SAY("M�me si nous sommes alli�s, �a ne veut pas dire que tu peux obtenir tout ce que tu demandes. Reviens quand tu as l'argent.")
			SETNEXTDIALOGSTATE(105)
			ENDDIALOG()
		else
			GIVEITEM(9302)
			SAY("Excellent. Avec cet argent, tu peux �tre certain que nos objectifs se r�aliseront plus rapidement. Chaque jour nous avan�ons un peu plus!")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(107)
			ENDDIALOG()
		end
	NODE(107)
		SAY("Tu as d�j� pens� � t'engager chez nous pour nous aider dans la lutte contre Reza?")
	
		ENDDIALOG()

--------------------------------------------------------------------
-- Constantine
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if (result==0)then
			SAY("Vous avez d�j� l'Element T? Vous pouvez en obtenir aupr�s de Feng, il habite dans le canyon des Gardiens du Cr�puscule, en E 13. Il faut aussi du Trisol pour recycler l'alliage dont nous avons besoin.")
			ENDDIALOG()
		else
			SAY("L'�quipe de construction attend les composants. Vous avez tout?")

			ANSWER("Oui, j'ai tout trouv�. Le semi-conducteur n'a pas �t� facile � avoir, mais j'ai r�ussi.",151)
		end
	NODE(151)
		TAKEITEM(9306)
		if(result==0)then
			SAY("Vous avez d�j� l'Element T? Vous pouvez en obtenir aupr�s de Feng, il habite dans le canyon des Gardiens du Cr�puscule, en E 13. Il faut aussi du Trisol pour recycler l'alliage dont nous avons besoin.")
			ENDDIALOG()	
		else
			SAY("Excellent! Dans une petite heure, tout sera pr�t. Revenez quand on aura termin�.")
			SETNEXTDIALOGSTATE(152)
			ENDDIALOG()
		end
	NODE(152)
		SAY("Je suis navr�e, ils n'ont toujours pas termin�. Ca prend un peu plus de temps que pr�vu. Revenez plus tard, d'accord?")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		GIVEMONEY(50000)
		GIVEITEM(9305)
		SAY("Ah, enfin nous avons termin�! Tenez, voil� votre implant. Et de plus, j'ai la joie de vous apprendre que le Conseil a d�bloqu� de nouveaux fonds pour vos recherches. Tenez, et revenez quand vous vous sentirez pr�t, d'accord? (prochaine mission au niveau 45)")
		EPICRUNFINISHED(14,4)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	

end