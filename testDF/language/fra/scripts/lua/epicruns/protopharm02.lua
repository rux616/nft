--new
--ProtoPharm

--
--Trigger
--Triggernumber,Type,Person
--0,D,GEORGE 50
--1,D,GEORGE 150
--2,D,Michail 350
--3
--
--Startnode, Person
--0, Human Resource Director
--50, George
--100, FIGARO
--150, GEORGE
--200, MICHAIL
--250, GEORGE
--300, SUSAN
--350, Michail
--400, George
--
--Items
--SPIRULA PAKET 100 9402
--DATENDISK FÜR SUSAN 200 9403
--DATACUBE FÜR MICHAIL 350 9404

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Vous avez enquêté sur le mail mystérieux, c'est bien ça? Celui qui demandait qu'on abandonne ProtoPharm?")

		ANSWER("Je dirais même que j'ai apporté beaucoup de réponses à ce sujet.",1)
	NODE(1)
		SAY("Alors M. George va avoir besoin de vous. Dépêchez-vous, il vous attend. Je vous aurais bien contacté plus tôt, mais vous n'arrêtez pas de vous déplacer, vous êtes difficile à joindre. Vous le trouverez dans la tour.")
		SETNEXTDIALOGSTATE(2)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(2)
		SAY("Brandon George vous attend. Il fait partie d'un groupe d'enquête de ProtoPharm.")

		ENDDIALOG()
--------------------------------------------------------------------
--George
--50
	NODE(50)
		SAY("Bonjour runner. Je m'appelle Brandon George, agent spécial de ProtoPharm. On m'a chargé de l'affaire. Selon mon dossier, vous avez déjà accompli une partie de l'enquête, et vous en savez déjà plus que moi sur le sujet. Je pense que le mieux est qu'on travaille ensemble pendant quelques temps.")

		ANSWER("Je sais peut-être quelque chose. Mais qu'est-ce que j'y gagnerai?",51)
	NODE(51)
		SAY("Vous travaillez pour ProtoPharm, n'est-ce pas? Du moins, vous avez un appartement que nous vous avons fourni. Si vous n'en êtes pas satisfait, on peut toujours vous le retirer. C'est votre devoir de nous aider contre les menaces extérieures, et ça ne vous convient pas, il est encore temps de partir. Moi, je préférerais travailler avec vous que contre vous. Et... il y aura une récompense pour ce travail, si je puis m'exprimer ainsi.")

		ANSWER("Moi, je ne demande pas mieux que d'aider la compagnie. Mais je m'inquiète pour les risques encourus.",52)
	NODE(52)
		SAY("Excellent. Alors poursuivons. Qu'est-ce que vous pensez de Michail?")

		ANSWER("Je ne le connais pas bien, mais il semble savoir ce qu'il veut. Il est très ambitieux, et le mot n'est peut-être pas assez fort.",53)
	NODE(53)
		SAY("Ca confirme mon impression. Qu'est-ce que vous pensez du fait que le mail provienne de la section dont s'occupe justement Michail? Une coïncidence, ou bien autre chose? Est-ce que vous le croyez responsable, ou bien manipulé par quelqu'un d'autre?")

		ANSWER("Je n'ai aucun moyen de le savoir. On entre dans le domaine de la spéculation.",54)
	NODE(54)
		SAY("Je comprends. Mais vous pouvez me faire une faveur? Dans mon enquête, je suis tombé sur un membre du Dragon Noir. Si j'allais le rencontrer en personne, je serais immédiatement reconnu, donc je ne préfère pas. Allez le voir à Pepper Park 03, puis faites-moi votre rapport.")
		SETNEXTDIALOGSTATE(150)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	
--------------------------------------------------------------------
--FIGARO
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Hé, reste pas là, tu fais peur aux clients.")
			ENDDIALOG()
		else
			SAY("hé toi, approche un peu. Je t'attends depuis une éternité, qu'est-ce qui s'est passé? C'est bon, j'ai la livraison spéciale.")

			ANSWER("Quoi? Pardon?",101)
		end
	NODE(101)
		SAY("Ben... la livraison spéciale. Tu te souviens, non?")

		ANSWER("Ah, oui, bien sûr. Et c'est pour moi, donc?",102)
	NODE(102)
		GIVEITEM(9402)
