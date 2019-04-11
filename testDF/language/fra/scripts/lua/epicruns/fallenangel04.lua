--new
--Fallen Angel Muster
--
--Trigger
--Triggernumber,Type,Person
--0,D,cONSTANTINE
--1,D,Gregory
--2,D,Figaro
--3,D,Constantine(200)
--
--Startnode, Person
--0, Personal Director
--50, Constantine
--100, Rick Boujard	
--150, Figaro
--200, Constantine
--250,
--
--Items
----703-Destrosol, 720-Whiteflash, 721-Destrosol
--Grimm Id Cube

function DIALOG()
--------------------------------------------------------------------
-- Personal Director
--0
	
	NODE(0)
		SAY("Constantine m'a dit qu'elle aimerait vous parler. A propos de quelqu'un que vous connaissez trop bien, m'a-t-elle dit.")

		ANSWER("Je vais la voir immédiatement.",1)
		ANSWER("Elle attendra...",2)
	NODE(1)
		SAY("A part ça, rien de nouveau.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(2)
		SAY("Comme vous voulez, mais ne la faites pas poireauter trop longtemps.")
		ENDDIALOG()
	NODE(3)
		SAY("Allez parler à Constantine, elle vous attend dans le réacteur 1 de Tech Haven.")

		ENDDIALOG()
--------------------------------------------------------------------
-- Constantine
--50
	NODE(50)
		SAY("Ah, vous voilà. Je voulais vous parler de Grimm, c'est urgent. Tous ces problèmes qu'on a eus dernièrement, ce ne sont pas des coincidences.")

		ANSWER("En effet, on cumule trop d'ennuis, il y a quelque chose de louche.",51)
	NODE(51)
		SAY("Vous pensez à quelque chose en particulier?")

		ANSWER("Lorsque j'ai vu l'employé de ProtoPharm, il m'a demandé si j'étais un Ange Déchu. Comment a-t-il pu savoir ça? Et plus tard, je me suis rendu compte que les produits chimiques étaient contaminés. Et ça n'est pas tout.",52)
	NODE(52)
		SAY("Je commence à comprendre... continuez.")

		ANSWER("Quand j'ai vu Max, il m'a dit qu'il était payé par Crahn pour me tuer. Mais avant qu'ilse mette à agir comme ça, il a demandé à voir ma carte d'identité.",53)
	NODE(53)
		SAY("Alors c'était un piège. Il devait s'assurer qu'il allait tuer la bonne personne.")

		ANSWER("Voilà. Et la seule personne à part vous qui sait que j'ai besoin de ces produits chimiques, c'est Grimm.",54)
	NODE(54)
		SAY("Je veux bien le croire, mais ça n'est pas parce que Grimm ne vous aime pas qu'il est responsable. Vous savez, il est comme ça avec tout le monde. Mais si c'est vraiment lui, il a dû laisser des traces.")

		ANSWER("Possible, mais je ne sais pas par où commencer mes recherches.",55)
	NODE(55)
		SAY("Rick Boujard, vous devriez lui demander. Il va falloir faire quelques efforts pour le convaincre, mais ça devrait être à votre portée.")

		ANSWER("Ca vaut le coup de tenter. Si je réussis à nous éviter de nouveaux problèmes, ça en vaut la chandelle.",56)
	NODE(56)
		SAY("Pendant ce temps, je vais voir ce que je trouve sur le réseau. Revenez plus tard, et dites-moi ce que vous trouvez de votre côté.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		
	

--------------------------------------------------------------------
-- Rick Boujard
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Vous n'irez pas plus loin. Qu'est-ce que vous vous imaginez? C'est une zone interdite!")
			ENDDIALOG()
		else
			SAY("J'ai pas le temps de vous parler. Et qu'est-ce que vous faites ici, d'abord? Attendez... j'ai l'impression que je vous connais.")

			ANSWER("On s'est déjà vus, oui. Vous vous rappelez, les produits chimiques...?",101)
		end
	NODE(101)
		SAY("Ah, c'est vous! Qu'est-ce que vous voulez? Vous avez eu votre livraison, basta. Au revoir et bon vent!")

		ANSWER("Vous saviez que les produits que vous me donniez étaient contaminés?",102)
	NODE(102)
		SAY("Je vois pas du tout de quoi vous voulez parler, désolé. Je vous ai donné des produits purs, ce que vous en avez fait ensuite, c'est pas mon problème.")

		ANSWER("Qui a touché à ces produits? Qui cherche à m'attirer des ennuis comme ça?",103)
	NODE(103)
		SAY("Réfléchissez un peu, vous croyez que je m'amuserais à vous causer des problèmes? Je suis ici toute la journée, j'ai d'autres chats à fouetter.")

		ANSWER("Ce que je sais, c'est que ces produits étaient contaminés. Et je veux savoir qui est derrière tout ça.",104)
	NODE(104)
		SAY("D'accord, je vais vous en apprendre une bonne. Je vais vous dire d'où je tiens ces produits, mais pour soulager ma conscience, il va me falloir 5.000 crédits. Vous êtes d'accord?")

		ANSWER("Allez, je paie, je veux savoir.",105)
	NODE(105)
		TAKEMONEY(5000)
		if(result==0)then
			SAY("Filez-moi d'abord le pognon.")
			ENDDIALOG()
		else
			SAY("C'est un dealer du Dragon Noir. Il s'appelle Figaro. Un type louche. Il m'a donné ça, mais je pense qu'à ce moment là, le produit était pur. Enfin je dis ça, mais je n'en mettrais pas ma main à couper.")

			ANSWER("Et comment se fait-il que vous, ProtoPharm, vous vous fournissiez chez le Dragon Noir?",106)
		end
	NODE(106)
		SAY("C'était un deal avec eux. C'est ce que j'allais vous expliquer.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()
		
	NODE(107)
		SAY("Figaro doit se trouver quelque part dans Pepper Park. Il devrait vous en apprendre davantage.")

		ENDDIALOG()

--------------------------------------------------------------------
-- Figaro
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Salut runner, j'aimerais bien te donner un coup de main mais j'ai plus rien en stock, repasse plus tard.")
			ENDDIALOG()
		else
			SAY("Salut runner, t'as l'air en manque... T'en veux?")

			ANSWER("Ah, te voilà. Qu'est-ce que tu as en stock aujourd'hui?",152)
			ANSWER("Non, je suis pas là pour me droguer.",151)
		end
	NODE(151)
		SAY("Ah c'est con, tu commençais à me plaire. Allez va te faire voir chez Reza, si tu veux pas de drogues c'est que t'es pas quelqu'un de normal.")
		ENDDIALOG()

	NODE(152)
		SAY("J'ai du top du top. Si tu as envie de dérouiller un gars que tu peux pas voir en peinture, je recommande de la X-Strong. Si tu veux faire ça vite et bien, j'ajouterais de la Whiteflash. Mais si tu es du genre à avoir des problèmes de concentration, pourquoi pas une petite Destrosol... C'est surtout pour les moines PSI, mais ça te réveille le cerveau comme pas deux!")

		ANSWER("Va pour une Whiteflash.",153)
		ANSWER("Je prends une X-Strong.",154)
		ANSWER("Une Destrosol, soyons fous, soyons jeunes.",155)
--703-Destrosol, 720-Whiteflash, 721-Destrosol
	NODE(153)
		TAKEMONEY(500)
		if(result==0)then
			SAY("Pas d'pognon, pas d'défonce.")
			ENDDIALOG()
		else
			GIVEITEM(720)
			SAY("Excellent choix. Je te fais un prix, rien que parce que c'est toi. Si y t'en faut encore, tu sas où me trouver.")

			ANSWER("Maintenant qu'on est copains, tu pourrais peut-être me filer un tuyau...?",156)
		end
	NODE(154)
		TAKEMONEY(500)
		if(result==0)then
			SAY("Pas d'pognon, pas d'défonce.")
			ENDDIALOG()
		else
			GIVEITEM(721)
			SAY("Excellent choix. Je te fais un prix, rien que parce que c'est toi. Si y t'en faut encore, tu sas où me trouver.")

			ANSWER("Maintenant qu'on est copains, tu pourrais peut-être me filer un tuyau...?",156)
		end
	NODE(155)
		TAKEMONEY(500)
		if(result==0)then
			SAY("Pas d'pognon, pas d'défonce.")
			ENDDIALOG()
		else
			GIVEITEM(703)
			SAY("Excellent choix. Je te fais un prix, rien que parce que c'est toi. Si y t'en faut encore, tu sas où me trouver.")

			ANSWER("Maintenant qu'on est copains, tu pourrais peut-être me filer un tuyau...?",156)
		end
	NODE(156)
		SAY("Mais bien sûr, j'aime aider mes copains. Qu'est-ce que tu veux savoir?")

		ANSWER("Comment dire... J'ai un ami chez ProtoPharm. Tu le connais peut-être, il s'appelle Rick Boujard.",157)
	NODE(157)
		SAY("Ouais, je connais ce nom. Un problème avec lui?")

		ANSWER("Il m'a fait une livraison très spéciale, et maintenant il est à court, il lui en faut encore. Il m'a déjà tout donné.",158)
	NODE(158)
		SAY("Désolé, j'peux rien faire. C'était une livraison unique de Tangent. Un gars qui s'appelle Miles, c'est lui qui m'a refilé ça. Me demande pas pourquoi on m'a demandé de refiler ça à Rick, j'en sais rien, mais la paie était bonne. Par contre, si tu veux encore de la dope, je peux t'arranger ça.")

		ANSWER("Merci, je vais déjà aller essayer ce que je t'ai pris. A la prochaine.",159)
	NODE(159)
		SAY("Si tu es dans le besoin, tu sais où passer...")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(160)
		ENDDIALOG()
		
	NODE(160)
		SAY("Désolé, j'ai plus rien en stock.")

		ENDDIALOG()


--------------------------------------------------------------------
--Constantine
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous avez suivi la piste Rick Boujard à El Farid?")
			ENDDIALOG()	
		else
			SAY("Je me demandais comment vous alliez, je m'inquiétais. Vous avez trouvé quelque chose?")

			ANSWER("Au moins, je sais que les produits chimiques viennent de Tangent.",201)
		end
	NODE(201)
		SAY("C'est une idée à vous, ou vous avez une preuve?")

		ANSWER("Non, je connais seulement le nom de l'intermédiaire. Un certain Fargo Miles.",202)
	NODE(202)
		SAY("C'est déjà ça. Peut-être que ça peut se combiner avec ce que j'ai trouvé de mon côté. Si j'en crois son emploi du temps, Grimm a quitté Tech Haven plusieurs fois ces derniers temps.")

		ANSWER("J'ai du mal à voir en quoi ça peut nous faire avancer.",203)
	NODE(203)
		SAY("J'y viens. J'ai trouvé deux emails envoyés à Tangent et Crahn. Heureusement, Grimm a oublié de les effacer de la base de données. Ils révélaient un emplacement où Grimm avait caché des données compromettantes.")

		ANSWER("Donc, Grimm a fourni des infos à Crahn et Tangent? Alors tout était vrai... C'est pour ça que j'ai rencontré tant de difficultés dès que je faisais le moindre geste.",204)
	NODE(204)
		SAY("Oui, ça s'est passé comme ça. Mais pour l'instant, nous n'avons que des suppositions. Les emails ne sont pas des preuves réelles. On ne sait même pas où se trouve cette cachette à preuve compromettantes.")

		ANSWER("On est dans une impasse...",205)
		ANSWER("Vous avez vérifié les vidéos de surveillance?",206)
		ANSWER("Et les données que Grimm a emportées en quittant Tech Haven?",208)
	NODE(205)
		SAY("Alors on est bloqués... Quel dommage!")

		ENDDIALOG()
	NODE(206)
		SAY("Vous pouvez préciser?")

		ANSWER("J'imagine que CityAdmin, le NCPD, Neocron, ont plein de caméras partout, et que Fargo Miles doit se retrouver sur plusieurs d'entre elles. Si on a de la chance, on pourra le voir se rendre à la planque. On peut essayer.",207)
	NODE(207)
		SAY("Ca prendre quelques minutes. Allez prendre l'air et revenez, j'aurai peut-être quelque chose.")
		SETNEXTDIALOGSTATE(209)
		ENDDIALOG()
		
	NODE(208)
		SAY("Impossible, les logs ont été effacés maintenant. Trop anciens.")

		ANSWER("Il a dû prévoir ce genre de détails en effet.",204)


	NODE(209)
		SAY("Alors... Je n'ai rien trouvé dans les dossiers du NCPD, mais j'ai trouvé une vidéo de la zone Sherman Bay. Selon les données de la vidéo, c'est Miles qu'on voit là-bas. Mais je n'en ai pas la certitude absolue.")

		ANSWER("Et est-ce qu'on voit la planque sur cette vidéo? Quelque chose qui pourrait nous aider?",210)
	NODE(210)
		SAY("Je crois reconnaître quelques antennes satellite. On voit Fargo rentrer dans un bâtiment, et ouvrir une sorte de caisse codée, puis en sortir quelque chose. Mais l'enregistrement se termine là. Cette boîte a certainement un rapport avec le reste.")

		ANSWER("Sherman Bay? Je vais aller là-bas, voir ce que ça donne.",211)
	NODE(211)
		SAY("Bonne chance. Je pense que j'ai atteint les limites de mes capacités sur le réseau, j'ai déjà tout testé. Si vous trouvez quelque chose, tenez-moi au courant sans tarder.")
		SETNEXTDIALOGSTATE(212)
		ENDDIALOG()
--Spieler besucht Sherman Bay und findet dort im Dungeon eine Hack Box, in dem er einen
--Datacube mit belastendem Material findet.
-- Grimm ID Cube

	NODE(212)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Il nous faut plus d'infos. Vous avez pu parler à Rick Boujard?")
			ENDDIALOG()
		else
			TAKEITEM(9301)
			if(result==0)then
				SAY("Vous avez pu aller à Sherman Bay?")
				ENDDIALOG()
			else	
				SAY("Déjà de retour? J'espère que vous avez du nouveau.")

				ANSWER("En effet, et on avait raison depuis le début. Grimm m'a vendu à Crahn et à Tangent. Tout est sur ce datacube.",213)
			end
		end
	NODE(213)
		SAY("On a la preuve qu'il nous faut, excellent! Je vais transmettre ce cube au Conseil.")

		ANSWER("Tenez. j'espère qu'on va enfin pouvoir clore ce dossier.",214)
	NODE(214)
		SAY("Je pense que le Conseil aura besoin de temps pour analyser les données et prendre sa décision. Il faut attendre, et je n'ai pas envie de commencer le programme de recherche tant que cette affaire ne sera pas tirée au clair. On va mettre ce temps à profit pour faire nos recherches personnelles. (prochaine mission au niveau 40.")
		EPICRUNFINISHED(14,3)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
	

end