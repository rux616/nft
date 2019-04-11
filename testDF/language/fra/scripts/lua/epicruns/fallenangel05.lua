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
		SAY("Le conseil a pris une décision au sujet de Grimm. Ils ont analysé toutes les données, et ont décidé de mettre Grimm sous surveillance pendant 24 heures, et de le dégrader.")

		ANSWER("Ca n'est pas juste, Grimm devrait être banni, purement et simplement. J'ai failli me faire tuer à cause de lui.",1)
	NODE(1)
		SAY("Oui, failli. Je sais. Mais ça n'est pas allé plus loin, et les informations qu'il a transmises hors de Tech Haven n'étaient que des données d'ordre général. Quoiqu'il en soit, le Conseil a décidé de lui donner une nouvelle chance.")

		ANSWER("Il semble que je n'ai pas le choix. Je vais accepter le verdict du Conseil.",2)
	NODE(2)
		SAY("Mais j'ai une bonne nouvelle pour vous. Le Conseil a également approuvé un crédit de 35.000 nc pour vos recherches. Votre assistante m'a demandé de vous dire que les expériences pouvaient débuter; Elle vous attend pour commencer les recherches.")

		ANSWER("D'accord, je vais voir ça.",3)
		ANSWER("Pas tout de suite, j'avais autre chose de prévu d'abord.",4)
	NODE(3)
		SAY("Bonne chance.")
		SETNEXTDIALOGSTATE(5)
		ACCEPTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("C'est vous qui voyez.")
		ENDDIALOG()

	NODE(5)
		SAY("Vous devriez parler à Constantine.")
		ENDDIALOG()

	