--SPIRULA PACKET
		SAY("Bon, maintenant tu peux dire à Christienne que tout marche comme prévu. Le plan va bientôt se lancer. Allez, va-t-en, je veux pas qu'on nous voie ensemble.")
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
	NODE(103)
		SAY("Runner, je t'ai déjà donné le colis. Qu'est-ce que tu attends?")
		ENDDIALOG()

--------------------------------------------------------------------
-- BRANDON GEORGE
--150
	NODE(150)
		TAKEITEM(9402)
		if(result==0)then
			SAY("Va voir un certain Figaro, à Pepper Park. Le dealer typique.")
			ENDDIALOG()
		else
			SAY("J'ai du travail... oh, c'est vous? Alors, vous avez trouvé des éléments intéressants?")

			ANSWER("Figaro m'a pris pour quelqu'un d'autre. Il m'a donné un paquet et m'a renvoyé avant que je puisse aligner deux mots.",151)
		end
	NODE(151)
		SAY("J'espère pour vous que ça nous sera utile. Je suis dans le noir depuis bien trop longtemps.")

		ANSWER("Voyons... Sur le colis c'est marqué ProtoPharm. Il y a une date de production, ça remonte à deux semaines.",152)
	NODE(152)
		SAY("Montrez-moi ça. Mais c'est vrai! On va bientôt savoir ce que c'est.")

		ANSWER("Attention, c'est peut-être un explosif!",153)
	NODE(153)
		SAY("Ne soyez pas stupide. Qui pourrait faire entrer des explosifs dans la tour, avec tous ces détecteurs? Et puis c'est bien trop petit... De la Spirula? C'est impossible, la production a été annulée il y a des années...")

		ANSWER("La Spirula? La drogue qui entraînait des mutations?",154)
	NODE(154)
		SAY("C'est cela même. Malgré des produits comme la Vitae, qui se vend toujours bien, les gens se souviennent encore de la Spirula. Mais qui pourrait avoir intérêt à distribuer ça?")

		ANSWER("Peut-être quelqu'un qui veut faire chanter ProtoPharm.",155)
	NODE(155)
		SAY("Je n'ai pas de preuves, mais je soupçonne Michail d'être lié à tout ça. Ce type a trop de secrets. Et de plus, c'est le seul à pouvoir accéder à la section 13. Allez le voir, et interrogez-le autant que possible. Je vais voir pour la récompense que vous allez toucher.")

		ANSWER("Comme vous voulez. Mais ça n'expliquera pas la relation avec le Dragon Noir et Finster.",156)
	NODE(156)
		SAY("Je m'occuperai de ça plus tard. Je trouverai bien une solution. S'il vous donne quelque chose, faites-le passer par moi d'abord.")
		SETNEXTDIALOGSTATE(250)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		


--------------------------------------------------------------------
-- MICHAIL
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Bonjour. Je n'ai pas le temps de vous parler.")
			ENDDIALOG()
		else
			SAY("Ne me dérangez pas, j'ai des choses importantes à faire.")
	
			ANSWER("Vous ne vous débarrasserez pas de moi si facilement. Il faut qu'on parle.",201)
		end
	NODE(201)
		SAY("Alors faites vite.")

		ANSWER("J'ai quelques questions à vous poser.",202)
	NODE(202)
		SAY("Quel genre?")

		ANSWER("Au sujet du CryoVault, du mail, et de Finster. Je pense que vous voyez de quoi je parle.",203)
	NODE(203)
		SAY("Je ne peux pas vous répondre, j'ai des choses plus importantes à faire, comme vous voyez.")

		ANSWER("Est-ce que c'est vous qui avez envoyé ce mail? Est-ce que vous êtes lié au retour de la Spirula sur le marché?",204)
	NODE(204)
		SAY("C'est ridicule. Je vous dirai ce que je sais si vous me prouvez que je peux vous faire confiance. Si vous refusez, alors je saurai à qui m'attendre de votre part.")

		ANSWER("D'accord. Mais je veux d'abord savoir ce que vous aviez en tête.",205)
	NODE(205)
		GIVEITEM(9403)
