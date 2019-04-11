--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D,Foster, 50
--1,D, Foster, 200
--2,D, Hontoka, 250
--3,D, Human Resource, 300
--
--Startnode, Person
--0, Human Resource Director
--50, Foster
--100, Hontoka
--150, Pat, Tawkeen Village
--200, Foster
--250, Hontoka
--300, Human Resource Director
--
--Items
-- Schlüssel für Pepper Park Appartement 1570
-- Bündnisvorschlag 9353

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Vous tombez à pic, on a justement besoin de vous pour une nouvelle mission. Nos pertes grandissent jour après jour parce que le Dragon Noir continue de faire fuir nos clients. De nombreux employés ont peur pour leur poste, et je ne fais pas exception à la règle.")

		ANSWER("La situation est vraiment si mauvaise? Je ne pensais pas qu'on en était arrivé là.",1)
		ANSWER("J'ai des choses plus urgentes à faire en ce moment.",7)
	NODE(1)
		SAY("Comme vous êtes parmi les rares personnes à ne pas avoir été affectées par ces incidents. Le Dragon Noir fait peur à notre base de clients en ayant recours à la violence et aux menaces. Nous reconnaissons bien là leurs tactiques.")

		ANSWER("Alors pourquoi ne peut-on pas les en empêcher, si on sait comment ils agissent?",2)
	NODE(2)
		SAY("Ce sont les Gardiens du Crépuscule qui font le sale travail pour eux. C'est la raison pour laquelle on a beaucoup de difficultés à remonter jusqu'à eux. Nous n'avons pas de preuve tangible de leur responsabilité, et le NCPD fait de son mieux mais cela n'est pas suffisant.")

		ANSWER("J'espère que nous n'avons pas perdu trop de clients.",3)
	NODE(3)
		SAY("C'est notre problème principal actuellement. Pour être honnête, tout est sur le point de s'écrouler. Nos clients s'enfuient, et personne ne veut plus des appartements de Diamond. Je ne veux pas vous sembler pessimiste, mais c'est la raison pour laquelle il nous faut vraiment toute l'aide dont nous pouvons disposer.")

		ANSWER("Mais vous n'avez pas signé un contrat avec CityMercs?",4)
	NODE(4)
		SAY("Si ce contrat était déjà en vigueur, la situation aurait été différente. Mais il y a une clause dans le contrat qui l'empêche de prendre effet maintenant. C'est pour cela que nous mobilisons toutes nos ressources personnelles.")

		ANSWER("Alors je vais avoir beaucoup de travail à faire. Qu'est-ce que vous attendez de moi?",5)
	NODE(5)
		SAY("Allez voir Foster, dans ViaRosso 03. D'après votre dossier, je vois que vous vous connaissez déjà, c'est exact?")

		ANSWER("Oui, mais il a déjà résilié son contrat chez Diamond. Il a eu une mauvaise expérience.",6)
	NODE(6)
		SAY("Alors c'est d'autant mieux que vous le connaissiez. Nous voulons que vous lui donniez des raisons de revenir chez nous. On a vraiment besoin de vous sur cette affaire, alors utilisez tous les moyens que vous jugerez nécessaires.")
		SETNEXTDIALOGSTATE(300)
		STARTMISSION()
		ENDDIALOG()
	NODE(7)
		SAY("Revenez lorsque vous vous sentirez un peu plus concerné par ce qui nous arrive.  Je me demande vraiment si vous n'avez pas perdu votre sens des responsabilités.")
		ENDDIALOG()
	
