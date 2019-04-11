--new
--ProtoPharm

--
--Trigger
--Triggernumber,Type,Person
--0,D,MICHAIL 50
--1,D,Gregory 100
--2
--3
--
--Startnode, Person
--0, Human Resource Director
--50, Michail
--100, Gregory
--150, Grand
--200, Gregory
--250, Grand
--300, Michail
--
--Items
--Codebrecherdaten, 150 9400
--Codebrecher, 200 9401

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Bienvenue chez ProtoPharm. Comment puis-je vous aider?")

		ANSWER("Comme je travaille pour ProtoPharm, j'ai pensé que je pouvais vous donner un coup de main.",1)
	NODE(1)
		SAY("Disons plutôt que vous êtes à court d'argent, c'est ça? Mais peu importe. Nous n'avons pas de dossier sur vous, donc je ne vais pouvoir vous donner que des missions basiques. Michail, un de nos employés, a perdu son assistant à la suite d'un malheureux accident de laboratoire. Heureusement, cet assistant n'a été que légèrement blessé. Vous pourriez le remplacer en lui donnant un coup de main. Est-ce que ça vous intéresse?")

		ANSWER("Evidemment, c'est exactement le genre de travail que je recherche. Où est-ce que je peux rencontrer Michail? Et surtout, qu'est-ce que ça va m'apporter?",2)
	NODE(2)
		SAY("Vous le trouverez ici au QG. Et vous toucherez 1000 crédits pour ce travail. Mais si vous faites preuve de sérieux, votre salaire pourra augmenter.")

		ANSWER("Très bien, je vais y aller. Où est-ce que je dois me rendre, déjà?",3)
	NODE(3)
		SAY("C'est très simple. Allez dans le laboratoire adjacent à la tour ProtoPharm. Mais ne touchez à rien, nos appareils sont très fragiles.")

		SETNEXTDIALOGSTATE(4)
		STARTMISSION()		
		ENDDIALOG()
	NODE(4)
		SAY("Si vous voulez remplacer l'assistante de Michail, vous allez devoir vous rendre au labo. Je pense que vous le trouverez là-bas.")
		ENDDIALOG()

--------------------------------------------------------------------
--Michail
--50
	NODE(50)
		SAY("Je vous rappelle que les laboratoires sont interdits aux civils.")

		ANSWER("On m'a dit de remplacer votre assistant qui a eu un accident.",51)
	NODE(51)
		SAY("Alors comme ça, vous venez remplacer ce pauvre Marco? Je lui avais pourtant dit de faire attention avec la fermeture automatique des CryoVaults. Je ne sais pas s'il pourra un jour être comme avant. Et à cause de cet accident, mon projet a été assigné à une priorité inférieure. Tout ce qui me reste actuellement, c'est une pile de documents.")

		ANSWER("Et moi, qu'est-ce que je fais dans tout ça?",52)
	NODE(52)
		SAY("J'ai déjà quelque chose en tête. J'ai besoin de quelqu'un sachant être discret lorsque le besoin s'en fait sentir. Il faut que vous sachiez que de nombreux départements de ProtoPharm ont reçu le même mail étrange. Je vais vous expliquer quelques éléments pour que vous sachiez ce qui se passe.")

		ANSWER("Oui, je pense que ça sera nécessaire. Continuez.",53)
	NODE(53)
		SAY("Vous savez peut-être déjà que ProtoPharm a été créée grâce à la fusion de plusieurs compagnies pharmaceutiques. Cette fusion a été opérée en 2646, et le premier directeur de la compagnie a été un certain Jakob Finster. C'est à cette époque qu'a été mis au point le CryoVault, qui a été l'une des plus grandes inventions de la compagnie. En 2664, Finster a décidé de s'isoler dans un de ces caissons cryogéniques, et a cédé le contrôle de la compagnie à son fils. Depuis cette époque, les directeurs se sont succédés. Sandra Frasier est la dernière en date.")

		ANSWER("Et quel est le rapport avec le mail?",54)
	NODE(54)
		SAY("Ce mail déclare que Frasier est revenu et qu'il lance un ultimatum à ProtoPharm pour récupérer le contrôle de la compagnie. Je veux juste m'assurer que ce mail n'est pas une blague avant de le signaler à mes supérieurs. Je veux au moins découvrir d'où il provient.")

		ANSWER("Attendez, vous êtes en train de me dire qu'un directeur centenaire est ressuscité d'entre les morts pour se remettre au travail?",55)
	NODE(55)
		SAY("Vous comprendrez aisément que je dois d'abord faire quelques vérifications. Je pense que vous pourriez vous en charger. Gregory est un scientifique de talent, et il a probablement déjà déterminé l'origine du message. Allez le voir, et revenez me faire un rapport sur ce qu'il a éventuellement découvert.")
		SETNEXTDIALOGSTATE(300)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()


