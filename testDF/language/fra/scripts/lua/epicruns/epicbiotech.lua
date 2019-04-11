--new
--BioTech

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

	CANDOEPICRUN(5,0)
-- Prüfen ob bereits eine Mission läuft
		if (result==-6) then
			SAY("Désolé, vous devez terminer la mission en cours avant d'en accepter une nouvelle.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Vous n'êtes pas des nôtres. Arrêtez de me faire perdre mon temps... Mais peut-être voulez-vous nous rejoindre?")
			ANSWER("Je viens pour ça en effet. J'aimerais rejoindre BioTech.",301)
			ANSWER("Ca ne m'intéresse pas. Au revoir.",300)
			ENDDIALOG()
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(5,0)
			if(result==-2)then
				SAY("Navré, mais vous avez déjà fait tout ce qui était en votre pouvoir pour nous aider. Vous pourriez continuer en créant votre propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(5,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(5,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(5,1)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(5,2)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(5,3)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(5,4)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(5,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(5,5)
				        if(result==-4)then
						SAY("Navré, mais vous avez déjà fait tout ce qui était en votre pouvoir pour nous aider. Vous pourriez continuer en créant votre propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Allez voir McMillan. Il avait vraiment envie de vous parler.")
		STARTMISSION(3557)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("On ne peut plus continuer comme ça. Chaque jour de nouvelles rumeurs sont diffusées sur le réseau, et BioTech est attaquée à chaque fois. On ne peut pas faire face à tant de hackers différents.")
		
		ANSWER("CONTINUER",201)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Les nouvelles sont mauvaises. La quantité d'informations compromettantes a brutalement augmenté. Pour être honnête, certains employés ont été durement touchés par cela. Il est grand temps de mettre fin à ce problème.")
		
		ANSWER("CONTINUE",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("BioTech aimerait vous proposer un nouveau travail. Ceci a un lien avec le cube que vous nous avez transmis. Ce fut très enrichissant. Nous avons maintenant plusieurs noms de code de personnes qui apparemment ont reçu des informations concernant BioTech, et ce directement de sources internes à BioTech.")
		
		ANSWER("Ca veut dire que vous avez quelqu'un qui divulgue tous ces secrets? Je pensais que c'était uniquement quelques rumeurs. e n'aurais jamais pensé que c'était vrai.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("On m'a parlé de vos tentatives pour vous faire apprécier de BioTech, vous avez de l'ambition! Bon, pour l'instant ça se passe bien. On m'a demandé de vous confier quelque chose. Vous vous souvenez sans doute des rumeurs qui circulaient dans Neocron au sujet de Biotech...?")
		
		ANSWER("CONTINUE",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Ahh, on m'a déjà informé qu'il y aurait de nouveaux runners chez BioTech. Les nouveaux membres sont toujours les bienvenue dans nos rangs.")
		
		ANSWER("CONTINUE",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("La procédure normale serait que le directeur des Opérations vienne personnellement vous accueillir, mais il est actuellement en rendez-vous important avez Seymour Jordan. Vous comprendrez que cette entrevue ne souffre pas l'ajournement.")
		
		ANSWER("C'est dommage, mais je comprends. Quelles sont les tâches qui m'attendent, au juste, maintenant que je travaille pour BioTech?",12)
	NODE(12)
		SAY("Voilà tout ce que j'aime : direct et efficace. On a déjà dû vous remettre la clé de votre appartement. En échange, nous ne vous demandons que votre loyauté et votre attachement à quelques missions spéciales. Mais nous parlerons de tout ceci plus tard. Vous avez fait le bon choix en venant chez BioTech, félicitations.")
		
		ANSWER("CONTINUER",13)
	NODE(13)
		SAY("Je devrais peut-être d'abord vous en apprendre plus sur la compagnie. BioTech a été impliquée dans de nombreux projets depuis sa fondation, en 2638. Actuellement, son but quasi-exclusif est le développement et la production d'implants de toutes sortes.")
		
		ANSWER("CONTINUER",14)
	NODE(14)
		SAY("Ceci ne signifie pas que la construction de vaisseaux spatiaux, la médecine ou les armes sont étrangers à BioTech. En effet, le premier vaisseau spatial, l'Avenger, a été développé et construit par BioTech.")
		
		ANSWER("Oui, j'en ai entendu parler.",15)
	NODE(15)
		SAY("Retour au présent. CityAdmin nous demande un entretien avec une de nos toutes dernières recrues. Ils sont en train de faire une analyse, et ont besoin de poser quelques questions. Cela ne devrait pas prendre trop de temps, et BioTech serait même disposée à vous offrir quelque compensation.")
		
		ANSWER("Ca m'a l'air bien, je pense que j'y arriverai.",16)
		ANSWER("Pardon, mais pour le moment ça ne sera pas possible.",17)
	NODE(16)
		SAY("Excellent. Vous trouverez un employé de CityAdmin dans Plaza secteur 2. Nous avons organisé une rencontre dans un restaurant du quartier. Revenez ici une fois que vous avez terminé, pour nous communiquer votre rapport.")
		STARTMISSION(3552)
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		
	NODE(17)
		SAY("Vous pouvez toujours changer d'avis si vous voulez.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("Et bien cette fois-ci elles sont réapparues, mais dans le réseau. Et ce sont des accusations graves qui ciblent deux hauts responsables de BioTech. On ne connaît pas la source de ces rumeurs, et c'est pour cela qu'on recherche des informations.")
		
		ANSWER("Je comprends. Et c'est à moi de trouver, c'est bien ça?",52)
		ANSWER("Si c'est une mission que vous me proposez, alors désolé mais je dois refuser.",55)
	NODE(52)
		SAY("Oui, mais vous ne serez pas seul. Nous avons déjà envoyé plusieurs runners sur l'affaire. Et vous aurez exactement la même mission qu'eux. Ces informations ne sont pas faciles à trouver, c'est pour cela qu'il va vous falloir utiliser des méthodes peu orthodoxes.")
		
		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("On a un contact chez Tsunami qui a accepté de nous communiquer quelques informations. Mais on n'est pas certain que Tsunami sache réellement quelque chose. Si vous mettez les mains sur quelque chose d'intéressant, faites votre rapport à McMillan. C'est un de nos directeurs d'opérations à BioTech, et il est au courant de tout.")
		
		ANSWER("OK, j'ai bien compris. Et où est-ce que je trouve ce contact de Tsunami?",54)
	NODE(54)
		SAY("Il est dans le secteur industriel 02. Mais faites attention, c'est plutôt dangereux. Votre contact s'appelle Hontoka.")
		STARTMISSION(3553)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()		

	NODE(55)
		SAY("Reconsidérez votre décision. Vous pouvez toujours revenir pour cette mission.")
		ENDDIALOG()
		
	NODE(56)
		SAY("Allez prendre contact avec Hontoka, dans le secteur industriel 02.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Mais ça n'est pas vrai! Ces histoires ont été altérées pour causer du tort à BioTech.")
		
		ANSWER("CONTINUER",102)
	NODE(102)
		SAY("Mais nous n'avons pas encore trouvé de piste valide pour retrouver cette personne. Actuellement, nous ne savons pas qui est la taupe. Et ce n'est probablement pas qu'une seule personne.")
		
		ANSWER("Et qu'est-ce qu'on peut faire contre cela?",103)
		ANSWER("Actuellement je ne suis pas libre pour ce genre de mission.",107)
	NODE(103)
		SAY("La procédure est très complexe, mais le plan est d'espionner les moindres faits et gestes des personnes concernées. C'est là que nous avons besoin de vous. BioTech aimerait que vous rencontriez une certaine Andressa. Elle se trouve souvent au restaurant Chez Sypher. Elle travaille dans notre département de recherches, et ces derniers temps ses activités nous paraissent pour le moins étranges.")
		
		ANSWER("Aucun problème. Mais qu'est-ce que je fais ensuite? Je me contente de lui demander si elle transmet des informations compromettantes au sujet de BioTech?",104)
	NODE(104)
		SAY("Non, ça ne serait pas très discret. Vous devez la convaincre de vous donner des informations importantes. Proposez-lui 50.000 crédits, par exemple. Après tout, vous n'avez pas à la payer réellement.")
		
		ANSWER("Et si elle me donne ces informations?",105)
	NODE(105)
		SAY("Je pense qu'avec tout le remue-ménage qui a eu lieu dernièrement, elle perdra son poste. Si vous l'abattiez, ça ne ferait qu'attirer des regards dont on pourrait fort bien se passer.")
		
		ANSWER("Parfait, je m'en charge.",106)
	NODE(106)
		SAY("Elle se trouve dans ce secteur. Elle aime déjeuner chez Sypher. Faites votre rapport à McMillan ensuite.")
		STARTMISSION(3554)
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
		
	NODE(107)
		SAY("C'est vraiment dommage. Mais contactez-nous si vous êtes libre.")
		ENDDIALOG()
		
	NODE(108)
		SAY("Je pensais vous avoir déjà donné quelque chose à faire? Allez vois Andessa, juste en sortant de chez Biotech.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)
		SAY("Le propriétaire de la station de diffusion, un certain Beckert, nous a transmis les informations demandées. Nous avons maintenant la liste des gens qui ont loué cette station. On a besoin de vous pour une autre mission. Si vous êtes prêt.")
		
		ANSWER("Evidemment, après tout je travaille pour BioTech comme vous, et ça me concerne autant que vous.",152)
		ANSWER("Pas maintenant.",156)

	NODE(152)
		SAY("Ravi de vous l'entendre dire. Sur cette liste, nous avons repéré une personne qui a accédé à la station pendant la période surveillée. Nous avons retrouvé dans l'Outzone 01 la trace d'un certain Grand.")
		
		ANSWER("CONTINUER",153)
	NODE(153)
		SAY("Nous avons contacté CityAdmin, et il se trouve que cette personne est bien connue des autorités comme hacker notoire. Il n'appartient à aucune faction, il ferait tout pour l'argent.")
		
		ANSWER("Ca ne me semble pas très rassurant. Et en quoi est-ce que ça nous aide?",154)

	NODE(154)
		SAY("Vous devez trouver un moyen de lui faire avouer qui est derrière tout ça. Et lui faire réparer les dommages qu'il a causés, dans la mesure du possible.")
		
		ANSWER("Je vais y aller. Quelle méthode est-ce que j'utilise?",155)
		ANSWER("Et si je dois tuer quelqu'un pour réussir la mission?",158)
	NODE(155)
		SAY("C'est à vous de voir. Utilisez les méthodes que vous avez à votre disposition. Après, vous pourrez informer McMillan de l'évolution de la situation.")
		STARTMISSION(3555)
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		

	NODE(156)
		SAY("C'est regrettable. Surtout que cette mission est vraiment importante. Mais je ne vais pas vous forcer la main non plus.")
		ENDDIALOG()
		
	NODE(157)
		SAY("Bonne chance. Vous êtes allé voir ce hacker dans Outzone 01?")
		ENDDIALOG()

	NODE(158)
		SAY("Si vous devez tuer quelqu'un, faites attention. Il ne faut pas que ce soit un employé de la compagnie, un garde ou une personnalité officielle. Seulement un runner.")
		
		ANSWER("Je peux vraiment aplatir n'importe quel runner?",159)
	NODE(159)
		SAY("Non, seulement si la cible est plus forte que vous. Sinon, cela ne sera pas bien vu. Bonne chance dans votre mission Utilisez tout ce que vous jugez bon.")
		STARTMISSION(3555)
		SETNEXTDIALOGSTATE(7)
		
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
	NODE(201)
		SAY("BioTech a décidé de déterminer qui tire les ficelles de toute cette histoire. Lorsque nous l'aurons trouvé, ces rumeurs disparaîtront. Tue la tête, le corps mourra, c'est comme cela depuis toujours et je ne vois pas pourquoi ça changerait.")
		
		ANSWER("Je vais faire de mon mieux pour aider BioTech. Par quoi est-ce que je commence?",202)
		ANSWER("Si c'est à moi que vous pensez pour vous aider, désolé mais pour l'instant c'est impossible...",205)
	NODE(202)
		SAY("Il semble que ce hacker, celui qui se fait appeler Grand, correspond à ce que nous avons en tête. Allez le voir à nouveau. Persuadez-le de trouver qui a commencé tout ça. Qui a lancé cette guerre ouverte contre nous.")
		
		ANSWER("C'est comme si c'était fait.",203)
	NODE(203)
		SAY("Vous pourrez lui proposer 10.000 crédits, je pense que ça l'aidera à se décider. Evidemment, cette dépense sera prévue dans votre budget. Bonne chance.")
		
		ANSWER("CONTINUER",204)
	NODE(204)
		SAY("Si vous réussissez à convaincre le hacker, allez ensuite voir McMillan. Il va vous expliquer les prochaines étapes.")
		STARTMISSION(3556)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(205)
		SAY("BioTech aurait pourtant bien apprécié votre aide sur ce coup... Vous ne nous aidez pas beaucoup, vous savez.")
		ENDDIALOG()
		
	NODE(206)
		SAY("Vous avez vu Grand dans l'Outzone 01?")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6

--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occupé. Circulez.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(5)
		if(result>49)then
			SAY("Ravi de l'entendre. Selon votre dossier, vous avez une conduite acceptable. Très bien, il vous coûtera 300.000 crédits pour rentrer chez nous.")
	
			ANSWER("Une sacrée somme!",302)
		else
			SAY("Vous feriez mieux de vous en aller, on ne veut pas de vous ici.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Si vous n'êtes pas prêt à faire cette démarche, personne ne vous prendra au sérieux. On n'aime pas les poules mouillées ici.")

		ANSWER("Compris, je paie.",303)
		ANSWER("Pas question que je débourse un centime pour ça.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Dommage que vous n'ayez pas assez d'argent sur votre compte...")
			ENDDIALOG()
		else
			CHANGEFACTION(5)
			SAY("Bienvenue chez BioTech.")
			ENDDIALOG()
		end
end