--------------------------------------------------------------------
-- Foster
--50
	NODE(50)
		SAY("Oui, j'ai décidé de faire appel à vous une fois de plus. Ne me demandez pas pourquoi. Par contre, vous allez m'expliquer pourquoi je devrais changer d'avis, ça m'intéresse.")

		ANSWER("Ce que je peux vous dire, c'est que nous travaillons beaucoup sur le problème.",51)
	NODE(51)
		SAY("Arrêtez vos salades. Ce que je veux savoir, c'est s'il y a réellement eu du changement. Ne me servez pas cette propagande.")

		ANSWER("Vous voulez savoir la situation? Vous voulez vraiment savoir? Diamond est sur la défensive, et tente de compenser les pertes qu'elle a subies. Voilà.",52)
	NODE(52)
		SAY("Ha, alors c'est pas aussi rose que ce qu'on veut bien nous faire croire, à ce que je vois. Donc, ce que vous voulez me dire, c'est que vous n'avez pas d'arguments pour me convaincre, en fait.")

		ANSWER("Diamond a signé un contrat avec CityMercs. Mais il n'est pas encore entré en vigueur. Ca ne devrait pas tarder.",53)
	NODE(53)
		SAY("Vous êtes là pour me convaincre de revenir chez Diamond, c'est ça? Alors j'ai une proposition pour vous. J'ai quelques contacts chez Tsunami, et comme vous savez peut-être, eux et le Dragon Noir ne sont pas vraiment copains. Si vous m'aidez, alors je reviendrai chez vous.")

		ANSWER("Même si vous n'avez encore rien précisé, ça me paraît tentant.",54)
	NODE(54)
		SAY("Je prépare quelque chose de spécial pour Tsunami. Je leur ai demandé de me fournir tout ce dont j'avais besoin en échange de mes talents intellectuels que je mettrai à leur disposition. Mais il semble qu'ils aient un peu de mal à me donner tout ce qu'il me faut. C'est pour cela que j'ai besoin de vous. Vous voulez m'aider?")

		ANSWER("Si vous allez renouvelez votre contrat chez nous, alors c'est oui.",55)
	NODE(55)
		SAY("Alors c'est d'accord. Allez voir Hontoka dans le secteur industriel 02, il vous donnera quelque chose dont j'ai besoin pour mon plan. Dès que vous l'avez, revenez ici au pas de course. Compris?")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