--------------------------------------------------------------------
-- Gregory
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je n'ai pas le temps de vous parler.")
			ENDDIALOG()
		else
			SAY("C'est Michail qui vous envoie, j'imagine?")

			ANSWER("Oui. Alors, vous avez des informations sur la provenance du mail?",101)
		end
	NODE(101)
		SAY("Hrmph, évidemment. Je ne suis pas stupide. Les coordonnées ont été redirigées par un satellite, étant donné que l'envoyeur s'est servi d'un émetteur mobile. Mais on sait qu'il n'a pas bougé depuis plusieurs semaines. Il se trouve à présent dans l'Outzone 01. Lorsque vous y serez, vous pourrez suivre le signal depuis votre afficheur.")

		ANSWER("Pourquoi est-ce que j'irais dans l'Outzone?",102)
	NODE(102)
		SAY("Vous ne voulez pas y aller? Michail serait vraiment heureux que vous le fassiez, je pense. Mais je ne fais que suggérer, je ne vous oblige à rien. Michail peut être quelqu'un d'assez compliqué. Il ne dit pas explicitement ce qu'il veut. Il échafaude des plans compliqués, et il oublie les problèmes essentiels. Mais c'est surtout un grand rêveur, parfois il est même complètement déconnecté du monde réel.")

		ANSWER("Mais l'Outzone, c'est dangereux.",103)
	NODE(103)
		SAY("J'irais bien, mais on ne me paye pas pour ça. Faites attention, deux assistants de la même section pourraient avoir un accident dans la même semaine, ça ne ferait pas bon effet sur les rapports.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	
--------------------------------------------------------------------
--Grand
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je n'ai rien à vous dire, rien du tout. C'est clair?")
			ENDDIALOG()
		else
			SAY("Client, ou pas?")

			ANSWER("Ni l'un ni l'autre.",151)
		end
	NODE(151)
		SAY("Alors allez-vous en, j'aime pas les ni-l'un-ni-l'autre.")

		ANSWER("Je viens à cause d'un mail quia été envoyé à ProtoPharm depuis votre machine.",152)
	NODE(152)
		SAY("Allez-vous en... Attendez, de ma machine vous dites? J'ai jamais envoyé de mail à ProtoPharm. Vous devez faire une erreur, runner.")

		ANSWER("Je sais que le signal remonte pourtant jusqu'à vous.",153)
	NODE(153)
		SAY("Possible. Alors ça veut dire que quelqu'un a mis un virus dans mon système. C'est rageant, il y a deux jours à peine que j'ai fait une vérification. Et j'arrive même pas à l'effacer manuellement. Et merde!")

		ANSWER("Vous avez envoyé ce mail, ou pas? Et si ça n'est pas vous, qui l'a fait?",154)
	NODE(154)
		SAY("Ecoutez-moi bien, OK? J'ai pas envoyé votre mail, c'est probablement ce satané virus. Et maintenant, j'arrive même plus à l'effacer. Il va me falloir un décodeur puissant, mais j'en ai pas.")

		ANSWER("ProtoPharm devrait en avoir un. Si vous trouvez où vous avez eu ce virus, je vous apporte le programme de la part de Gregory. Ca marche?",155)
	NODE(155)
		GIVEITEM(9400)
--Codebrecherdaten
		SAY("Affaire conclue. Moi, tout ce que je veux c'est me débarrasser de ce virus. Ma pauvre console... Tenez, voilà les infos nécessaires pour le programme.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

--------------------------------------------------------------------
--Gregory
--200
	NODE(200)
		TAKEITEM(9400)
		if(result==0)then
			SAY("Vous êtes déjà allé dans l'Outzone 01?")
			ENDDIALOG()
		else
			SAY("Déjà de retour? Alors, qu'est-ce que vous avez trouvé?")

			ANSWER("Je suis sur une piste, mais il va d'abord falloir me donner un programme de décodage. Ensuite, je pense que j'aurai toutes les informations que désire Michail.",201)
		end
	NODE(201)
--SOFTWARE codebrecher
		GIVEITEM(9401)
		SAY("Très bien. Mais utilisez-le avec précaution, ne le laissez pas filer entre des mains mal intentionnées. Faites votre rapport directement à Michail la prochaine fois, je ne suis pas responsable de cette affaire. Et pour être honnête, ça n'est pas plus mal ainsi.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Je ne peux pas vous conseiller. Allez dans l'Outzone, et puis faites votre rapport à Michail.")
		ENDDIALOG()
--------------------------------------------------------------------
--Grand
--250

	NODE(250)
		TAKEITEM(9401)
		if(result==0)then
			SAY("Dépêchez-vous de me trouver ce décodeur! Vite! Vous n'aviez pas dit que quelqu'un de ProtoPharm avait une solution?")
			ENDDIALOG()
		else
			SAY("Donnez-moi ça, runner! Il me faut ce programme!")

			ANSWER("Pas si vite, l'ami. Je veux d'abord savoir qui a envoyé ce mail.",251)
		end
	NODE(251)
		SAY("Bon, très bien. Le mail a été envoyé par un virus, originaire d'une section ProtoPharm. La section 13, pour être précis. Maintenant, donnez-moi ce programme.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(252)
		ENDDIALOG()
	NODE(252)
		SAY("Le mail vient de la section 13. Faites-moi confiance, je sais ce que je dis.")
		ENDDIALOG()

--------------------------------------------------------------------
--Michail
--300	
	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous avez demandé à Gregory au sujet de ce mail? Ca pourrait être très important.")
			ENDDIALOG()
		else
			SAY("Alors dites-moi ce que vous avez trouvé. J'espère que vous avez des éléments explicites.")

			ANSWER("Evidemment. Ce mail a été remonté jusqu'à un hacker qui se trouve dans l'Outzone.",301)
		end
	NODE(301)
		SAY("Ah, donc c'était une attaque de hacker. Probablement quelqu'un qui a cherché à nous faire peur.")

		ANSWER("Non, pas vraiment. En fait, le hacker n'était qu'un leurre. Le mail vient en premier lieu de ProtoPharm, la section 13 pour être précis.",302)
	NODE(302)
		GIVEMONEY(5000)
		SAY("La section 13? Ce nom... C'est la section des CryoVaults! Personne ne peut envoyer de mail de là-bas. Je pense que je vais transmettre tout ça à mes supérieurs. Très intéressant, je ne pensais pas que c'était possible. Tenez, voici votre récompense. Ce serait raisonnable d'aller voir notre directeur des ressources humaines lorsque vous serez plus compétent. Pour l'instant, je n'ai plus besoin d'un assistant. Vous pouvez y aller (prochaine mission au niveau 20)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(6,0)
		ENDDIALOG()
		


end