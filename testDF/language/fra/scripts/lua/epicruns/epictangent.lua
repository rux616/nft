--new
function DIALOG()
NODE(0)
--CANDOEPICRUN(factionid, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(factionid, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(4,0)
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Vous n'�tes pas des n�tres. Veuillez quitter cet endroit.")
			ENDDIALOG()
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(4,0)
			if(result==-2)then
				SAY("La seule mani�re de nous aider � pr�sent est de fonder votre propre clan pour nous assister.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(4,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Retournez vous entra�ner et revenez nous voir (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(4,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(4,1)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Retournez vous entra�ner et revenez nous voir (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(4,2)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Retournez vous entra�ner et revenez nous voir (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(4,3)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Retournez vous entra�ner et revenez nous voir (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(4,4)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Retournez vous entra�ner et revenez nous voir (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(4,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Retournez vous entra�ner et revenez nous voir (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
						CANDOEPICRUN(4,5)
				        if(result==-4)then
						SAY("La seule mani�re de nous aider � pr�sent est de fonder votre propre clan pour nous assister.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Vous commencez � devenir une v�ritable c�l�brit� ici. L'autre jour, j'ai m�me entendu quelqu'un parler de vous dans la rue.")

		ANSWER("Merci, mais je fais seulement mon travail.",250)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Il s'est pass� la nuit derni�re quelque chose qu'on n'avait pas pr�vu. On a sabot� noter laboratoire, et on a attaqu� certains de nos syst�mes informatiques. Heureusement, Chester Cohor a pu identifier nos intrus avant que la coupure du r�seau.")

		ANSWER("CONTINUER",200)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("On a envoy� un message � votre contact de Biotech pour lui dire qu'on �tait int�ress�s par le plan. Nous avons tent� de n�gocier avec lui, mais...")

		ANSWER("Il a refus� l'offre? Le plan �tait d�j� vendu?",150)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Quelle heureuse co�ncidence! Vous arrivez justement au moment o� on a besoin de vous. Le projet d'arme � rayons avance � grands pas, et on a effectu� des tests sur diff�rents mat�riaux. Les r�sultats sont tr�s convaincants. Mais cela ne suffit pas � Tangent.")

		ANSWER("CONTINUER",100)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("On a de bonnes nouvelles. CityAdmin a d�cid� de commander une nouvelle arme � rayons. Naturellement, nous sommes en premi�re ligne pour cette commande.")

		ANSWER("CONTINUER",50)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
						SAY("Bienvenue, runner! C'est toujours un plaisir de voir une nouvelle t�te parmi nous. Tangent aime �tre proche de ses employ�s, vous vous en rendrez compte rapidement.")

						ANSWER("CONTINUER",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1

	NODE(11)
		SAY("Nous donnons � chacun les moyens de cr�er sa propre r�alit�. Comme vous l'avez peut-�tre remarqu�, je suis en train de parler des armes que nous produisons. Vous vous imaginez sans doute qu'elles trouvent facilement des acqu�reurs � Neocron. M�me moi, j'ai un fusil d'assaut Tangent dans mon appartement.")

		ANSWER("C'est un plaisir d'appartenir � une faction qui traite ses clients de mani�re r�aliste. On ne nous lave pas le cerveau � longueur de journ�es avec ces imb�cillit�s que sont la paix et la libert�.",12)
	NODE(12)
		SAY("Evidemment, c'est en effet un de nos objectifs les plus chers. Tout client a de l'importance pour nous, et nous organisons de nombreuses compagnes pour susciter l'int�r�t du consommateur.")

		ANSWER("CONTINUER",13)
	NODE(13)
		SAY("Mais Tangent s'occupe surtout de la production d'armes � tous les �chelons. Je devrais peut-�tre vous parler tout d'abord de la compagnie? Nous allons �voquer cela ensemble.")

		ANSWER("J'allais justement vous le demander.",14)
	NODE(14)
		SAY("Tangent Technologies a �t� cr��e en 2748. A cette �poque, elle s'est s�par�e de sa maison m�re, BioTech, car elle avait trop grandi pour en rester d�pendante.")

		ANSWER("CONTINUER",15)
	NODE(15)
		SAY("Depuis cette �poque, Tangent a constamment d�pass� sa compagnie mire, � tous les niveaux. CityAdmin a toujours sign� de gros contrats avec Tangent, car son secteur d'activit� est depuis toujours la sp�cialisation dans la fabrication des armes.")

		ANSWER("CONTINUER",16)
	NODE(16)
		SAY("En vendant des armes sur le march� de Neocron, nous avons assur� un constant renouvellement du march�. Et m�me si BioTech utilise tous les moyens en sa possession pour nous renverser de notre place pr�pond�rante, nos ventes continuent de progresser chaque ann�e.")

		ANSWER("BioTech essaye donc activement de mettre des b�tons dans les roues de Tangent?",17)
	NODE(17)
		SAY("Oui, et ils ont m�me parfois recours � la violence. Officiellement, ils vont bien entendu jouer les innocents. Mais ils ont des contacts avec Tsunami et investissent de grosses sommes dans les actions qu'ils m�nent contre Tangent.")

		ANSWER("CONTINUER",18)
	NODE(18)
		SAY("Mais ces tentatives ne peuvent pas emp�cher Tangent d'atteindre ses buts. Et en parlant de �a, vous  d�sirez certainement commencer � travailler pour Tangent, n'est-ce pas?")

		ANSWER("Oui, �videmment. Je m'imaginais presque que j'allais ne rien faire en �change de cet appartement que vous m'avez donn�.",19)
	NODE(19)
		SAY("Soyez assur� que l'appartement vous appartient r�ellement. Tangent consid�re votre premi�re mission comme une simple faveur. Vous toucherez un petit d�dommagement pour cela.")

		ANSWER("C'est toujours agr�able de travailler pour de l'argent. De quoi s'agit-il?",20)
		ANSWER("J'ai envie de remettre �a � plus tard.",33)
	NODE(20)
		SAY("C'est plut�t simple. Pour une grosse compagnie comme Tangent, il est primordial d'entretenir de bonnes relations pour poursuivre les projets importants.")

		ANSWER("CONTINUER",21)
	NODE(21)
		SAY("Nos plus importants partenaires sont NExT et Diamond Immobilier. NExT coop�re avec nous parce que, apr�s tout, nous utilisons leurs v�hicules pour monter certains de nos syst�mes d'armement.")

		ANSWER("CONTINUER",22)
	NODE(22)
		SAY("Evidemment, c'est dans notre int�r�t, c'est tr�s visible. Et nous avons avec Diamond Immobilier des contrats pour �quiper leurs propri�t�s en syst�mes de s�curit�.")

		ANSWER("CONTINUER",23)
	NODE(23)
		SAY("Notre relation avec Diamond remonte � loin, et nous sommes en tr�s bon termes.")

		ANSWER("Oui, je pensais bien que ce genre de contrats existaient. Mais Tangent fournit aussi des armes pour les CopBots, non?",24)
	NODE(24)
		SAY("C'est juste. Evidemment, CityAdmin a choisi Tangent pour s'occuper de l'arsenal des CopBots. Apr�s tout, Tangent est le plus grand fabricant d'armes ind�pendant. C'est non seulement plut�t lucratif, mais c'est aussi une mission qui exige de nous une grande responsabilit�. Si nous faisions les mauvais choix, les cons�quences pourraient �tre catastrophiques.")

		ANSWER("CONTINUER",25)
	NODE(25)
		SAY("La principale pr�occupation de Tangent, c'est l'efficacit� de ses armes. Les CopBots sont cens�s accomplir leur t�che aussi efficacement que possible. Il faut que les citoyens de Neocron puissent dormir sur leurs deux oreilles.")

		ANSWER("Impressionnant. Mais vous vouliez me dire quelque chose au sujet de ma mission, si le me souviens bien.",26)
	NODE(26)
		SAY("Attendez que j'aie termin�. Cette petite mission consiste en vous rendre � NExT, Diamond Immobilier, et enfin Pepper Park. Pepper Park est un quartier vraiment dangereux. Faites attention lorsque vous y passez.")

		ANSWER("CONTINUER",27)
	NODE(27)
		SAY("Donc, tout d'abord vous devrez passer voir le directeur des op�rations de NExT pour lui remettre ces documents importants. C'est une analyse pouss�e de l'efficacit� des syst�mes d'armement de Tangent en conjonction avec la technologie des Hovercrafts.")

		ANSWER("CONTINUER",28)
	NODE(28)
		SAY("Ensuite, allez au QG de Diamond pour la seconde livraison. Mais j'ai oubli� le nom du destinataire. C'est soir le QG de Diamond, soit la tour CityAdmin, � moins que ce soit un des magasins de Diamond.")

		ANSWER("CONTINUER",29)
	NODE(29)
		SAY("Cette livraison est un assortiment de spiritueux. Souvenez-vous qu'il faut toujours entretenir ses relations par de petits cadeaux.")

		ANSWER("Vous avez aussi parl� de Pepper Park. Qu'est-ce que je vais devoir y faire?",30)

--Spieler bekommt zwei Pakete
	NODE(30)
		GIVEITEM(9150)
		GIVEITEM(9151)
		SAY("Ca n'est pas tr�s important. Vous allez devoir y trouver quelqu'un qui s'appelle Figaro. Il vous donnera un paquet que vous devrez remettre ici. C'est bien compris?")

		ANSWER("Evidemment, je suis plut�t du genre curieux...",31)
	NODE(31)
		SAY("La curiosit� est une b�n�diction, encore faut-il en user avec mod�ration. En exc�s, elle peut �tre extr�mement n�faste. Allez-y, et n'oubliez pas � votre retour de donner le paquet de Figaro � Mazzaro, ici au QG.")

		ANSWER("CONTINUER",32)
	NODE(32)
		SAY("Sinon il sera de mauvaise humeur, et �a n'est pas le genre de chose qu'on souhaite voir arriver ici.")
		STARTMISSION(3558)
		SETNEXTDIALOGSTATE(24)
		ENDDIALOG()


	NODE(33)
		SAY("Alors prenez votre temps. Pr�parez-vous,et revenez quand vous �tes pr�t.")
		ENDDIALOG()

	NODE(34)
		SAY("Vous devriez prendre votre premi�re mission un peu plus au s�rieux si vous voulez devenir quelqu'un dans Tangent. Si vous ne trouvez pas le courtier de Diamond, alors c'est qu'il est autre aprt en ville. Diamond est partout dans Neocron.")
		ENDDIALOG()
		
	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2

	NODE(50)
		SAY("N�anmoins, nous ne comprenons pas pourquoi Tangent et BioTech ont �t� choisies toutes les deux pour cette mission. C'est �vident que nous pourrions l'assurer sans aide.")

		ANSWER("CONTINUER",51)
	NODE(51)
		SAY("Le but de Tangent, c'est de cr�er des armes. Mais CityAdmin a d�cid� de faire aussi appel � BioTech pour ce projet.")

		ANSWER("Mais BioTech ne posera pas de probl�mes � Tangent. Nous avons un grand avantage dans cette partie.",53)
	NODE(53)
		SAY("C'est tout � fait exact. Tout le monde le sait. BioTech a encore d� jouer de sales tours pour avoir r�ussi � avoir une place de choix dans ce contrat.")

		ANSWER("Et quand saura-t-on qui remportera le contrat?",54)
	NODE(54)
		SAY("Prochainement, les deux compagnies vont devoir pr�senter un prototype de l'arme � rayons. Le meilleur remportera le march�. Mais je pense que la comp�tition ne sera pas franche.")

		ANSWER("CONTINUER",55)
	NODE(55)
		SAY("Si tout est d�j� pr�vu par BioTech, je pense qu'ils ont d�j� un sale coup en pr�paration.")

		ANSWER("Mais Tangent n'a pas une structure appropri�e pour traiter de telles questions?",56)
	NODE(56)
		SAY("BioTech pourra toujours essayer de nous jouer des tours. Ils r�colteront ce qu'ils m�ritent. Pour ce projet, Damion Jordan lui-m�me a exprim� le souhait de rappeler un expert dans les armes � rayons, aujourd'hui parti � la retraite.")

		ANSWER("CONTINUER",57)
	NODE(57)
		SAY("Le probl�me, c'est que notre expert a pris sa retraite depuis maintenant six mois. Comme vous nous avez montr� votre loyaut� lors de votre premier run, je pense que vous devriez tenter de le convaincre de revenir travailler pour nous.")

		ANSWER("CONTINUER",58)
	NODE(58)
		SAY("Vous allez lui pr�senter une offre qu'il ne pourra pas refuser. L'offre de r�int�grer l'�quipe. Vous allez devoir n�gocier serr� sur cette affaire.")

		ANSWER("Je vais faire de mon mieux. O� se trouve cet expert?",59)
		ANSWER("J'ai bien peut de ne pas �tre pr�t pour cette mission.",61)
	NODE(59)
		SAY("Il s'appelle Matt Tronstett. Selon nos derni�res informations, il vit � Point Red, dans les Terres Br�l�es. Secteur B 07, pr�cis�ment.")

		ANSWER("CONTINUER",60)
	NODE(60)
		SAY("Si vous r�ussissez � le convaincre, allez ensuite voir Mazzaro pour lui faire votre rapport.")
		STARTMISSION(3559)
		SETNEXTDIALOGSTATE(12)
		ENDDIALOG()
		
	NODE(61)
		SAY("C'est certainement une mission importante, mais vous n'avez pas l'obligation de la faire.")
		ENDDIALOG()
	NODE(62)
		SAY("Vous avez parl� � Tronstett? Il vit � Point Red, dans les Terres Br�l�es.")
		ENDDIALOG()
		

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3

	NODE(100)
		SAY("On a besoin de renseignements. Il faut qu'on sache l'�tat d'avancement de BioTech. Et pour cela, il nous faut un runner fiable tel que vous pour mener une enqu�te.")

		ANSWER("Une enqu�te? Quel genre d'enqu�te?",102)
	NODE(102)
		SAY("Tangent utilise diff�rentes m�thodes pour obtenir ses informations. Beaucoup de gens vendraient leur propre m�re pour de l'argent. Ils viendraient m�me nous manger dans la main.")

		ANSWER("L'espionnage, �a n'est pas ill�gal?",103)
	NODE(103)
		SAY("L'espionnage? Visiblement vous ne savez pas que ce que Tangent fait, les autres compagnies ne se privent pas de le faire. C'est exactement pour cela que Tangent est toujours en activit�.")

		ANSWER("CONTINUER",104)
	NODE(104)
		SAY("Vous n'�tes pas innocent au point de penser que les autres compagnies n'utilisent pas les m�mes m�thodes, n'est-ce pas? C'est tr�s important pour la compagnie. Et de mon point de vue, si vous ne travaillez pas pour Tangent, vous travaillez contre Tangent. La seconde solution, je ne vous la conseillerais pas.")

		ANSWER("Je ne voulais pas vous sembler inconvenant. C'est juste que...",105)
	NODE(105)
		SAY("Regardez autour de vous... Vous verrez deux options. Soit vous appartenez � une puissante faction... soit vous diminuez votre esp�rance de vie en de�� de tout avenir possible. Vous trouverez votre contact pour cette mission � Catlock Bay.")

		ANSWER("CONTINUER",106)
	NODE(106)
		SAY("Vous pouvez lui proposer jusqu'� 10.000 cr�dits si vous estimez que �a en vaut la peine. C'est un Tsunami, et il s'appelle Gruber. Soyez sur vos gardes.")

		ANSWER("CONTINUER",107)
	NODE(107)
		SAY("Il n'y a pas de lois dans les Terres Br�l�es, alors faites attention � vous. Et ne restez pas trop longtemps l�-bas, vous pourriez attraper de sales mutations. Si vous trouvez quelque chose d'int�ressant, revenez ici me faire votre rapport.")
		STARTMISSION(3560)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(108)
		SAY("Comme vous voulez. Si vous changez d'avis, revenez me voir.")
		ENDDIALOG()

	

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4

	NODE(150)
		SAY("Non, c'est diff�rent. Je pense qu'il sait que nous sommes une compagnie importante. Tangent pourrait lui donner tout l'argent qu'il veut. Alors il a demand� une autre forme de paiement.")

		ANSWER("CONTINUER",152)
	NODE(152)
		SAY("Il nous a expliqu� qu'il avait des affaires en cours avec les Anges D�chus. Ils lui auraient refus� une place chez eux, sous le pr�texte qu'il n'�tait pas assez qualifi�.")

		ANSWER("C'est plut�t courant. M�me Tangent n'a pas de bonnes relations avec les Anges.",153)
	NODE(153)
		SAY("En effet. Mais les Anges n'�taient pas forc�s de pirater nos syst�mes comme ils l'ont fait. Nous avons eu beaucoup de probl�mes suite � ces attaques, et � pr�sent ils n'ont que ce qu'ils m�ritent. J'irai droit au but : nous voulons que vous r�pondiez aux demandes de votre contact.")

		ANSWER("Dites-moi ce que je dois faire.",154)
		ANSWER("Navr�, pas en ce moment.",159)
	NODE(154)
		SAY("C'est tr�s simple. M�me si nous n'avons pas recours � ce genre d'actions habituellement. Prenez rendez-vous avec Max, vous le trouverez dans l'ancienne prison de l'Outzone. Il a une tr�s bonne exp�rience de ce genre de choses.")

		ANSWER("CONTINUER",155)
	NODE(155)
		SAY("Dites-lui qu'on veut qu'il descende 10 Anges D�chus. Facile, n'est-ce pas? Mais dites-lui de ne pas abattre du menu fretin. Qu'il choisisse parmi ceux qui ont un peu plus de poids.")

		ANSWER("Si c'est pour Tangent, je le ferai. Apr�s tout, ce sont les Anges D�chus qui nous ont attaqu�s en premier. Mais j'ai tout de m�me mes doutes.",156)
	NODE(156)
		SAY("Vous n'irez pas loin avec cette attitude. Il va falloir vous faire � l'id�e de r�pandre des cadavres pour Tangent de temps en temps. Allons... Qu'est-ce que vous esp�riez? Si on produit des armes, �a n'est pas pour rien.")

		ANSWER("CONTINUER",157)
	NODE(157)
		SAY("Pour quoi faire, alors? Certainement pas pour faire des trous dans les nuages. La compagnie vaut plus que quelques Anges D�chus qui ont mut�.")

		ANSWER("C'est bon, pas la peine d'insister, je vous ai dit que j'allais m'en occuper. Mais je ne pense pas qu'un plan a le m�me prix qu'une vie humaine, c'est tout.",158)
	NODE(158)
		SAY("Ne vous inqui�tez pas pour �a, laissez Tangent r�soudre les questions de morale. Allez voir Max � la prison de l'Outzone. C'est un Dragon Noir. Lorsque vous avez r�cup�r� le plan, allez voir Mazzaro. Il veut vous parler.")
		STARTMISSION(3561)
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(159)
		SAY("Comme vous voulez. Mais ne comptez pas sur Tangent pour avoir une mission pour vous � chaque fois que vous pointerez le bout de votre nez.")
		ENDDIALOG()
		
	NODE(160)
		SAY("Vous avez eu votre mission. Allez voir Max dans Outzone 05, et dites-lui d'aller tuer ces Anges D�chus. Ensuite, vous obtiendrez le plan aupr�s de Benjamin, dans le secteur industriel 02.")

		ENDDIALOG()
		


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5

	NODE(200)
		SAY("On n'a pas �t� surpris d'apprendre que les hackers �taient des employ�s de BioTech. Le probl�me, c'est que nous n'avons pas de preuves de cela, parce que les donn�es permettant de le prouver ont �t� endommag�es lors du sabotage. Nos activit�s de d�veloppement ont pris quelques jours de retard en cons�quence.")

		ANSWER("On aurait d� s'attendre � cela de la part de BioTech.",202)
	NODE(202)
		SAY("Tr�s certainement, mais vous sous-estimez la fragilit� de ces syst�mes et de ces structures de tests. M�me la plus petite distorsion peut causer des dommages tr�s importants. De plus, le r�seau �tait encore en reconfiguration apr�s l'attaque informatique des Anges D�chus. Et c'est pourquoi nous �tions encore plus vuln�rables que d'habitude.")

		ANSWER("Quelles seront les cons�quences? Est-ce que Tangent a d�j� d�cid� de la marche � suivre? Il faut bien r�pondre � �a d'une mani�re ou d'une autre...",203)
	NODE(203)
		SAY("Oui, vous avez raison. On a d�j� d�cid� d'un plan. BioTech va subir une attaque directe. Comme avertissement, �videmment. Et comme vous avez d�j� prouv� votre comp�tence dans ce genre de missions, Tangent vous a choisi pour cette t�che.")

		ANSWER("Ca n'est pas moi qui d�cide des missions que je fais. Mais je vais m'en charger.",204)
		ANSWER("Je pense que je n'en suis pas capable.",207)
	NODE(204)
		SAY("Je viens de me souvenir de quelque chose. Le clan Tsunami semble impliqu� dans cette histoire. Vous devriez parler � Figaro, parce que nous pourrions utiliser nos contacts dans le Dragon Noir pour cette affaire. Si BioTech utilise l'appui de Tsunami, alors nous allons faire la m�me chose avec le Dragon Noir. C'est vous qui allez d�cider de la mani�re dont le Dragon Noir va attaquer BioTech. Ecoutez attentivement ce qu'ils sont en mesure de faire, et choisissez en cons�quence.")

		ANSWER("CONTINUER",205)
	NODE(205)
		SAY("Il y a autre chose. Votre contact l�-bas, Benjamin, a insist� pour vous parler. Il a dit pr�f�rer parler � quelqu'un qu'il connaissait d�j�. Apparemment, il aurait des informations sur le prototype de Biotech, et maintenant il voudrait nous les vendre.")

		ANSWER("Est-ce que vous pourriez �tre plus explicite quant aux personnes que je dois tuer?",209)
	NODE(206)
		SAY("On est au courant de vos actions dans la hi�rarchie, vous savez. Il y a beaucoup � faire, alors ne gaspillez pas votre temps. Vous devriez d'abord aller voir Figaro, et une fois que vous aurez aplati deux membres de BioTech, Benjamin sera pr�t � vous parler.")
		STARTMISSION(3562)
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()


	NODE(207)
		SAY("Si vous changez d'avis, n'h�sitez pas � nous contacter.")
		ENDDIALOG()
		
	NODE(208)
		SAY("On vous a d�j� expliqu� ce que vous aviez � faire. D'abord, donnez vos instructions � Figaro, puis allez aplatir deux types de BioTech, et enfin allez parler � Benjamin dans le secteur industriel 02.")
		ENDDIALOG()

	NODE(209)
		SAY("Deux runners de BioTech, j'insiste bien sur ce mot. Pas d'employ�s, pas de gardes, pas d'officiels. Que des runners.")
		
		ANSWER("Et je peux aplatir n'importe quel runner?",10)
	NODE(210)
		SAY("Non, seulement ceux qui sont au moins aussi forts que vous. Sinon �a ne sera pas pris en compte.")

		ANSWER("CONTINUER",6)

		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6

	NODE(250)
		SAY("La modestie, �a ne vous va pas du tout. Vous avez le droit d'�tre fier de ce que vous faites. Mais �videmment, ce n'est pas pour �a qu'on a besoin de vous aujourd'hui.")

		ANSWER("Je n'en attendais pas moins. Quel est le probl�me?",252)
	NODE(252)
		SAY("C'est au sujet des derniers tests de l'arme � rayons. Tout est en ordre, et on aura bient�t termin� la lecture des derniers rapports. Mais malgr� tout, Biotech a r�ussi on ne sait comment � rattraper son retard et � atteindre le m�me stade de d�veloppement.")

		ANSWER("CONTINUER",253)
	NODE(253)
		SAY("Tangent ne peut pas se permettre de perdre dans une confrontation directe. Surtout quand c'est Biotech qui est en face. C'est pourquoi nous allons lancer une op�ration contre eux. Il faut r�duire leurs chances de rivaliser avec notre arme.")

		ANSWER("Et vous avez pens� � moi? Bien. Qu'est-ce que vous pr�voyez?",254)
	NODE(254)
		SAY("Les tests finaux doivent �tre entrav�s � tout prix. Vous avez bien re�u des �l�ments compromettants de la part de votre contact, la derni�re fois? Alors vous devriez les utiliser maintenant. C'est vraiment l'occasion r�v�e.")

		ANSWER("Oui, des �l�ments compromettants concernant une scientifique, une certaine Andressa. Elle devrait �tre dans les alentours du si�ge de Biotech.",255)
	NODE(255)
		SAY("Alors utilisez vos preuves. Tout ce qui fait du mal � BioTech est bon � prendre.")
		STARTMISSION(3563)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(256)
		SAY("D�p�chez-vous, le temps presse.")
		ENDDIALOG()

end