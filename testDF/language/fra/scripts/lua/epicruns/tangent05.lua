--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--1,D,Figaro
--6(0),PvP,Figaro
--2,D,Benjamin
--3,D,Mazzaro

--Startnode, Person
--0
--50, Figaro
--100,Benjamin
--150,Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Il s'est pass� la nuit derni�re quelque chose qu'on n'avait pas pr�vu. On a sabot� noter laboratoire, et on a attaqu� certains de nos syst�mes informatiques. Heureusement, Chester Cohor a pu identifier nos intrus avant que la coupure du r�seau.")

		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("On n'a pas �t� surpris d'apprendre que les hackers �taient des employ�s de BioTech. Le probl�me, c'est que nous n'avons pas de preuves de cela, parce que les donn�es permettant de le prouver ont �t� endommag�es lors du sabotage. Nos activit�s de d�veloppement ont pris quelques jours de retard en cons�quence.")

		ANSWER("On aurait d� s'attendre � cela de la part de BioTech.",2)
	NODE(2)
		SAY("Tr�s certainement, mais vous sous-estimez la fragilit� de ces syst�mes et de ces structures de tests. M�me la plus petite distorsion peut causer des dommages tr�s importants. De plus, le r�seau �tait encore en reconfiguration apr�s l'attaque informatique des Anges D�chus. Et c'est pourquoi nous �tions encore plus vuln�rables que d'habitude.")

		ANSWER("Quelles seront les cons�quences? Est-ce que Tangent a d�j� d�cid� de la marche � suivre? Il faut bien r�pondre � �a d'une mani�re ou d'une autre...",3)
	NODE(3)
		SAY("Oui, vous avez raison. On a d�j� d�cid� d'un plan. BioTech va subir une attaque directe. Comme avertissement, �videmment. Et comme vous avez d�j� prouv� votre comp�tence dans ce genre de missions, Tangent vous a choisi pour cette t�che.")

		ANSWER("Ca n'est pas moi qui d�cide des missions que je fais. Mais je vais m'en charger.",4)
		ANSWER("Je pense que je n'en suis pas capable.",7)
	NODE(4)
		SAY("Je viens de me souvenir de quelque chose. Le clan Tsunami semble impliqu� dans cette histoire. Vous devriez parler � Figaro, parce que nous pourrions utiliser nos contacts dans le Dragon Noir pour cette affaire. Si BioTech utilise l'appui de Tsunami, alors nous allons faire la m�me chose avec le Dragon Noir. C'est vous qui allez d�cider de la mani�re dont le Dragon Noir va attaquer BioTech. Ecoutez attentivement ce qu'ils sont en mesure de faire, et choisissez en cons�quence.")

		ANSWER("CONTINUER",5)
	NODE(5)
		SAY("Il y a autre chose. Votre contact l�-bas, Benjamin, a insist� pour vous parler. Il a dit pr�f�rer parler � quelqu'un qu'il connaissait d�j�. Apparemment, il aurait des informations sur le prototype de Biotech, et maintenant il voudrait nous les vendre.")

		ANSWER("Est-ce que vous pourriez �tre plus explicite quant aux personnes que je dois tuer?",9)
	NODE(6)
		SAY("On est au courant de vos actions dans la hi�rarchie, vous savez. Il y a beaucoup � faire, alors ne gaspillez pas votre temps. Vous devriez d'abord aller voir Figaro, et une fois que vous aurez aplati deux membres de BioTech, Benjamin sera pr�t � vous parler.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()


	NODE(7)
		SAY("Si vous changez d'avis, n'h�sitez pas � nous contacter.")
		ENDDIALOG()
		
	NODE(8)
		SAY("On vous a d�j� expliqu� ce que vous aviez � faire. D'abord, donnez vos instructions � Figaro, puis allez aplatir deux types de BioTech, et enfin allez parler � Benjamin dans le secteur industriel 02.")
		ENDDIALOG()

	NODE(9)
		SAY("Deux runners de BioTech, j'insiste bien sur ce mot. Pas d'employ�s, pas de gardes, pas d'officiels. Que des runners.")
		
		ANSWER("Et je peux aplatir n'importe quel runner?",10)
	NODE(10)
		SAY("Non, seulement ceux qui sont au moins aussi forts que vous. Sinon �a ne sera pas pris en compte.")

		ANSWER("CONTINUER",6)

-----------------------------------------------------
--Figaro

	NODE(50)
		SAY("Ca faisait longtemps, runner! Mais j'arr�te pas d'entendre parler de toi. Tu ch�mes jamais, on dirait!.")

		ANSWER("Oui, depuis quelques semaines �a n'arr�te pas.",51)
	NODE(51)
		SAY("On m'a expliqu� comment t'avais trait� les Anges D�chus. Pas mal, pas mal du tout. T'as de l'avenir, je pense. Mais c'est exactement comme �a que �a se passe, ici dans la rue. Nous, le Dragon Noir, on est en guerre permanente avec Tsunami. Faut dire qu'ils se comportent tous comme s'ils �taient des privil�gi�s, �a nous �nerve.")

		ANSWER("CONTINUER",52)
	NODE(52)
		SAY("Et puis de temps en temps, on se bastonne avec les Gardiens du Cr�puscule et les Fils de l'Anarchie. Mais c'est rare qu'une compagnie s'implique dans ce genre d'histoires.")

		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("Le plus souvent, les compagnies nous payent pour qu'on fasse leur sale boulot. et �a paye bien. Toi, on m'a dit que t'allais nous expliquer quoi faire. T'as qu'� m'expliquer, ce que vent Tangent, et on va s'en charger.")

		ANSWER("Quelles sont les options? Qu'est-ce que vous pouvez faire?",54)
	NODE(54)
		SAY("Que je r�fl�chisse... Un sabotage, un meurtre, du chantage. C'est ce qu'on fait habituellement.")

		ANSWER("Ca me para�t logique de r�pondre au sabotage parle sabotage. Allez vous occuper de quelques installations de Biotech.",55)
		ANSWER("Il est temps de leur apprendre une bonne le�on. Allez tuer quelques uns de ces b�tards.",56)
		ANSWER("Allez faire chanter quelques uns de leurs scientifiques, �a leur fera prendre du retard et ils ne pourront jamais nous rattraper. C'est Tangent qui doit remporter le contrat CityAdmin, pas BioTech!",57)
	NODE(55)
		SAY("Tr�s bien, sans probl�me. Bonne journ�e � toi.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(56)
		SAY("Tr�s bien, sans probl�me. Bonne journ�e � toi.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(57)
		SAY("Tr�s bien, sans probl�me. Bonne journ�e � toi.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(58)
		SAY("La mission est d�j� lanc�e. On s'occupe du reste. Vous devriez avoir autre chose � faire � pr�sent.")
		ENDDIALOG()
		
--Spieler killt zwei Biotechler 6

-----------------------------------------------------
--Benjamin

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Pas tout de suite. J'attends quelqu'un d'autre.")
			ENDDIALOG()	
		else
			SAY("Ah enfin, vous voil�! Ecoutez... J'ai vraiment l'impression qu'on me surveille. Alors faisons vite. Le deal a d�j� �t� conclu avec Tangent. Disons que par accident, certains �l�ments du plan se sont retrouv�s dans ma poche lorsque j'ai quitt� le labo, et que je les ai sur moi. Maintenant, c'est � Tangent. Tenez...")

			ANSWER("Tr�s bien. Merci pour votre aide...",101)
		end

--Spieler bekommt Prototyp 9154

	NODE(101)
		GIVEITEM(9154)
		SAY("Bon, vous pouvez y aller maintenant... Non, attendez! J'ai autre chose qui pourrait aussi vous int�resser. J'ai quelques informations au sujet d'Andressa. Elle travaille pour Biotech. Je peux m�me vous le prouver avec quelques documents. Cavous int�resse?")

		ANSWER("Evidemment. Tout ce qui vient contre BioTech, j'appr�cie.",102)
	NODE(102)
		SAY("Bien. Mais �a va vous co�ter un petit extra de 5.000 cr�dits. ")
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
	NODE(103)
		TAKEMONEY(5000)
		if(result==0)then
			SAY("Revenez quand vous aurez 5.000 cr�dits.")
			SETNEXTDIALOGSTATE(104)
			ENDDIALOG()
		else
			GIVEITEM(9155)
			SAY("Voil� ce que je vous propose. C'est une des scientifiques qui a d�velopp� cette arme � rayons, et elle a particip� � toutes les �tapes importantes. Elle a quelques secrets qu'elle ne souhaite pas voir d�voil�s. Peut-�tre que vous comprendrez mieux si je vous dis qu'elle aime les mutants... Vous trouverez tout �a dans son dossier.")

			ANSWER("Voyons voir... Mon dieu, mais c'est d�go�tant! Et c'est exactement ce dont j'avais besoin. Bon travail.",105)
		end
	NODE(104)
		SAY("Vous avez mes 5.000 cr�dits?")

		ANSWER("Evidemment. Mais j'ai eu un peu de mal � tout r�unir.",103)


	NODE(105)
		SAY("Oui, oui, mais vous feriez mieux de partir.")
		SETNEXTDIALOGSTATE(106)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(106)
		SAY("Je vous ai d�j� tout donn�, maintenant partez. Je n'ai pas envie qu'on nous voie parler ensemble. Retournez chez vous, maintenant.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mazzaro

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous n'avez pas encore termin�. Allez tuer deux runners de BioTech, parlez � Benjamin, et donnez des instructions � Figaro. C'est pas compliqu�.")
			ENDDIALOG()	
		else
			SAY("Je suis encore en col�re � cause de ce sabotage. On a pris beaucoup de retard � cause d'eux. Mais j'ai encore confiance, nos concepteurs savent vraiment ce qu'ils font.")

			ANSWER("CONTINUER",151)
		end

	NODE(151)
		SAY("J'ai regard� les plans de l'arme de BioTech, et je pense qu'on n'a pas de crainte � avoir. Mais je suppose que votre r�ponse � leur sabotage a �t� appropri�e?")

		ANSWER("Oui, Biotech va avoir besoin de temps pour se remettre de ce qu'on leur a fait. Et avant que j'oublie de vous le dire, mon contact m'a donn� une partie du plan du prototype de BioTech. Je pense que �a va beaucoup vous int�resser.",152)

--Spieler verliert Prototype

	NODE(152)
		TAKEITEM(9154)
		if(result==0)then
			SAY("Mais vous n'avez pas ces plans sur vous.")
			ENDDIALOG()
		else
			SAY("Excellent. Gr�ce � �a, vous venez de gagner votre place chez Tangent. Il y a peu, j'ai entendu Damion Jordan parler de vous.")

			ANSWER("CONTINUER",153)
		end
	NODE(153)
		SAY("Il parlait du combat contre les Anges D�chus. Mais j'ai entendu diff�rentes versions sur la mani�re dont vous avez r�gl� la question. Vous ne les avez pas tous attaqu�s en m�me temps, si?")

		ANSWER("Bien s�r que si! Et ne croyez pas tous ceux qui vous diront le contraire, haha!",154)
	NODE(154)
		GIVEMONEY(20000)
		SAY("Voil� 20.000 cr�dits pour vous r�compenser de vos efforts. Bonne chance, et tenez-vous pr�t pour votre prochaine mission.")
		EPICRUNFINISHED(4,4)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end