--------------------------------------------------------------------
-- Hontoka
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Vous n'avez rien à faire ici, allez-vous en.")
			ENDDIALOG()
		else
			SAY("C'est une zone dangereuse, runner. Pourquoi est-ce que vous ne retournez pas à Neocron, au lieu de risquer votre vie dans le coin?")

			ANSWER("Ca n'est pas vous qui allez me dire ce que je dois faire. Foster m'envoie pour vous transmettre ses salutations. Je suppose que vous voyez de quoi je veux parler?",101)
		end
	NODE(101)
		SAY("Foster? Oui, ce nom me dit quelque chose. Et?")

		ANSWER("Vous devez me donner quelque chose que je dois lui transmettre. Il m'a dit qu'il ne tenait pas à vous voir personnellement.",102)
	NODE(102)
		SAY("Et il pensait s'en tirer en envoyant un runner? Malheureusement, les choses sont un peu plus complexes que ce qu'a imaginé notre ami commun. Et j'imagine qu'il ne vous a pas expliqué que je pourrais seulement vous dire où vous trouveriez ce que vous recherchez?")

		ANSWER("Evidemment pas. Donc, vous voulez dire que ça va être à moi de le retrouver?",103)
	NODE(103)
		SAY("Je vois que vous avez oublié d'être bête. Moi, je peux que vous dire où ça se trouve. C'est chez une marchande du village Tawkeen. Elle s'appelle Pat. Elle a ce que vous recherchez. Si elle ne veux pas coopérer, n'hésitez pas à lui taper dessus pour la rendre plus conciliante.")

		ANSWER("Bien, maintenant j'ai besoin de savoir ce que je cherche.",104)
	NODE(104)
		SAY("La clé d'un appartement de Pepper Park. Maintenant allez chercher le biniou, et arrêtez de me pomper l'air.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()		

	
--------------------------------------------------------------------
-- Pat
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ah, je suis vraiment désolée, mais je n'ai plus rien à vendre en ce moment. Mais je pense que la prochaine livraison devrait arriver bientôt.")
			ENDDIALOG()
		else
			SAY("Un nouveau client? Qu'est-ce que je peux faire pour vous? Vous savez, c'est plutôt calme ici, et les rares personnes qui passent achètent généralement beaucoup de choses.")

			ANSWER("L'effet Terres Brûlées, je pense. Je cherche la clé d'un appartement de Pepper Park.",151)
		end
	NODE(151)
		SAY("Alors c'est votre jour de chance, j'ai justement une clé d'appartement, et je pense bien que c'est pour Pepper Park. Mais vous savez, ici ce genre de choses coûte assez cher, parce que c'est très rare, c'est le moins qu'on puisse dire. J'ai entendu dire que l'appartement appartenait au Dragon Noir, mais ça n'est qu'une rumeur.")

		ANSWER("Vous en savez plus à ce sujet? Et quel est le prix?",152)
	NODE(152)
		SAY("Selon la rumeur, le Dragon Noir aurait fabriqué des drogues dans cet appartement, et puis il y a eu un massacre. Les pièces seraient encore pleines de drogues abandonnées là. L'entrée a été condamnée après une attaque de Tsunami qui a sévèrement endommagé l'immeuble. Mais à part ça, l'appartement est bon.")

		ANSWER("Il est encore utilisable? J'ai l'impression qu'il est plutôt complètement en ruines.",153)
	NODE(153)
		SAY("Evidemment, qu'il est utilisable. Il n'a presque pas souffert des attaques. Mais je ne vous en prends que 30.000 crédits.")

		ANSWER("30.000?! Vous avez perdu la tête? C'est beaucoup trop pour un appartement de Pepper Park.",154)
		ANSWER("D'accord, je prends, mais c'est largement surévalué.",156)
	NODE(154)
		SAY("Mon prix ne changera pas. Vous aurez beau me crier dessus, ça ne changera rien. C'est à prendre ou à laisser. Si vous le voulez autrement, il va falloir me frapper, mais je sens que vous n'êtes pas du genre à faire ça.")
		SETNEXTDIALOGSTATE(155)
		ENDDIALOG()

-- Spieler killt oder bezahlt Pat
		
	NODE(155)
		SAY("Si vous ne voulez pas acheter cet appartement, vous n'avez rien à faire ici.")

		ANSWER("Je prends, même si c'est beaucoup trop cher pour ce que c'est.",156)
		ANSWER("Pas question, c'est trop cher. C'est de l'escroquerie!",154)
	NODE(156)
		TAKEMONEY(30000)
		if(result==0)then
			SAY("Sans crédits, vous n'irez pas loin.")
			ENDDIALOG()
		else
--Schlüssel
			GIVEITEM(9356)
			SAY("Alors voilà la clef. Il est à vous.")
			SETNEXTDIALOGSTATE(157)
			ENDDIALOG()
		end
	NODE(157)
		SAY("Je vous ai déjà donné ce que j'avais en stock.")

		ENDDIALOG()


--------------------------------------------------------------------
-- Foster
--200
	NODE(200)
--Schlüssel
		TAKEITEM(1570)
		if(result==0)then
			SAY("Je vous ai demandé d'aller voir Hontoka dans le secteur industriel 02, et de me ramener cette clé. Si vous ne le faites pas, notre collaboration s'arrête ici.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(201)
			SAY("Ah, je ne pensais pas que vous y arriveriez un jour. Après tout, ça fait du temps que vous êtes parti maintenant!")

			ANSWER("Oui, j'ai mis beaucoup de temps, je sais. Maintenant, j'aimerais comprendre pourquoi vous voulez tant cet appartement.",201)
		end
	NODE(201)
		SAY("Désolé, mais la seule personne qui pourrait vous l'expliquer, c'est Hontoka. Mais comme convenu, je vais reprendre un appartement. Si vous voulez, je peux vous organiser un rendez-vous avec Hontoka. Je pense qu'il sera surpris d'apprendre voter réussite.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Merci pour votre aide. Vous pouvez dire à Diamond qu'ils viennent de retrouver un client. Hontoka vous attend, vous pouvez aller lui parler.")

		ENDDIALOG()

--------------------------------------------------------------------
-- Hontoka
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Et la clé d'appartement pour Foster? Allez demander à Pat, au village Tawkeen.")
			ENDDIALOG()
		else
			SAY("Foster m'a prévenu. Vous travaillez chez Diamond depuis beaucoup de temps, non?")

			ANSWER("Oui. Maintenant, parlez-moi de cet appartement. Pat a parlé de quelque chose, mais elle n'a pas été très claire.",251)
		end
	NODE(251)
		SAY("D'accord, je vais vous expliquer. L'appartement en question était un lieu de production de drogues spéciales, possédé par le Dragon Noir. Le genre de drogue auquel on devient rapidement accro, et qui en plus contenait du poison. Ils ont tenté de les revendre aux danseuses de Tsunami. Lorsque vous êtes accro à ce truc, vous n'en avez plus pour longtemps.")

		ANSWER("On retrouve le Dragon Noir partout, décidément...",252)
	NODE(252)
		SAY("En effet. On n'a pu résoudre le problème qu'en attaquant l'immeuble à la roquette. Les pertes ont été lourdes dans les deux camps, mais lorsque la fumée s'est dispersée on a compris qu'on avait gagné. Mais dans l'opération, al clé s'est perdue, et vous venez juste de la retrouver.")

		ANSWER("Et le rôle de Foster dans tout ça?",253)
	NODE(253)
		SAY("Il va analyser les traces de drogues contenues dans l'appartement pour trouver la formule utilisée. Nous espérons qu'il y réussira. Mais je vais m'arrêter là, j'en ai déjà trop dit.")

		ANSWER("Vous avez aussi parlé d'une proposition?",254)
	NODE(254)
		SAY("Le Dragon Noir a été très actif dernièrement, et je ne pense pas qu'il ait déjà épuisé toutes ses ressources. On tente de nous affaiblir par des attaques incessantes, et je sais que Diamond a le même problème que nous. Je ne connais pas votre situation, mais j'entends dire partout que Diamond est sur la défensive.")

		ANSWER("Comment est-ce que vous savez ça? Tout le monde en parle, alors?",255)
	NODE(255)
		SAY("La vérité est encore pire. Mais maintenant, Tsunami et Diamond ont un ennemi commun. Ce qui fait de nous... des alliés. J'ai parlé à Véronique et à d'autres personnes de chez nous. Tsunami propose une alliance temporaire avec Diamond jusqu'à la résolution du problème.")

		ANSWER("Une alliance avec Tsunami?! Avec des gangsters? Impensable!",256)
	NODE(256)
--Bündnisvorschlag
		GIVEITEM(9353)
		SAY("Réfléchissez-y, vous verrez que c'est le meilleur choix pour nos deux factions. Allez porter ça à votre supérieur, ce sont par écrit les propositions que je viens de vous faire. Je pense que ça sera suffisant.  Bonne chance.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(257)
		ENDDIALOG()
		
	NODE(257)
		SAY("Allez porter ce colis à Diamond.")

		ENDDIALOG()

--------------------------------------------------------------------
-- Human Resource Director
--300
	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous devez aller à ViaRosso 03 et convaincre Foster de reprendre un contrat chez nous.")
			ENDDIALOG()
		else
--Bündnisvorschlag
			TAKEITEM(9353)
			if(result==0)then
				SAY("Navré, mais pour qu'on puisse décider de collaborer avec Tsunami, il me faut voir l'accord en question.")
				ENDDIALOG()
			else
				SETNEXTDIALOGSTATE(301)
				SAY("Je dois dire que vous avez pris votre temps. Mais est-ce que vous avez réussi, au bout du compte?")

				ANSWER("J'ai pu convaincre Foster de revenir chez Diamond. Mais il y a plus. Voici des documents envoyés par Tsunami. Ils demandent une alliance.",301)	
			end
		end
	NODE(301)
		SAY("Une alliance avec Tsunami? C'est amusant. Nous sommes une compagnie respectable, pas des criminels de bas étage.")

		ANSWER("Vous ne pensez pas que ce serait mieux si on utilisait des criminels pour combattre d'autres criminels? Je sais que ce ne sont pas mes affaires, mais notre situation actuelle est vraiment mauvaise.",302)
	NODE(302)
		GIVEMONEY(50000)
		SAY("Vous vous rendez compte où nous en sommes rendus? Tsunami deviendrait notre dernière chance? Franchement, je ne sais plus qui croire. Je vais donner cette proposition aux décisionnaires. Je pense qu'ils vont mettre du temps à se décider. Mais lorsqu'on aura une réponse, c'est vous que je veux comme émissaire. Alors gardez la forme, d'accord? Tenez, voici 20.000 crédits pour vos services, ça devrait vous aider. (prochaine mission au niveau 45)")
		EPICRUNFINISHED(2,4)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

	NODE(303)
		SAY("Go Away")
		ENDDIALOG()

end