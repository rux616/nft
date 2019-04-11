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
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Vous n'êtes pas des nôtres. Veuillez quitter cet endroit.")
			ENDDIALOG()
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(4,0)
			if(result==-2)then
				SAY("La seule manière de nous aider à présent est de fonder votre propre clan pour nous assister.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(4,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Retournez vous entraîner et revenez nous voir (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(4,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(4,1)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Retournez vous entraîner et revenez nous voir (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(4,2)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Retournez vous entraîner et revenez nous voir (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(4,3)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Retournez vous entraîner et revenez nous voir (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(4,4)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Retournez vous entraîner et revenez nous voir (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(4,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Retournez vous entraîner et revenez nous voir (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
						CANDOEPICRUN(4,5)
				        if(result==-4)then
						SAY("La seule manière de nous aider à présent est de fonder votre propre clan pour nous assister.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Vous commencez à devenir une véritable célébrité ici. L'autre jour, j'ai même entendu quelqu'un parler de vous dans la rue.")

		ANSWER("Merci, mais je fais seulement mon travail.",250)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Il s'est passé la nuit dernière quelque chose qu'on n'avait pas prévu. On a saboté noter laboratoire, et on a attaqué certains de nos systèmes informatiques. Heureusement, Chester Cohor a pu identifier nos intrus avant que la coupure du réseau.")

		ANSWER("CONTINUER",200)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("On a envoyé un message à votre contact de Biotech pour lui dire qu'on était intéressés par le plan. Nous avons tenté de négocier avec lui, mais...")

		ANSWER("Il a refusé l'offre? Le plan était déjà vendu?",150)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Quelle heureuse coïncidence! Vous arrivez justement au moment où on a besoin de vous. Le projet d'arme à rayons avance à grands pas, et on a effectué des tests sur différents matériaux. Les résultats sont très convaincants. Mais cela ne suffit pas à Tangent.")

		ANSWER("CONTINUER",100)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("On a de bonnes nouvelles. CityAdmin a décidé de commander une nouvelle arme à rayons. Naturellement, nous sommes en première ligne pour cette commande.")

		ANSWER("CONTINUER",50)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
						SAY("Bienvenue, runner! C'est toujours un plaisir de voir une nouvelle tête parmi nous. Tangent aime être proche de ses employés, vous vous en rendrez compte rapidement.")

						ANSWER("CONTINUER",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1

	NODE(11)
		SAY("Nous donnons à chacun les moyens de créer sa propre réalité. Comme vous l'avez peut-être remarqué, je suis en train de parler des armes que nous produisons. Vous vous imaginez sans doute qu'elles trouvent facilement des acquéreurs à Neocron. Même moi, j'ai un fusil d'assaut Tangent dans mon appartement.")

		ANSWER("C'est un plaisir d'appartenir à une faction qui traite ses clients de manière réaliste. On ne nous lave pas le cerveau à longueur de journées avec ces imbécillités que sont la paix et la liberté.",12)
	NODE(12)
		SAY("Evidemment, c'est en effet un de nos objectifs les plus chers. Tout client a de l'importance pour nous, et nous organisons de nombreuses compagnes pour susciter l'intérêt du consommateur.")

		ANSWER("CONTINUER",13)
	NODE(13)
		SAY("Mais Tangent s'occupe surtout de la production d'armes à tous les échelons. Je devrais peut-être vous parler tout d'abord de la compagnie? Nous allons évoquer cela ensemble.")

		ANSWER("J'allais justement vous le demander.",14)
	NODE(14)
		SAY("Tangent Technologies a été créée en 2748. A cette époque, elle s'est séparée de sa maison mère, BioTech, car elle avait trop grandi pour en rester dépendante.")

		ANSWER("CONTINUER",15)
	NODE(15)
		SAY("Depuis cette époque, Tangent a constamment dépassé sa compagnie mire, à tous les niveaux. CityAdmin a toujours signé de gros contrats avec Tangent, car son secteur d'activité est depuis toujours la spécialisation dans la fabrication des armes.")

		ANSWER("CONTINUER",16)
	NODE(16)
		SAY("En vendant des armes sur le marché de Neocron, nous avons assuré un constant renouvellement du marché. Et même si BioTech utilise tous les moyens en sa possession pour nous renverser de notre place prépondérante, nos ventes continuent de progresser chaque année.")

		ANSWER("BioTech essaye donc activement de mettre des bâtons dans les roues de Tangent?",17)
	NODE(17)
		SAY("Oui, et ils ont même parfois recours à la violence. Officiellement, ils vont bien entendu jouer les innocents. Mais ils ont des contacts avec Tsunami et investissent de grosses sommes dans les actions qu'ils mènent contre Tangent.")

		ANSWER("CONTINUER",18)
	NODE(18)
		SAY("Mais ces tentatives ne peuvent pas empêcher Tangent d'atteindre ses buts. Et en parlant de ça, vous  désirez certainement commencer à travailler pour Tangent, n'est-ce pas?")

		ANSWER("Oui, évidemment. Je m'imaginais presque que j'allais ne rien faire en échange de cet appartement que vous m'avez donné.",19)
	NODE(19)
		SAY("Soyez assuré que l'appartement vous appartient réellement. Tangent considère votre première mission comme une simple faveur. Vous toucherez un petit dédommagement pour cela.")

		ANSWER("C'est toujours agréable de travailler pour de l'argent. De quoi s'agit-il?",20)
		ANSWER("J'ai envie de remettre ça à plus tard.",33)
	NODE(20)
		SAY("C'est plutôt simple. Pour une grosse compagnie comme Tangent, il est primordial d'entretenir de bonnes relations pour poursuivre les projets importants.")

		ANSWER("CONTINUER",21)
	NODE(21)
		SAY("Nos plus importants partenaires sont NExT et Diamond Immobilier. NExT coopère avec nous parce que, après tout, nous utilisons leurs véhicules pour monter certains de nos systèmes d'armement.")

		ANSWER("CONTINUER",22)
	NODE(22)
		SAY("Evidemment, c'est dans notre intérêt, c'est très visible. Et nous avons avec Diamond Immobilier des contrats pour équiper leurs propriétés en systèmes de sécurité.")

		ANSWER("CONTINUER",23)
	NODE(23)
		SAY("Notre relation avec Diamond remonte à loin, et nous sommes en très bon termes.")

		ANSWER("Oui, je pensais bien que ce genre de contrats existaient. Mais Tangent fournit aussi des armes pour les CopBots, non?",24)
	NODE(24)
		SAY("C'est juste. Evidemment, CityAdmin a choisi Tangent pour s'occuper de l'arsenal des CopBots. Après tout, Tangent est le plus grand fabricant d'armes indépendant. C'est non seulement plutôt lucratif, mais c'est aussi une mission qui exige de nous une grande responsabilité. Si nous faisions les mauvais choix, les conséquences pourraient être catastrophiques.")

		ANSWER("CONTINUER",25)
	NODE(25)
		SAY("La principale préoccupation de Tangent, c'est l'efficacité de ses armes. Les CopBots sont censés accomplir leur tâche aussi efficacement que possible. Il faut que les citoyens de Neocron puissent dormir sur leurs deux oreilles.")

		ANSWER("Impressionnant. Mais vous vouliez me dire quelque chose au sujet de ma mission, si le me souviens bien.",26)
	NODE(26)
		SAY("Attendez que j'aie terminé. Cette petite mission consiste en vous rendre à NExT, Diamond Immobilier, et enfin Pepper Park. Pepper Park est un quartier vraiment dangereux. Faites attention lorsque vous y passez.")

		ANSWER("CONTINUER",27)
	NODE(27)
		SAY("Donc, tout d'abord vous devrez passer voir le directeur des opérations de NExT pour lui remettre ces documents importants. C'est une analyse poussée de l'efficacité des systèmes d'armement de Tangent en conjonction avec la technologie des Hovercrafts.")

		ANSWER("CONTINUER",28)
	NODE(28)
		SAY("Ensuite, allez au QG de Diamond pour la seconde livraison. Mais j'ai oublié le nom du destinataire. C'est soir le QG de Diamond, soit la tour CityAdmin, à moins que ce soit un des magasins de Diamond.")

		ANSWER("CONTINUER",29)
	NODE(29)
		SAY("Cette livraison est un assortiment de spiritueux. Souvenez-vous qu'il faut toujours entretenir ses relations par de petits cadeaux.")

		ANSWER("Vous avez aussi parlé de Pepper Park. Qu'est-ce que je vais devoir y faire?",30)

--Spieler bekommt zwei Pakete
	NODE(30)
		GIVEITEM(9150)
		GIVEITEM(9151)
		SAY("Ca n'est pas très important. Vous allez devoir y trouver quelqu'un qui s'appelle Figaro. Il vous donnera un paquet que vous devrez remettre ici. C'est bien compris?")

		ANSWER("Evidemment, je suis plutôt du genre curieux...",31)
	NODE(31)
		SAY("La curiosité est une bénédiction, encore faut-il en user avec modération. En excès, elle peut être extrêmement néfaste. Allez-y, et n'oubliez pas à votre retour de donner le paquet de Figaro à Mazzaro, ici au QG.")

		ANSWER("CONTINUER",32)
	NODE(32)
		SAY("Sinon il sera de mauvaise humeur, et ça n'est pas le genre de chose qu'on souhaite voir arriver ici.")
		STARTMISSION(3558)
		SETNEXTDIALOGSTATE(24)
		ENDDIALOG()


	NODE(33)
		SAY("Alors prenez votre temps. Préparez-vous,et revenez quand vous êtes prêt.")
		ENDDIALOG()

	NODE(34)
		SAY("Vous devriez prendre votre première mission un peu plus au sérieux si vous voulez devenir quelqu'un dans Tangent. Si vous ne trouvez pas le courtier de Diamond, alors c'est qu'il est autre aprt en ville. Diamond est partout dans Neocron.")
		ENDDIALOG()
		
	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2

	NODE(50)
		SAY("Néanmoins, nous ne comprenons pas pourquoi Tangent et BioTech ont été choisies toutes les deux pour cette mission. C'est évident que nous pourrions l'assurer sans aide.")

		ANSWER("CONTINUER",51)
	NODE(51)
		SAY("Le but de Tangent, c'est de créer des armes. Mais CityAdmin a décidé de faire aussi appel à BioTech pour ce projet.")

		ANSWER("Mais BioTech ne posera pas de problèmes à Tangent. Nous avons un grand avantage dans cette partie.",53)
	NODE(53)
		SAY("C'est tout à fait exact. Tout le monde le sait. BioTech a encore dû jouer de sales tours pour avoir réussi à avoir une place de choix dans ce contrat.")

		ANSWER("Et quand saura-t-on qui remportera le contrat?",54)
	NODE(54)
		SAY("Prochainement, les deux compagnies vont devoir présenter un prototype de l'arme à rayons. Le meilleur remportera le marché. Mais je pense que la compétition ne sera pas franche.")

		ANSWER("CONTINUER",55)
	NODE(55)
		SAY("Si tout est déjà prévu par BioTech, je pense qu'ils ont déjà un sale coup en préparation.")

		ANSWER("Mais Tangent n'a pas une structure appropriée pour traiter de telles questions?",56)
	NODE(56)
		SAY("BioTech pourra toujours essayer de nous jouer des tours. Ils récolteront ce qu'ils méritent. Pour ce projet, Damion Jordan lui-même a exprimé le souhait de rappeler un expert dans les armes à rayons, aujourd'hui parti à la retraite.")

		ANSWER("CONTINUER",57)
	NODE(57)
		SAY("Le problème, c'est que notre expert a pris sa retraite depuis maintenant six mois. Comme vous nous avez montré votre loyauté lors de votre premier run, je pense que vous devriez tenter de le convaincre de revenir travailler pour nous.")

		ANSWER("CONTINUER",58)
	NODE(58)
		SAY("Vous allez lui présenter une offre qu'il ne pourra pas refuser. L'offre de réintégrer l'équipe. Vous allez devoir négocier serré sur cette affaire.")

		ANSWER("Je vais faire de mon mieux. Où se trouve cet expert?",59)
		ANSWER("J'ai bien peut de ne pas être prêt pour cette mission.",61)
	NODE(59)
		SAY("Il s'appelle Matt Tronstett. Selon nos dernières informations, il vit à Point Red, dans les Terres Brûlées. Secteur B 07, précisément.")

		ANSWER("CONTINUER",60)
	NODE(60)
		SAY("Si vous réussissez à le convaincre, allez ensuite voir Mazzaro pour lui faire votre rapport.")
		STARTMISSION(3559)
		SETNEXTDIALOGSTATE(12)
		ENDDIALOG()
		
	NODE(61)
		SAY("C'est certainement une mission importante, mais vous n'avez pas l'obligation de la faire.")
		ENDDIALOG()
	NODE(62)
		SAY("Vous avez parlé à Tronstett? Il vit à Point Red, dans les Terres Brûlées.")
		ENDDIALOG()
		

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3

	NODE(100)
		SAY("On a besoin de renseignements. Il faut qu'on sache l'état d'avancement de BioTech. Et pour cela, il nous faut un runner fiable tel que vous pour mener une enquête.")

		ANSWER("Une enquête? Quel genre d'enquête?",102)
	NODE(102)
		SAY("Tangent utilise différentes méthodes pour obtenir ses informations. Beaucoup de gens vendraient leur propre mère pour de l'argent. Ils viendraient même nous manger dans la main.")

		ANSWER("L'espionnage, ça n'est pas illégal?",103)
	NODE(103)
		SAY("L'espionnage? Visiblement vous ne savez pas que ce que Tangent fait, les autres compagnies ne se privent pas de le faire. C'est exactement pour cela que Tangent est toujours en activité.")

		ANSWER("CONTINUER",104)
	NODE(104)
		SAY("Vous n'êtes pas innocent au point de penser que les autres compagnies n'utilisent pas les mêmes méthodes, n'est-ce pas? C'est très important pour la compagnie. Et de mon point de vue, si vous ne travaillez pas pour Tangent, vous travaillez contre Tangent. La seconde solution, je ne vous la conseillerais pas.")

		ANSWER("Je ne voulais pas vous sembler inconvenant. C'est juste que...",105)
	NODE(105)
		SAY("Regardez autour de vous... Vous verrez deux options. Soit vous appartenez à une puissante faction... soit vous diminuez votre espérance de vie en deçà de tout avenir possible. Vous trouverez votre contact pour cette mission à Catlock Bay.")

		ANSWER("CONTINUER",106)
	NODE(106)
		SAY("Vous pouvez lui proposer jusqu'à 10.000 crédits si vous estimez que ça en vaut la peine. C'est un Tsunami, et il s'appelle Gruber. Soyez sur vos gardes.")

		ANSWER("CONTINUER",107)
	NODE(107)
		SAY("Il n'y a pas de lois dans les Terres Brûlées, alors faites attention à vous. Et ne restez pas trop longtemps là-bas, vous pourriez attraper de sales mutations. Si vous trouvez quelque chose d'intéressant, revenez ici me faire votre rapport.")
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
		SAY("Non, c'est différent. Je pense qu'il sait que nous sommes une compagnie importante. Tangent pourrait lui donner tout l'argent qu'il veut. Alors il a demandé une autre forme de paiement.")

		ANSWER("CONTINUER",152)
	NODE(152)
		SAY("Il nous a expliqué qu'il avait des affaires en cours avec les Anges Déchus. Ils lui auraient refusé une place chez eux, sous le prétexte qu'il n'était pas assez qualifié.")

		ANSWER("C'est plutôt courant. Même Tangent n'a pas de bonnes relations avec les Anges.",153)
	NODE(153)
		SAY("En effet. Mais les Anges n'étaient pas forcés de pirater nos systèmes comme ils l'ont fait. Nous avons eu beaucoup de problèmes suite à ces attaques, et à présent ils n'ont que ce qu'ils méritent. J'irai droit au but : nous voulons que vous répondiez aux demandes de votre contact.")

		ANSWER("Dites-moi ce que je dois faire.",154)
		ANSWER("Navré, pas en ce moment.",159)
	NODE(154)
		SAY("C'est très simple. Même si nous n'avons pas recours à ce genre d'actions habituellement. Prenez rendez-vous avec Max, vous le trouverez dans l'ancienne prison de l'Outzone. Il a une très bonne expérience de ce genre de choses.")

		ANSWER("CONTINUER",155)
	NODE(155)
		SAY("Dites-lui qu'on veut qu'il descende 10 Anges Déchus. Facile, n'est-ce pas? Mais dites-lui de ne pas abattre du menu fretin. Qu'il choisisse parmi ceux qui ont un peu plus de poids.")

		ANSWER("Si c'est pour Tangent, je le ferai. Après tout, ce sont les Anges Déchus qui nous ont attaqués en premier. Mais j'ai tout de même mes doutes.",156)
	NODE(156)
		SAY("Vous n'irez pas loin avec cette attitude. Il va falloir vous faire à l'idée de répandre des cadavres pour Tangent de temps en temps. Allons... Qu'est-ce que vous espériez? Si on produit des armes, ça n'est pas pour rien.")

		ANSWER("CONTINUER",157)
	NODE(157)
		SAY("Pour quoi faire, alors? Certainement pas pour faire des trous dans les nuages. La compagnie vaut plus que quelques Anges Déchus qui ont muté.")

		ANSWER("C'est bon, pas la peine d'insister, je vous ai dit que j'allais m'en occuper. Mais je ne pense pas qu'un plan a le même prix qu'une vie humaine, c'est tout.",158)
	NODE(158)
		SAY("Ne vous inquiétez pas pour ça, laissez Tangent résoudre les questions de morale. Allez voir Max à la prison de l'Outzone. C'est un Dragon Noir. Lorsque vous avez récupéré le plan, allez voir Mazzaro. Il veut vous parler.")
		STARTMISSION(3561)
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(159)
		SAY("Comme vous voulez. Mais ne comptez pas sur Tangent pour avoir une mission pour vous à chaque fois que vous pointerez le bout de votre nez.")
		ENDDIALOG()
		
	NODE(160)
		SAY("Vous avez eu votre mission. Allez voir Max dans Outzone 05, et dites-lui d'aller tuer ces Anges Déchus. Ensuite, vous obtiendrez le plan auprès de Benjamin, dans le secteur industriel 02.")

		ENDDIALOG()
		


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5

	NODE(200)
		SAY("On n'a pas été surpris d'apprendre que les hackers étaient des employés de BioTech. Le problème, c'est que nous n'avons pas de preuves de cela, parce que les données permettant de le prouver ont été endommagées lors du sabotage. Nos activités de développement ont pris quelques jours de retard en conséquence.")

		ANSWER("On aurait dû s'attendre à cela de la part de BioTech.",202)
	NODE(202)
		SAY("Très certainement, mais vous sous-estimez la fragilité de ces systèmes et de ces structures de tests. Même la plus petite distorsion peut causer des dommages très importants. De plus, le réseau était encore en reconfiguration après l'attaque informatique des Anges Déchus. Et c'est pourquoi nous étions encore plus vulnérables que d'habitude.")

		ANSWER("Quelles seront les conséquences? Est-ce que Tangent a déjà décidé de la marche à suivre? Il faut bien répondre à ça d'une manière ou d'une autre...",203)
	NODE(203)
		SAY("Oui, vous avez raison. On a déjà décidé d'un plan. BioTech va subir une attaque directe. Comme avertissement, évidemment. Et comme vous avez déjà prouvé votre compétence dans ce genre de missions, Tangent vous a choisi pour cette tâche.")

		ANSWER("Ca n'est pas moi qui décide des missions que je fais. Mais je vais m'en charger.",204)
		ANSWER("Je pense que je n'en suis pas capable.",207)
	NODE(204)
		SAY("Je viens de me souvenir de quelque chose. Le clan Tsunami semble impliqué dans cette histoire. Vous devriez parler à Figaro, parce que nous pourrions utiliser nos contacts dans le Dragon Noir pour cette affaire. Si BioTech utilise l'appui de Tsunami, alors nous allons faire la même chose avec le Dragon Noir. C'est vous qui allez décider de la manière dont le Dragon Noir va attaquer BioTech. Ecoutez attentivement ce qu'ils sont en mesure de faire, et choisissez en conséquence.")

		ANSWER("CONTINUER",205)
	NODE(205)
		SAY("Il y a autre chose. Votre contact là-bas, Benjamin, a insisté pour vous parler. Il a dit préférer parler à quelqu'un qu'il connaissait déjà. Apparemment, il aurait des informations sur le prototype de Biotech, et maintenant il voudrait nous les vendre.")

		ANSWER("Est-ce que vous pourriez être plus explicite quant aux personnes que je dois tuer?",209)
	NODE(206)
		SAY("On est au courant de vos actions dans la hiérarchie, vous savez. Il y a beaucoup à faire, alors ne gaspillez pas votre temps. Vous devriez d'abord aller voir Figaro, et une fois que vous aurez aplati deux membres de BioTech, Benjamin sera prêt à vous parler.")
		STARTMISSION(3562)
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()


	NODE(207)
		SAY("Si vous changez d'avis, n'hésitez pas à nous contacter.")
		ENDDIALOG()
		
	NODE(208)
		SAY("On vous a déjà expliqué ce que vous aviez à faire. D'abord, donnez vos instructions à Figaro, puis allez aplatir deux types de BioTech, et enfin allez parler à Benjamin dans le secteur industriel 02.")
		ENDDIALOG()

	NODE(209)
		SAY("Deux runners de BioTech, j'insiste bien sur ce mot. Pas d'employés, pas de gardes, pas d'officiels. Que des runners.")
		
		ANSWER("Et je peux aplatir n'importe quel runner?",10)
	NODE(210)
		SAY("Non, seulement ceux qui sont au moins aussi forts que vous. Sinon ça ne sera pas pris en compte.")

		ANSWER("CONTINUER",6)

		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6

	NODE(250)
		SAY("La modestie, ça ne vous va pas du tout. Vous avez le droit d'être fier de ce que vous faites. Mais évidemment, ce n'est pas pour ça qu'on a besoin de vous aujourd'hui.")

		ANSWER("Je n'en attendais pas moins. Quel est le problème?",252)
	NODE(252)
		SAY("C'est au sujet des derniers tests de l'arme à rayons. Tout est en ordre, et on aura bientôt terminé la lecture des derniers rapports. Mais malgré tout, Biotech a réussi on ne sait comment à rattraper son retard et à atteindre le même stade de développement.")

		ANSWER("CONTINUER",253)
	NODE(253)
		SAY("Tangent ne peut pas se permettre de perdre dans une confrontation directe. Surtout quand c'est Biotech qui est en face. C'est pourquoi nous allons lancer une opération contre eux. Il faut réduire leurs chances de rivaliser avec notre arme.")

		ANSWER("Et vous avez pensé à moi? Bien. Qu'est-ce que vous prévoyez?",254)
	NODE(254)
		SAY("Les tests finaux doivent être entravés à tout prix. Vous avez bien reçu des éléments compromettants de la part de votre contact, la dernière fois? Alors vous devriez les utiliser maintenant. C'est vraiment l'occasion rêvée.")

		ANSWER("Oui, des éléments compromettants concernant une scientifique, une certaine Andressa. Elle devrait être dans les alentours du siège de Biotech.",255)
	NODE(255)
		SAY("Alors utilisez vos preuves. Tout ce qui fait du mal à BioTech est bon à prendre.")
		STARTMISSION(3563)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(256)
		SAY("Dépêchez-vous, le temps presse.")
		ENDDIALOG()

end