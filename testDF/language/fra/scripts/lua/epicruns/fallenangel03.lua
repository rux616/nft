--new
--Fallen Angel Muster
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm(50)
--1,D,Max(150)
--2
--3
--
--Startnode, Person
--0, Personal Director
--50, Grimm
--100, Constantine
--150, Max Delavare
--200, Constantine
--250, Ethan Cole(Chemikalie)
--300, Grimm(nimmt Chemikalie)
--350, Constantine
--
--Items
--cHEMIKALIENkonzentrat
--Whiteflash720

function DIALOG()
--------------------------------------------------------------------
--
--0
	
	NODE(0)
		SAY("Grimm se trouve dans la salle du r�acteur 1. Il aimerait vous parler. Il m'a sembl� f�brile, il vous cherchait partout. Mais il n'a pas voulu me dire pourquoi. Vous avez peut-�tre une id�e de ce qu'il vous veut.")

		ANSWER("Non, pas la moindre.",1)
		ANSWER("Il attendra, j'ai autre chose � faire.",3)
	NODE(1)
		SAY("Vous feriez mieux de ne pas le faire attendre, j'esp�re que �a n'est pas grave.")
		SETNEXTDIALOGSTATE(2)
		ACCEPTMISSION()
		ENDDIALOG()		
	NODE(2)
		SAY("Vous avez parl� � Grimm? Ne tra�nez pas, �a m'avait l'air important.")
		ENDDIALOG()
		
	NODE(3)
		SAY("Comme vous voulez, mais il ne sera pas content.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Grimm
--50
	NODE(50)
		SAY("Hein?")

		ANSWER("Vous vouliez me parler?",51)
	NODE(51)
		SAY("Tiens, voil� notre grand scientifique! D�j� que je ne vous prenais pas pour une lumi�re... Et �a ne s'est pas arrang� depuis.")

		ANSWER("A quoi est-ce que vous jouez? Je n'aime pas beaucoup �a.",52)
	NODE(52)
		SAY("Ne faites pas l'imb�cile. Les produits chimiques que vous nous avez apport�s sont contamin�s! Un des mes laborantins est mort dans une explosion, et tout �a par votre faute! Vous �tes un abruti fini!")

		ANSWER("Comment est-ce que j'aurais pu le savoir? J'ai fait exactement ce qu'on m'a dit de faire!",53)
	NODE(53)
		SAY("Epargnez-moi vos excuses, �a ne prend pas. M�me si je vous faisais expulser de Tech Haven, �a ne ram�nerait pas mon collaborateur � la vie. Alors vous allez dire au Conseil Scientifique que vous �tes responsable de sa mort, et que vous allez de nouveau vous procurer ces produits chimiques. On a encore du travail � faire, et on prend du retard � cause de vous.")

		ANSWER("Ecoutez, je suis d�sol� pour votre collaborateur. Je vais essayer de trouver des produits chimiques de qualit� cette fois. M�me si je ne sais pas par o� commencer. Je devrais peut-�tre demander � Constantine...",54)
	NODE(54)
		SAY("Arr�tez de me regarder avec vos yeux de merlan frit. Qu'est-ce que j'en sais, moi? Seul ProtoPharm vend ce genre de produit, � ma connaissance. Vous devriez aller voir chez eux. Une fois que vous avez ce qu'il faut, revenez ici et donnez-moi le tout. Compris? Sinon, le Conseil entendra parler de votre gaffe s�ance tenante!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
		
--------------------------------------------------------------------
-- Constantine
--100

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Pas maintenant, je suis en train de t�l�charger quelque chose d'important...")
			ENDDIALOG()
		else
			SAY("Hum... Vous �tes un peu en avance. Je n'ai pas encore toutes les informations concernant la recherche. Nous ne sommes pas pr�ts pour commencer.")

			ANSWER("Pas de probl�me, je ne viens pas pour �a. Vous vous rappelez de ces produits chimiques que je suis all� chercher?",101)
		end
	NODE(101)
		SAY("Oui, le d�partement a appr�ci� le service.")

		ANSWER("Je dois savoir o� je pourrais obtenir la m�me chose. Vous avez une id�e?",102)
	NODE(102)
		SAY("ProtoPharm, c'est la premi�re solution qui me vienne � l'esprit.")

		ANSWER("Je ne pr�f�re pas. Je ne leur fais plus confiance.",103)
	NODE(103)
		SAY("Dans ce cas... Je pourrais voir �a sur le march� noir, mais vous savez, �a va, �a vient...")

		ANSWER("Le principal, c'est que j'en trouve.",104)
	NODE(104)
		SAY("J'ai une offre ici, justement. Sacr�e coincidence. Il s'appelle Max, il vit dans Outzone 5. J'ai connu mieux, comme plan, c'est un coin dangereux. Je vous le d�conseillerais, si on avait une autre possibilit� en vue.")

		ANSWER("Je ferai attention � moi. L'Outzone, hein? Allez, je file, j'ai peu de temps.",105)
	NODE(105)
		SAY("Faites attention � vous. Prenez de quoi vous soigner. J'aurai peut-�tre d'autres tuyaux � votre retour, je vais continuer � chercher. Revenez ici pour vous tenir au courant, d'accord? Bonne chance.")
		SETNEXTDIALOGSTATE(200)
		
		ENDDIALOG()
--------------------------------------------------------------------
-- mAX Delavare
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Tire-toi d'ici, c'est pas un coin pour les types dans ton genre.")
			ENDDIALOG()
		else
			SAY("Accouche, qu'est-ce que tu veux? J'ai pas toute la journ�e.")

			ANSWER("Je viens pour votre offre, vous savez, les produits chimiques.",151)
		end
	NODE(151)
		SAY("et comment je peux �tre certain que c'est bien toi? Montre-moi ta carte.")

		ANSWER("Quel est le rapport? Je viens juste acheter un truc.",152)
	NODE(152)
		SAY("Je dois savoir si tu as le fric n�cessaire. Donc je dois voir ta carte. Compris? Allez, donne.")

		ANSWER("D'accord, voil�.",153)
	NODE(153)
		SAY("Tout s'explique... Je t'attendais. L'ordre de Crahn m'a pay� pour te faire la peau. Ne bouge pas, et je te promets que tu ne souffriras pas. Enfin, pas longtemps.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(154)
		ATTACK()
		ENDDIALOG()
		
	NODE(154)
		SAY("Cr�ve!")
		ATTACK()
		ENDDIALOG()




--------------------------------------------------------------------
--Constantine
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Alors, qu'a dit Max?")
			ENDDIALOG()
		else
			SAY("Ravie de vous voir revenir en un seul morceau. C'est un endroit dans lequel je ne me risquerai jamais.")
	
			ANSWER("Et pour cause! Max a voulu me tuer. Comme s'il savait que j'allais venir.",201)
		end
	NODE(201)
		SAY("Vous pensez? Comment serait-il au courant?")

		ANSWER("Aucune id�e, mais il a dit quelque chose qui me fait penser que Crahn est derri�re tout �a.",202)
	NODE(202)
--Chemiekonzentrat
		TAKEITEM(9300)
		if(result==0)then
			SAY("Crahn! Pas possible! Quand on a des probl�mes, c'est toujours eux, de toute mani�re. Apparemment, le fait d'avoir travaill� pour eux pendant des d�cennies comme esclaves ne leur a pas suffi.")

			ANSWER("Je m'en suis sorti de justesse, un peu plus et j'y passais. Et je n'ai toujours pas trouv� quelqu'un pour me vendre ces produits chimiques. Vous avez une autre piste?",203)
		else
			GIVEITEM(9300)
			SAY("Mais comme vous avez d�j� trouv� les produits chimiques, vous devriez aller donner �a � Grimm.")
			SETNEXTDIALOGSTATE(350)
			ENDDIALOG()		
		end
	NODE(203)
		SAY("Merde! J'avais presque oubli�, avec toute cette histoire. Peu de temps apr�s votre d�part, j'ai trouv� une autre offre au march� noir.")

		ANSWER("Ca correspond bien � ce que je recherche?",204)
	NODE(204)
		SAY("Oui, du Kaboxorid. C'est un certain Mark Cole qui propose �a. Je pense que c'est notre derni�re chance d'en avoir, mais �a n'est pas tout pr�s. Il se trouve dans le secteur 06, � en juger par le message qu'il a laiss�.")

		ANSWER("Merci Constantine, vous m'�tes d'un grand secours.",205)
	NODE(205)
		SAY("Merci, mais faites attention � vous, j'esp�re que �a se passera bien cette fois.")
		SETNEXTDIALOGSTATE(350)
		ENDDIALOG()


--------------------------------------------------------------------
--Cole
--250	
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je ne prends pas de rendez-vous, fichez-moi le camp.")
			ENDDIALOG()
		else
			SAY("J'esp�re que les nouvelles sont bonnes?")

			ANSWER("Je n'ai aucun message � vous transmettre. Ce qui m'int�resse, ce sont les produits chimiques que vous vendez.",251)
		end
	NODE(251)
		SAY("Ca reste une bonne nouvelle. Bien, faisons affaire. Vous voulez du Kaboxorid, moi je veux autre chose. Faisons un march�. Vous me procurez quelque chose que je peux revendre, et je vous file le bazar. Si vous �tes pas content, allez vous faire foutre.")

		ANSWER("Non non, c'est parfait. Qu'est-ce que vous voulez en �change?",252)
	NODE(252)
		SAY("Quelque chose de valeur. Des drogues, �a serait parfait, mais pas du bas de gamme. Ca m'a co�t� les yeux de la t�te pour obtenir ce truc. De la Whiteflash, �a serait parfait. J'ai un client qui serait int�ress�. Trois doses, �a ira? Allez me chercher �a, sans tra�ner.")
		SETNEXTDIALOGSTATE(253)
		ENDDIALOG()

--Spieler besorgt Whiteflash720

	NODE(253)
		TAKEITEMCNT(720,3)
		if(result==0)then
			SAY("C'est si compliqu� que �a? Trois doses de Whiteflash, c'est quand m�me pas la mort!")
			ENDDIALOG()
		else
			GIVEITEM(9300)
			SAY("Bon travail, vous me surprenez. Vous �tes plus dou� que la moyenne des Anges D�chus. J'ai �t� pas mal inspir� de les larguer pendant qu'il �tait encore temps. Tenez, voil� votre bidule. Faites-en ce que vous voulez.")
			SETNEXTDIALOGSTATE(254)
			ENDDIALOG()
		end
	NODE(254)
		SAY("Les affaires sont finies pour aujourd'hui. Retournez d'o� vous venez.")
		ENDDIALOG()

--------------------------------------------------------------------
--gRIMM
--300
--Chemikalie
	NODE(300)
		TAKEITEM(9300)
		if(result==0)then
			SAY("Ne revenez pas sans produits chimiques. C'est pas compliqu� � comprendre!")
			ENDDIALOG()
		else
			SAY("Vous?! Comment �a se fait? J'avais pourtant tout fait pour...")

			ANSWER("What? What are you talking about?",301)	
		end
	NODE(301)
		SAY("On change de plans. Si vous n'avez pas ces produits sur vous, je vais informer le conseil de la contamination...")

		ANSWER("Epargnez votre salive, j'ai failli me faire tuer mais j'ai trouv� le produit.",302)
	NODE(302)
		SAY("S�rieusement?! N'essayez pas de m'avoir, hein! Donnez-moi �a tout de suite!")

		ANSWER("J'ai fait ma part du march�, � vous maintenant!",303)
	NODE(303)
		SAY("Vous avez de la chance que je sois honn�te! Je respecte notre accord. Mais je ne veux pas vous revoir. Allez parler � Constantine, je crois qu'elle avait un truc � vous dire.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(304)
		ENDDIALOG()
		
	NODE(304)
		SAY("D'accord, vous avez r�ussi, mais ne vous sentez pas pousser des ailes pour si peu.")

		ENDDIALOG()

--------------------------------------------------------------------
--Constantine
--350

	NODE(350)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Revenez plus tard.")
			ENDDIALOG()
		else
		
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Revenez plus tard.")
				ENDDIALOG()
			else
			
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("Vous devriez donner ces produits chimiques � Grimm.")
					ENDDIALOG()
				else
					SAY("Je suis occup�e � classer les informations que j'ai re�ues, et ensuite je dois les analyser. J'ai besoin d'encore un peu de temps avant de lancer le projet. Profitez-en pour vous entra�ner. Ca nous servira. (prochaine mission au niveau 35)")
				EPICRUNFINISHED(14,2)
				ACTIVATEDIALOGTRIGGER(3)
				ENDDIALOG()
				end
			end
		end

end