--DATENDISK FÜR SUSAN
		SAY("Donnez ce disque de données à une de mes amies. Elle s'appelle Susan, et elle vit à Point Red. Quand vous aurez terminé, vous aurez vos réponses.")
		SETNEXTDIALOGSTATE(350)
		ENDDIALOG()
--------------------------------------------------------------------
-- GEORGE
--250
	NODE(250)
		TAKEITEM(9403)
		if(result==0)then

			ISMISSIONTARGETACCOMPLISHED(2)
			if(result==0)then
				SAY("Allez d'abord voir Michail, et tirez de lui ce que vous pouvez. S'il vous donne quelque chose, faites-le passer par moi d'abord.")
				ENDDIALOG()
			else
				SAY("Quoi?! Vous avez donné des informations à l'amis de Michail sans me prévenir? Je vous ai clairement dit de passer par moi d'abord s'il vous donnait quelque chose!")

				ANSWER("Et voilà, je savais bien que j'avais oublié quelque chose. Bon, qu'est-ce que je dois faire maintenant?",402)
			end
		else
			GIVEITEM(9403)
			SAY("Alors, qu'est-ce que vous avez appris?")
	
			ANSWER("Rien pour l'instant. Il vaut que je donne ça à son amie. Mais je pensais que vous voudriez jeter un oeil dessus d'abord.",251)
		end
	NODE(251)
		SAY("Bon travail. Voyons ça... Les données semblent être cryptées. Je vais en faire une copie. Juste au cas où. Maintenant dépêchez-vous de porter ça à son amie, ou bien il va avoir des soupçons. Et prévenez-moi si vous avez de nouveaux éléments pour l'enquête.")
		SETNEXTDIALOGSTATE(400)
		ENDDIALOG()
		
	NODE(252)
		SAY("Dépêchez-vous de porter ces données à Susan, je ne veux pas que Michail ait des soupçons. Et revenez lorsque vous avez plus d'indices.")
		ENDDIALOG()

--------------------------------------------------------------------
-- SUSAN
--300
	NODE(300)
		TAKEITEM(9403)
		if(result==0)then
			SAY("Je ne vous connais pas, je ne vous ai jamais vu. Vous feriez mieux de vous en aller et de ne jamais revenir.")
			ENDDIALOG()
		else
			SAY("De la visite? Pour moi? Quelle surprise! Qu'est-ce que vous voulez?")
	
			ANSWER("J'aimerais vous dire que je viens pour bavarder, mais en vérité c'est Michail qui m'envoie.",301)
		end
	NODE(301)
		SAY("Michail? Comment va-t-il? Ca fait trois jours que je ne l'ai pas vu. Il a toujours beaucoup de travail?")
	
		ANSWER("Apparemment il va bien. Tenez, voici quelque chose qu'il m'a demandé de vous donner.",302)
	NODE(302)
		SAY("Merci, je sais ce que c'est. Vous travaillez dans son équipe?")
	
		ANSWER("Pas exactement. Pourquoi?",303)
	NODE(303)
		SAY("J'imagine que Michail doit vous sembler étrange, n'est-ce pas? Mais ne le jugez pas hâtivement. Il veut aider la race humaine toute entière, c'est son rêve de toujours.")
	
		ANSWER("En comment? En détruisant ProtoPharm de l'intérieur?",304)	
	NODE(304)
		SAY("Quoi? C'est ridicule. Ce qu'il veut, c'est guérir les mutations définitivement. Mais je vois que vous ne comprenez pas ça. Vous ne comprenez pas qu'on cherche à aider les autres. Fichez le camp d'ici.")
	
		ANSWER("Je travaille pour ProtoPharm, pas pour Michail. Bonne journée à vous. Je vais quand même retourner le voir.",305)
	NODE(305)
		GIVEITEM(9404)
