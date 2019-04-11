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

		ANSWER("Je vais la voir imm�diatement.",1)
		ANSWER("Elle attendra...",2)
	NODE(1)
		SAY("A part �a, rien de nouveau.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(2)
		SAY("Comme vous voulez, mais ne la faites pas poireauter trop longtemps.")
		ENDDIALOG()
	NODE(3)
		SAY("Allez parler � Constantine, elle vous attend dans le r�acteur 1 de Tech Haven.")

		ENDDIALOG()
--------------------------------------------------------------------
-- Constantine
--50
	NODE(50)
		SAY("Ah, vous voil�. Je voulais vous parler de Grimm, c'est urgent. Tous ces probl�mes qu'on a eus derni�rement, ce ne sont pas des coincidences.")

		ANSWER("En effet, on cumule trop d'ennuis, il y a quelque chose de louche.",51)
	NODE(51)
		SAY("Vous pensez � quelque chose en particulier?")

		ANSWER("Lorsque j'ai vu l'employ� de ProtoPharm, il m'a demand� si j'�tais un Ange D�chu. Comment a-t-il pu savoir �a? Et plus tard, je me suis rendu compte que les produits chimiques �taient contamin�s. Et �a n'est pas tout.",52)
	NODE(52)
		SAY("Je commence � comprendre... continuez.")

		ANSWER("Quand j'ai vu Max, il m'a dit qu'il �tait pay� par Crahn pour me tuer. Mais avant qu'ilse mette � agir comme �a, il a demand� � voir ma carte d'identit�.",53)
	NODE(53)
		SAY("Alors c'�tait un pi�ge. Il devait s'assurer qu'il allait tuer la bonne personne.")

		ANSWER("Voil�. Et la seule personne � part vous qui sait que j'ai besoin de ces produits chimiques, c'est Grimm.",54)
	NODE(54)
		SAY("Je veux bien le croire, mais �a n'est pas parce que Grimm ne vous aime pas qu'il est responsable. Vous savez, il est comme �a avec tout le monde. Mais si c'est vraiment lui, il a d� laisser des traces.")

		ANSWER("Possible, mais je ne sais pas par o� commencer mes recherches.",55)
	NODE(55)
		SAY("Rick Boujard, vous devriez lui demander. Il va falloir faire quelques efforts pour le convaincre, mais �a devrait �tre � votre port�e.")

		ANSWER("Ca vaut le coup de tenter. Si je r�ussis � nous �viter de nouveaux probl�mes, �a en vaut la chandelle.",56)
	NODE(56)
		SAY("Pendant ce temps, je vais voir ce que je trouve sur le r�seau. Revenez plus tard, et dites-moi ce que vous trouvez de votre c�t�.")
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

			ANSWER("On s'est d�j� vus, oui. Vous vous rappelez, les produits chimiques...?",101)
		end
	NODE(101)
		SAY("Ah, c'est vous! Qu'est-ce que vous voulez? Vous avez eu votre livraison, basta. Au revoir et bon vent!")

		ANSWER("Vous saviez que les produits que vous me donniez �taient contamin�s?",102)
	NODE(102)
		SAY("Je vois pas du tout de quoi vous voulez parler, d�sol�. Je vous ai donn� des produits purs, ce que vous en avez fait ensuite, c'est pas mon probl�me.")

		ANSWER("Qui a touch� � ces produits? Qui cherche � m'attirer des ennuis comme �a?",103)
	NODE(103)
		SAY("R�fl�chissez un peu, vous croyez que je m'amuserais � vous causer des probl�mes? Je suis ici toute la journ�e, j'ai d'autres chats � fouetter.")

		ANSWER("Ce que je sais, c'est que ces produits �taient contamin�s. Et je veux savoir qui est derri�re tout �a.",104)
	NODE(104)
		SAY("D'accord, je vais vous en apprendre une bonne. Je vais vous dire d'o� je tiens ces produits, mais pour soulager ma conscience, il va me falloir 5.000 cr�dits. Vous �tes d'accord?")

		ANSWER("Allez, je paie, je veux savoir.",105)
	NODE(105)
		TAKEMONEY(5000)
		if(result==0)then
			SAY("Filez-moi d'abord le pognon.")
			ENDDIALOG()
		else
			SAY("C'est un dealer du Dragon Noir. Il s'appelle Figaro. Un type louche. Il m'a donn� �a, mais je pense qu'� ce moment l�, le produit �tait pur. Enfin je dis �a, mais je n'en mettrais pas ma main � couper.")

			ANSWER("Et comment se fait-il que vous, ProtoPharm, vous vous fournissiez chez le Dragon Noir?",106)
		end
	NODE(106)
		SAY("C'�tait un deal avec eux. C'est ce que j'allais vous expliquer.")
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

			ANSWER("Ah, te voil�. Qu'est-ce que tu as en stock aujourd'hui?",152)
			ANSWER("Non, je suis pas l� pour me droguer.",151)
		end
	NODE(151)
		SAY("Ah c'est con, tu commen�ais � me plaire. Allez va te faire voir chez Reza, si tu veux pas de drogues c'est que t'es pas quelqu'un de normal.")
		ENDDIALOG()

	NODE(152)
		SAY("J'ai du top du top. Si tu as envie de d�rouiller un gars que tu peux pas voir en peinture, je recommande de la X-Strong. Si tu veux faire �a vite et bien, j'ajouterais de la Whiteflash. Mais si tu es du genre � avoir des probl�mes de concentration, pourquoi pas une petite Destrosol... C'est surtout pour les moines PSI, mais �a te r�veille le cerveau comme pas deux!")

		ANSWER("Va pour une Whiteflash.",153)
		ANSWER("Je prends une X-Strong.",154)
		ANSWER("Une Destrosol, soyons fous, soyons jeunes.",155)
--703-Destrosol, 720-Whiteflash, 721-Destrosol
	NODE(153)
		TAKEMONEY(500)
		if(result==0)then
			SAY("Pas d'pognon, pas d'd�fonce.")
			ENDDIALOG()
		else
			GIVEITEM(720)
			SAY("Excellent choix. Je te fais un prix, rien que parce que c'est toi. Si y t'en faut encore, tu sas o� me trouver.")

			ANSWER("Maintenant qu'on est copains, tu pourrais peut-�tre me filer un tuyau...?",156)
		end
	NODE(154)
		TAKEMONEY(500)
		if(result==0)then
			SAY("Pas d'pognon, pas d'd�fonce.")
			ENDDIALOG()
		else
			GIVEITEM(721)
			SAY("Excellent choix. Je te fais un prix, rien que parce que c'est toi. Si y t'en faut encore, tu sas o� me trouver.")

			ANSWER("Maintenant qu'on est copains, tu pourrais peut-�tre me filer un tuyau...?",156)
		end
	NODE(155)
		TAKEMONEY(500)
		if(result==0)then
			SAY("Pas d'pognon, pas d'd�fonce.")
			ENDDIALOG()
		else
			GIVEITEM(703)
			SAY("Excellent choix. Je te fais un prix, rien que parce que c'est toi. Si y t'en faut encore, tu sas o� me trouver.")

			ANSWER("Maintenant qu'on est copains, tu pourrais peut-�tre me filer un tuyau...?",156)
		end
	NODE(156)
		SAY("Mais bien s�r, j'aime aider mes copains. Qu'est-ce que tu veux savoir?")

		ANSWER("Comment dire... J'ai un ami chez ProtoPharm. Tu le connais peut-�tre, il s'appelle Rick Boujard.",157)
	NODE(157)
		SAY("Ouais, je connais ce nom. Un probl�me avec lui?")

		ANSWER("Il m'a fait une livraison tr�s sp�ciale, et maintenant il est � court, il lui en faut encore. Il m'a d�j� tout donn�.",158)
	NODE(158)
		SAY("D�sol�, j'peux rien faire. C'�tait une livraison unique de Tangent. Un gars qui s'appelle Miles, c'est lui qui m'a refil� �a. Me demande pas pourquoi on m'a demand� de refiler �a � Rick, j'en sais rien, mais la paie �tait bonne. Par contre, si tu veux encore de la dope, je peux t'arranger �a.")

		ANSWER("Merci, je vais d�j� aller essayer ce que je t'ai pris. A la prochaine.",159)
	NODE(159)
		SAY("Si tu es dans le besoin, tu sais o� passer...")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(160)
		ENDDIALOG()
		
	NODE(160)
		SAY("D�sol�, j'ai plus rien en stock.")

		ENDDIALOG()


--------------------------------------------------------------------
--Constantine
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous avez suivi la piste Rick Boujard � El Farid?")
			ENDDIALOG()	
		else
			SAY("Je me demandais comment vous alliez, je m'inqui�tais. Vous avez trouv� quelque chose?")

			ANSWER("Au moins, je sais que les produits chimiques viennent de Tangent.",201)
		end
	NODE(201)
		SAY("C'est une id�e � vous, ou vous avez une preuve?")

		ANSWER("Non, je connais seulement le nom de l'interm�diaire. Un certain Fargo Miles.",202)
	NODE(202)
		SAY("C'est d�j� �a. Peut-�tre que �a peut se combiner avec ce que j'ai trouv� de mon c�t�. Si j'en crois son emploi du temps, Grimm a quitt� Tech Haven plusieurs fois ces derniers temps.")

		ANSWER("J'ai du mal � voir en quoi �a peut nous faire avancer.",203)
	NODE(203)
		SAY("J'y viens. J'ai trouv� deux emails envoy�s � Tangent et Crahn. Heureusement, Grimm a oubli� de les effacer de la base de donn�es. Ils r�v�laient un emplacement o� Grimm avait cach� des donn�es compromettantes.")

		ANSWER("Donc, Grimm a fourni des infos � Crahn et Tangent? Alors tout �tait vrai... C'est pour �a que j'ai rencontr� tant de difficult�s d�s que je faisais le moindre geste.",204)
	NODE(204)
		SAY("Oui, �a s'est pass� comme �a. Mais pour l'instant, nous n'avons que des suppositions. Les emails ne sont pas des preuves r�elles. On ne sait m�me pas o� se trouve cette cachette � preuve compromettantes.")

		ANSWER("On est dans une impasse...",205)
		ANSWER("Vous avez v�rifi� les vid�os de surveillance?",206)
		ANSWER("Et les donn�es que Grimm a emport�es en quittant Tech Haven?",208)
	NODE(205)
		SAY("Alors on est bloqu�s... Quel dommage!")

		ENDDIALOG()
	NODE(206)
		SAY("Vous pouvez pr�ciser?")

		ANSWER("J'imagine que CityAdmin, le NCPD, Neocron, ont plein de cam�ras partout, et que Fargo Miles doit se retrouver sur plusieurs d'entre elles. Si on a de la chance, on pourra le voir se rendre � la planque. On peut essayer.",207)
	NODE(207)
		SAY("Ca prendre quelques minutes. Allez prendre l'air et revenez, j'aurai peut-�tre quelque chose.")
		SETNEXTDIALOGSTATE(209)
		ENDDIALOG()
		
	NODE(208)
		SAY("Impossible, les logs ont �t� effac�s maintenant. Trop anciens.")

		ANSWER("Il a d� pr�voir ce genre de d�tails en effet.",204)


	NODE(209)
		SAY("Alors... Je n'ai rien trouv� dans les dossiers du NCPD, mais j'ai trouv� une vid�o de la zone Sherman Bay. Selon les donn�es de la vid�o, c'est Miles qu'on voit l�-bas. Mais je n'en ai pas la certitude absolue.")

		ANSWER("Et est-ce qu'on voit la planque sur cette vid�o? Quelque chose qui pourrait nous aider?",210)
	NODE(210)
		SAY("Je crois reconna�tre quelques antennes satellite. On voit Fargo rentrer dans un b�timent, et ouvrir une sorte de caisse cod�e, puis en sortir quelque chose. Mais l'enregistrement se termine l�. Cette bo�te a certainement un rapport avec le reste.")

		ANSWER("Sherman Bay? Je vais aller l�-bas, voir ce que �a donne.",211)
	NODE(211)
		SAY("Bonne chance. Je pense que j'ai atteint les limites de mes capacit�s sur le r�seau, j'ai d�j� tout test�. Si vous trouvez quelque chose, tenez-moi au courant sans tarder.")
		SETNEXTDIALOGSTATE(212)
		ENDDIALOG()
--Spieler besucht Sherman Bay und findet dort im Dungeon eine Hack Box, in dem er einen
--Datacube mit belastendem Material findet.
-- Grimm ID Cube

	NODE(212)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Il nous faut plus d'infos. Vous avez pu parler � Rick Boujard?")
			ENDDIALOG()
		else
			TAKEITEM(9301)
			if(result==0)then
				SAY("Vous avez pu aller � Sherman Bay?")
				ENDDIALOG()
			else	
				SAY("D�j� de retour? J'esp�re que vous avez du nouveau.")

				ANSWER("En effet, et on avait raison depuis le d�but. Grimm m'a vendu � Crahn et � Tangent. Tout est sur ce datacube.",213)
			end
		end
	NODE(213)
		SAY("On a la preuve qu'il nous faut, excellent! Je vais transmettre ce cube au Conseil.")

		ANSWER("Tenez. j'esp�re qu'on va enfin pouvoir clore ce dossier.",214)
	NODE(214)
		SAY("Je pense que le Conseil aura besoin de temps pour analyser les donn�es et prendre sa d�cision. Il faut attendre, et je n'ai pas envie de commencer le programme de recherche tant que cette affaire ne sera pas tir�e au clair. On va mettre ce temps � profit pour faire nos recherches personnelles. (prochaine mission au niveau 40.")
		EPICRUNFINISHED(14,3)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
	

end