--------------------------------------------------------------------
-- Constantine
--50
	NODE(50)
		SAY("Bonjour, ça fait quelques temps qu'on ne s'est pas croisés. Vous avez reçu mon message? Désormais, on a toutes les données nécessaires pour commencer le projet.")

		ANSWER("Oui, je suis au courant. Je suis prêt pour commencer les recherches.",51)
	NODE(51)
		SAY("Excellent. J'ai là toutes les données réunies par le département de biologie, mais il me faut encore un ou deux éléments.")

		ANSWER("Après tout ce qu'on a vécu, on peut bien se permettre un petit tracas supplémentaire. je vosu écoute.",52)
	NODE(52)
		SAY("Il nous faut un plan de BioTech Hacking CPU 2. Cet implant possède une structure interne qui nous serait très utile. L'avantage, c'est que cet implant existe déjà.")

		ANSWER("Très bien. Je vais voir ce que je peux faire.",53)
	NODE(53)
		SAY("Attendez, ça n'est pas tout.")

		ANSWER("Oui...?",54)
	NODE(54)
		SAY("Nous avons aussi besoin d'un minerai que seuls les Gardiens du Crépuscule possèdent. Après tout, ils possèdent plusieurs mines, ça représente un stock important.")

		ANSWER("On a besoin de quelque chose en particulier?",55)
	NODE(55)
		SAY("Un alliage, qu'on peut utiliser comme semi-conducteur. Pour l'instant, on peut fabriquer cet alliage seulement en recyclage des composants de base. Il vous faudra de l'Element T, que vous pourrez vous procurer chez les Gardiens du Crépuscule. Mais ils n'en vendent qu'en petites quantités. Il vous faudra aussi du Trisol, mais ça, c'est beaucoup plus facile à trouver.")

		ANSWER("Jusqu'ici, pas de problème. Je vais peut-être m'occuper du plan, pour commencer.",56)
	NODE(56)
		SAY("Bonne idée. Dès que vous l'avez, je pourrai le transmettre à notre département biologique. Ensuite, je vous en dirai plus sur les composants du semi-conducteur.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()


--Spieler besorgt Blueprint von Biotec Hacking CPU 2 (2234)
	NODE(57)
		TAKESPECIALITEMCNT(1507,1,2234,1)
		if(result==0)then
			SAY("Je crois que vous deviez d'abord obtenir un plan de BioTech Hacking CPU 2...")
			ENDDIALOG()
		else
			SAY("Bon travail! Maintenant, il faut trouver le semi-conducteur. On peut en recycler à partir de Trisol et d'Element E. Cet élément est produit uniquement par les Gardiens du Crépuscule. Feng Kennet est responsable des ventes d'Element T. C'est un gars un peu fanatique, mais il a bon coeur, et il est digne de confiance.")

			ANSWER("Bien, je vais voir ce que je peux faire pour qu'on puisse finaliser cet implant rapidement.",58)
		end
	NODE(58)
		SAY("Je vais préparer tout ce qu'il faut. Les constructeurs du département biologique attendent déjà les éléments avec impatience. Mais faites attention, la route jusqu'au Canyon est loin d'être sûre.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()


--------------------------------------------------------------------
-- feng
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Hé, soldat, rends-toi utile et arrête de traîner dans le coin.")
			ENDDIALOG()
		else
			SAY("Hep, soldat!!")

			ANSWER("Moi? Je viens...",101)
		end
	NODE(101)
		SAY("A notre époque, les actions comptent plus que les mots, et chaque hésitation signifie une victoire de plus pour la dictature! Nous devons agir sans tarder!")

		ANSWER("Oui, si vous voulez, mais moi je cherche simplement de l'Element T.",102)
	NODE(102)
		SAY("Et tu travailles pour Reza? Tu es un de ses valets? En quoi crois-tu?!")

		ANSWER("Heureusement, je suis un Ange Déchu, je dois dire qu'on ne se parle pas trop. Et évidemment, je n'approuve pas ce qu'il a fait de Neocron.",104)
		ANSWER("Je pense que Reza fait de l'excellent travail...",103)
	NODE(103)
		SAY("Quoi?! Tu oses me dire ça, à moi? AU QG des Gardiens du Crépuscule? Fiche-moi le camp avant que je t'étrangle de mes mains!")
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
	NODE(104)
		SAY("Ton attitude est celle d'un faible, soldat. Attends de voir les CopBots frapper à ta porte à Tech Haven, tu comprendras qu'on ne peut pas laisser la dictature de Reza pourrir le monde comme elle le fait. Nous devons la détruire maintenant, et poser ensemble les fondations d'un avenir glorieux!")

		ANSWER("Dites, si on revenait à l'Element T...",105)
	NODE(105)
		SAY("Tu as de la chance d'être un Ange Déchu, sinon je ne t'aurais jamais rendu ce service. Mais nos relations ont toujours été fructueuses, et je vais t'aider. Je vais t'en donner pour un prix d'ami, 10.000 crédits. Qu'est-ce que tu en dis?")

		ANSWER("C'est cher, mais je sais que je n'ai pas d'autre solution.",106)
	NODE(106)
		TAKEMONEY(10000)
		if(result==0)then
			SAY("Même si nous sommes alliés, ça ne veut pas dire que tu peux obtenir tout ce que tu demandes. Reviens quand tu as l'argent.")
			SETNEXTDIALOGSTATE(105)
			ENDDIALOG()
		else
			GIVEITEM(9302)
			SAY("Excellent. Avec cet argent, tu peux être certain que nos objectifs se réaliseront plus rapidement. Chaque jour nous avançons un peu plus!")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(107)
			ENDDIALOG()
		end
	NODE(107)
		SAY("Tu as déjà pensé à t'engager chez nous pour nous aider dans la lutte contre Reza?")
	
		ENDDIALOG()

--------------------------------------------------------------------
-- Constantine
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if (result==0)then
			SAY("Vous avez déjà l'Element T? Vous pouvez en obtenir auprès de Feng, il habite dans le canyon des Gardiens du Crépuscule, en E 13. Il faut aussi du Trisol pour recycler l'alliage dont nous avons besoin.")
			ENDDIALOG()
		else
			SAY("L'équipe de construction attend les composants. Vous avez tout?")

			ANSWER("Oui, j'ai tout trouvé. Le semi-conducteur n'a pas été facile à avoir, mais j'ai réussi.",151)
		end
	NODE(151)
		TAKEITEM(9306)
		if(result==0)then
			SAY("Vous avez déjà l'Element T? Vous pouvez en obtenir auprès de Feng, il habite dans le canyon des Gardiens du Crépuscule, en E 13. Il faut aussi du Trisol pour recycler l'alliage dont nous avons besoin.")
			ENDDIALOG()	
		else
			SAY("Excellent! Dans une petite heure, tout sera prêt. Revenez quand on aura terminé.")
			SETNEXTDIALOGSTATE(152)
			ENDDIALOG()
		end
	NODE(152)
		SAY("Je suis navrée, ils n'ont toujours pas terminé. Ca prend un peu plus de temps que prévu. Revenez plus tard, d'accord?")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		GIVEMONEY(50000)
		GIVEITEM(9305)
		SAY("Ah, enfin nous avons terminé! Tenez, voilà votre implant. Et de plus, j'ai la joie de vous apprendre que le Conseil a débloqué de nouveaux fonds pour vos recherches. Tenez, et revenez quand vous vous sentirez prêt, d'accord? (prochaine mission au niveau 45)")
		EPICRUNFINISHED(14,4)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	

end