-- DATACUBE FÜR mICHAIL
		SAY("Allez-vous en, je ne veux rien avoir à faire avec vous. Tenez, rendez ça à Michail, il en aura besoin. C'est un DataCube que lui a donné un de ses amis. Mais ne me demandez pas ce que c'est.")
		SETNEXTDIALOGSTATE(306)

		ENDDIALOG()
	NODE(306)
		SAY("Je vous l'ai déjà dit, je ne veux pas être impliquée là-dedans. Mais n'oubliez pas de donner ce cube à Michail.")
		ENDDIALOG()

--------------------------------------------------------------------
-- MICHAIL
--350
	
  	NODE(350)
		TAKEITEM(9404)
		if(result==0)then
			SAY("Allez donner ce disque à Susan, et ensuite on parlera.")
			ENDDIALOG()
		else
			SAY("Maintenant que vous revenez de vos péripéties, vous voulez des réponses. Soit. Mais faites vite, j'ai à faire.")
	
			ANSWER("Qu'est-ce que vous savez au sujet de ce mail?",351)
		end
	NODE(351)
		SAY("Il dit que Jakob Finster est revenu prendre le contrôle de la compagnie. Il donne à ProtoPharm un ultimatum. Evidemment, ProtoPharm refusera. Sandra Frasier ne va pas abandonner la partie si facilement. On m'a dit aussi que ce mail provenait de la section 13, et je suis pleinement conscient que c'est une section sous ma responsabilité.")
	
		ANSWER("Alors vous devez savoir qui a envoyé ce mail?",352)
	NODE(352)
		SAY("Peut-être un employé sous mes ordres. Mais les recherches n'aboutiront pas, il y en a beaucoup trop... Autre chose?")
	
		ANSWER("Juste une dernière question. Qu'est-ce que vous savez au sujet de la Spirula?",353)
	NODE(353)
		SAY("La Spirula? Je... euhhh... Ca n'est pas sous ma responsabilité. Maintenant laissez-moi tranquille.")
		SETNEXTDIALOGSTATE(354)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(354)
		SAY("Je n'ai plus envie de vous parler. Allez-vous en.")
		ENDDIALOG()	
--------------------------------------------------------------------
-- George
--400

	NODE(400)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Donnez ce disque à Susan, je ne veux pas créer de soupçons. Mais revenez me voir si vous en apprenez davantage.")
			ENDDIALOG()
		else
			SAY("Des nouvelles, runner? Je déteste ne pas pouvoir tout faire moi-même.")
	
			ANSWER("Michail a certainement un rapport avec l'affaire de la Spirula. Mais il n'a pas été très coopératif.",401)
		end
	NODE(401)
		GIVEMONEY(10000)
		SAY("Il sait probablement déjà que vous me dites tout ce qu'il vous raconte. Espérons que cela le pousse à prendre des décisions trop hâtives et qu'il s'y casse les dents. Lorsqu'il fera une erreur, j'agirai. Mais je ne pourrai y arriver que grâce à vous. Je suis en train de décoder les informations que vous m'avez données, et ensuite j'aurai de nouveau besoin de vous. Tenez, votre récompense. Un peu plus que la dernière fois, je reconnais que vous avez vraiment fait du bon travail. (prochaine mission au niveau 30)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(6,1)
		ENDDIALOG()

	NODE(402)
		SAY("Vous n'avez plus rien à faire. Comme vous avez échoué, nous devrons trouver une autre source pour ces données. Comme vous n'avez fait que la moitié du travail, vous ne toucherez que la moitié de la somme. Peut-être aurez-vous plus de chance la prochaine fois. (prochaine mission au niveau 30)")
		GIVEMONEY(5000)
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(6,1)
		ENDDIALOG()
end