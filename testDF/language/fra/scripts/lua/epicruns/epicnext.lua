--new
--NEXT
function DIALOG()
NODE(0)
--CANDOEPICRUN(3, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(3, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(3,0)
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Je suis navré, mais vous ne faites pas partie de notre faction. Alors ne me faites pas perdre mon temps. A moins que vous songiez à nous rejoindre?!")
			
			ANSWER("C'est pour cela que je viens. Je voudrais rejoindre votre faction",301)
			ANSWER("Ca ne m'intéresse pas du tout. Au revoir.",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(3,0)
			if(result==-2)then
				SAY("Maintenant que vous avez fait tout ce que vous pouviez pour nous, la seule manière de nous aider est de fonder votre propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(3,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(3,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(3,1)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(3,2)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(3,3)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(3,4)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(3,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
						CANDOEPICRUN(3,5)
				        if(result==-4)then
						SAY("Maintenant que vous avez fait tout ce que vous pouviez pour nous, la seule manière de nous aider est de fonder votre propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Ravi de vous revoir. Mason m'a demandé de vous parler de ses plans au sujet de ces actions incroyables de ProtoPharm. Il semble que tout le monde soit au courant maintenant. Mais il y a un moyen de revenir à la normale.")

		ANSWER("Intéressant. Est-ce que ça marchera, au moins?",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("NEXT vous propose de participer aux tests de conduite d'un de nos prototypes. Mason vous en a peut-être déjà parlé. Vous pouvez aller prendre les clés auprès du technicien Benji à la piste de course du désert, secteur G 11. Votre tâche sera de tester le comportement du véhicule dans le désert environnant.")
		STARTMISSION(3550)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Content de vous voir. Dépêchez-vous, Mason veut vous parler. Il s'est passé quelque chose d'horrible.")
		STARTMISSION(3549)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Ahh vous revoilà! J'ai bien peur que nous n'ayons rien encore à vous proposer. Mais je voulais vous demander d'aller voir le vieux Torben à la station Pepper Park. Il en veut pas me parler, mais je sais qu'il va avoir des problèmes s'il ne reprend pas le travail rapidement.")
		
		ANSWER("CONTINUER",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Voilà une nouvelle chance pour vous de faire quelque chose pour NExT. C'est assez délicat à expliquer, parce que l'opinion de la population sur ce sujet varie grandement. De nombreuses idées sur les Anges Déchus sont construites sur des préjugés et des rumeurs, rarement sur des faits qui les accusent réellement.")
		
		ANSWER("CONTINUER",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Bienvenue chez NExT, c'est toujours un grand moment quand un nouvel employé nous rejoint. J'espère que votre appartement vous plaît? Comme vous le savez probablement déjà, NExT opère dans le secteur des transports. Presque tous les véhicules que vous voyez ici viennent des usines d'assemblage de NExT.")
		
		ANSWER("CONTINUER",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 1
	NODE(11)
		SAY("Des hoverbikes aux rames de métro en passant par les vaisseaux spatiaux, tout ça vient de chez NEXT. Mais pour rester en haut de la hiérarchie, nous devons avoir de bonnes relations avec les autres compagnies. Voulez-vous nous aider, ou bien avez-vous encore besoin de temps pour vous adapter à votre nouvelle maison?")
		
		ANSWER("Je pense qu'on va pouvoir commencer.",12)
		ANSWER("Actuellement, je dirais qu'il me faut encore un peu de temps.",19)
	NODE(12)
		SAY("Excellent. On a besoin de gens comme vous. Actuellement, vous êtes assigné à un grand projet entre nous et Biotech. Evidemment, BioTech n'est pas la seule compagnie avec laquelle nous entretenons des relations. On compte également des alliances avec Tangent et CityAdmin.")
		
		ANSWER("CONTINUER",13)
	NODE(13)
		SAY("Vous vous dites certainement que CityAdmin est bien plus qu'une compagnie. Mais quoiqu'il en soit, le projet sur lequel vous allez travailler vise à la réouverture de la porte des étoiles. Vers Irata III, pour être précis. Le directeur de NEXT, Craig Diggers, est déterminé à faire revivre ce grand projet.")
		
		ANSWER("Est-ce qu'il a une raison spéciale d'être si déterminé?",14)
	NODE(14)
		SAY("M. Diggers a subi un terrible accident il y a longtemps. Il rêvait de participer à la grande immigration vers Irata III en se rendant au vaisseau, qui lui a fait rater le départ. Depuis, il pense sans arrêt à Irata III.")
		
		ANSWER("CONTINUER",15)
	NODE(15)
		SAY("On lui a greffé des jambes artificielles, et vous avez déjà deviné par qui : Biotech! C'est peut-être la raison pour laquelle ce nouveau programme spatial est développé en partenariat avec eux. M. Diggers doit sentir qu'il a une dette envers Biotech.")
		
		ANSWER("Un programme spatial avec BioTech? Je pensais que Biotech s'occupait d'implants et d'organes artificiels...",16)
	NODE(16)
		SAY("Oui, c'est ce que tout le monde imagine. Mais en vérité, BioTech s'occupe de nombreux autres secteurs. Le meilleur exemple, c'est Tangent. Tangent est un ancien département de BioTech qui est devenu trop important pour rester dans cet état, et qui s'est transformé en entreprise à part entière. Mais revenons à notre propos.")
		
		ANSWER("CONTINUER",17)
	NODE(17)
		GIVEITEM(9100)
		SAY("Ces documents sont des copies de contrats déjà signés avec BioTech. Ils les attendent certainement. En livrant ces contrats, vous nous prouverez que vous voulez travailler pour nous et que vous voulez mener vos projets jusqu'à leur terme. Et ce pourra être le début d'une grande carrière. Ne vous relâchez pas.")
		
		ANSWER("Bien, je prends cette mission Où est-ce que je dois aller?",18)
	NODE(18)
		SAY("Vous devrez vous adresser directement au directeur des opérations de BioTech, dans leur QG. Vous devriez le trouver sans problème. Et avant que j'oublie : allez voir M. Mason une fois que vous avez livré les documents. C'est le vice-président de NExT, il se trouve dans la tour. Bonne chance.")
		STARTMISSION(3546)
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(19)
		SAY("Prenez votre temps, revenez quand vous vous sentez prêt.")
		ENDDIALOG()
		
	NODE(20)
		SAY("Vous avez déjà livré les documents au QG de Biotech?")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 2
	NODE(51)
		SAY("Les Anges Déchus ne sont pas à proprement parler dans le carnet de bal de CityAdmin, si vous voyez ce que je veux dire. Et c'est dommage, parce qu'ils possèdent un savoir-faire qui pourrait bénéficier à beaucoup plus de gens qu'avec la situation actuelle. Mais NExT pense différemment : nous évaluons le potentiel et les actions de cette organisations. Nous ne faisons pas attention aux rumeurs et aux préjugés. Je veux dire par là que pour nous, les Anges Déchus sont une chance.")
		
		ANSWER("Oui, mais où voulez-vous en venir? Y a-t-il des liens entre NExT et les Anges Déchus?",52)

	NODE(52)
		SAY("Oui, c'est exactement là où je veux en venir. Officiellement, nous n'avons pas de liens avec eux. Mais en dépit de l'opinion générale sur les Anges Déchus, nous n'avons pas l'intention de gaspiller des fortunes pour rechercher des procédés qui existent déjà chez eux. Mais NExT a été très prudente dans ces relations. Si jamais on venait à savoir que nous avions des relations avec eux, notre réputation en serait plus que ternie.")
		
		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("NEXT est consciente des risques qu'elle prend, mais elle tient à maintenir un minimum de contacts avec les Anges Déchus. On n'a que récemment organisé un échange, mais nous cherchons encore la personne en laquelle nous pouvons avoir confiance pour cette mission délicate.")
		
		ANSWER("Et j'en déduis que vous avez trouvé? C'est moi dont vous parlez?",54)
		ANSWER("Si c'est à moi que vous pensez, je crains de ne pas avoir le temps maintenant.",58)

	NODE(54)
		SAY("Vous êtes très perspicace. Je vois une grande carrière pour vous. Donc, vous savez probablement déjà où se trouvent les Anges Déchus?")
		
		ANSWER("A Tech Haven, si j'ai bonne mémoire.",55)
	NODE(55)
		SAY("Exact. Certains considèrent cette ville comme un paradis technologique. Pourquoi? Vous vous en rendrez compte par vous-même. Vous trouverez cette ville dans les Terres Brûlées, et je vous assure que son histoire est très intéressante. Mais je ne vais pas vous retarder plus longtemps avec mes histoires. NExT veut que vous rencontriez un certain Elias, qui travaille pour les Anges Déchus. Il devrait vous attendre à l'une des sorties de Tech Haven.")
		
		ANSWER("CONTINUER",56)

	NODE(56)
		SAY("On nous a dit qu'il avait l'autorisation de parler pour les Anges Déchus. Ecoutez bien ce qu'il a à vous dire. Il vous donnera aussi une puce de contrôle que vous devrez ensuite rapporter à M. Mason. Vous vous êtes déjà rencontrés, il me semble.")
		
		ANSWER("En effet. Je vais y aller.",57)
	NODE(57)
		SAY("Bonne chance, et faites attention dans les Terres Brûlées. Ca peut être dangereux.")
		STARTMISSION(3547)
		SETNEXTDIALOGSTATE(9)
		
		ENDDIALOG()
		

	NODE(58)
		SAY("Ca valait la peine d'essayer. Revenez quand vous vous sentez à la hauteur.")
		ENDDIALOG()
		
	NODE(59)
		SAY("Vous avez déjà parlé à Elias, à Tech Haven?")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 3
	NODE(101)
		SAY("Après tout, la compagnie n'est pas une nourrice. NExT ne peut pas se permettre de payer des mécaniciens qui ne font pas leur travail. C'est pour ça que je vous demande d'aller voir s'il n'a pas besoin d'aide. Il a appartenu à l'équipe qui a construit ce métro, vous savez. C'est un pionnier en la matière.")
		
		ANSWER("D'accord, je vais voir ça.",102)
		ANSWER("Pas pour l'instant. Désolé.",103)
	NODE(102)
		SAY("Merci. Vous devriez le trouver au Garriots Diner de Pepper Park.")
		STARTMISSION(3548)
		SETNEXTDIALOGSTATE(4)
		
		ENDDIALOG()
		
	NODE(103)
		SAY("Vous changerez peut-être d'avis plus tard.")
		ENDDIALOG()
		
	NODE(104)
		SAY("Vous pourriez aller aider Torben? Vous devriez le trouver dans la station Pepper Park.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 4
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 5

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 6
	NODE(251)
		SAY("Malheureusement, je ne connais pas tous les détails du plan. Je sais qu'un contact des Anges Déchus va nous donner un coup de main. Un certain Elias.")

		ANSWER("Elias? Oui, je le connais, mais il est un peu spécial. Mais on il aura certainement des choses intéressantes à m'apprendre.",252)
	NODE(252)
		SAY("Le plan va commencer bientôt, et on a besoin de vous et d'Elias. Je en sais pas pourquoi au juste. Bonne chance, on compte sur vous. Après tout, je n'ai pas envie de voir nos bureaux déplacés dans les Terres Brûlées...")
		STARTMISSION(3627)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis quelqu'un de très occupé. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(3)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",302)
		else
			SAY("Vous feriez mieux de vous en aller, on n'a pas besoin de gens de votre espèce chez nous.")
		end
	NODE(302)
		SAY("Si vous n'êtes pas prêt à dépenser cet argent, on n'a aucune raison de croire que vous voulez vraiment entrer chez nous. Si vous payez, ce sera un signe de dévouement envers notre cause.")

		ANSWER("Très bien, je vais payer.",303)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(3)
			SAY("Bienvenue chez NEXT.")
			ENDDIALOG()
		end

end