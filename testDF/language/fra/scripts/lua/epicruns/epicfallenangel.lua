--new
--Tsunami

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

	CANDOEPICRUN(14,0)
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Vous n'êtes pas des nôtres. Arrêtez de me faire perdre mon temps... Mais peut-être voulez-vous nous rejoindre?")
			ANSWER("Je viens pour ça en effet. J'aimerais rejoindreles Anges Déchus.",301)
			ANSWER("Ca ne m'intéresse pas. Au revoir.",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(14,0)
			if(result==-2)then
				SAY("Navré, mais vous avez déjà fait tout ce qui était en votre pouvoir pour nous aider. Vous pourriez continuer en créant votre propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(14,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(14,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(14,1)
						if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(14,2)
						if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(14,3)
						if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(14,4)
						if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(14,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(14,5)
				        if(result==-4)then
				SAY("Navré, mais vous avez déjà fait tout ce qui était en votre pouvoir pour nous aider. Vous pourriez continuer en créant votre propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Vous devriez parler à Constantine. La dernière étape de votre projet est en cours. C'est vous qui vous occupez de diriger les recherches, non?")

		ANSWER("J'aimerais bien, mais Constantine fait la plus grosse partie du travail, je n'ai presque plus rien à faire.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Le conseil a pris une décision au sujet de Grimm. Ils ont analysé toutes les données, et ont décidé de mettre Grimm sous surveillance pendant 24 heures, et de le dégrader.")

		ANSWER("Ca n'est pas juste, Grimm devrait être banni, purement et simplement. J'ai failli me faire tuer à cause de lui.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Constantine m'a dit qu'elle aimerait vous parler. A propos de quelqu'un que vous connaissez trop bien, m'a-t-elle dit.")

		ANSWER("Je vais la voir immédiatement.",151)
		ANSWER("Elle attendra...",152)
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Grimm se trouve dans la salle du réacteur 1. Il aimerait vous parler. Il m'a semblé fébrile, il vous cherchait partout. Mais il n'a pas voulu me dire pourquoi. Vous avez peut-être une idée de ce qu'il vous veut.")

		ANSWER("Non, pas la moindre.",101)
		ANSWER("Il attendra, j'ai autre chose à faire.",103)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Votre processus d'enregistrement est finalisé. Voici votre cube d'identification.")
		
		ANSWER("Mon cube d'identification? Ca sert à quoi?",51)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Bienvenue au club, il ne reste que quelques formalités à accomplir. Un peu de patience, vous allez recevoir votre carte plus tard. Officiellement, vous êtes maintenant des nôtres. En complément de votre adhésion, vous recevrez plusieurs missions, car vous n'êtes pas là pour vous la couler douce. Si vous voulez, on peut d'ailleurs commencer tout de suite.")
		
		ANSWER("Evidemment. C'est pour ça que j'ai rejoint les Anges Déchus.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 1
	NODE(11)
		SAY("Ca fait toujours plaisir à entendre. Comme vous le savez peut-être, tous les Anges Déchus sont plus ou moins des scientifiques. Mais nous ne connaissons pas encore très bien vos capacités, et nous ne pouvons pas vous donner une véritable mission pour le moment. Le mieux à faire serait que vous acceptiez une petite mission de livraison. Sylvia Bennet a publié les résultats de ses dernières recherches sur un de nos projets en cours. On n'a pas encore eu le temps de distribuer ça à tout le monde. J'aimerais que vous puissiez livrer ces documents.")
		
		ANSWER("Compris. Ca n'est pas ce que je fais d'habitude, mais je m'en accommoderai. Où est-ce que j'emmène ça?",12)
		ANSWER("Je ne suis pas encore prêt pour ce genre de choses.",14)
	NODE(12)
		SAY("Il y a un laboratoire scientifique tout près d'ici. La plupart de nos ressources en recherche sont orientées vers des méthodes pour abaisser le niveau de radioactivité à un niveau acceptable. On y développe toutes sortes de projets. Vous pourrez y voir un peu ce qu'on y fait... Ca vaut le coup d'oeil.")
		
		ANSWER("Ne vous inquiétez pas, je ferai cette livraison sans problèmes.",13)
	NODE(13)
		GIVEITEM(9307)
		SAY("C'est de l'argent facilement gagné, voyez ça comme ça. Donnez le colis à Grimm, et transmettez-lui mes salutations. Il se trouve dans les niveaux inférieurs du QG.")
		STARTMISSION(3576)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(14)
		SAY("Alors revenez me voir quand vous aurez pris vos marques.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 2
	NODE(51)
		SAY("Il contient toutes vos données personnelles, et confirme votre affiliation avec les Anges Déchus. Evidemment, il existe un double de ces données, au cas où. Mais j'ai quelque chose de plus important pour vous. Etant donné le résultat des analyses de vos données, le Conseil Scientifique a décidé de vous assigner à un projet de recherche indépendant.")
		
		ANSWER("Un projet de recherche pour moi? Merci, mais qu'est-ce que ça signifie? Qu'est-ce que je dois faire?",52)
		ANSWER("Je ne me sens pas encore de taille, je suis désolé.",55)
	NODE(52)
		SAY("Vous allez avoir un projet de recherche à mener à bien. Mais la liste de choix est limitée. Un assistant personnel pourra vous donner un coup de main de temps en temps.")
		
		ANSWER("Ca m'a l'air intéressant. Quand est-ce que je commence?",53)
	NODE(53)
		SAY("C'est Grimm qui détient les informations fournies par le Conseil Scientifique. Il est toujours dans le réacteur 1. Il vous dira qui sera votre assistant personnel. Bonne chance à vous. Vos résultats décideront de votre fonction future parmi nous.") 
		STARTMISSION(3577)
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(55)
		SAY("Pas de problème, vous avez le droit de douter de vous.")
		
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 3
	NODE(101)
		SAY("Vous feriez mieux de ne pas le faire attendre, j'espère que ça n'est pas grave.")
		STARTMISSION(3578)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()		
	NODE(102)
		SAY("Vous avez parlé à Grimm? Ne traînez pas, ça m'avait l'air important.")
		ENDDIALOG()
		
	NODE(103)
		SAY("Comme vous voulez, mais il ne sera pas content.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 4
	NODE(151)
		SAY("A part ça, rien de nouveau.")
		STARTMISSION(3579)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(152)
		SAY("Comme vous voulez, mais ne la faites pas poireauter trop longtemps.")
		ENDDIALOG()
	NODE(153)
		SAY("Allez parler à Constantine, elle vous attend dans le réacteur 1 de Tech Haven.")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 5
	NODE(201)
		SAY("Oui, failli. Je sais. Mais ça n'est pas allé plus loin, et les informations qu'il a transmises hors de Tech Haven n'étaient que des données d'ordre général. Quoiqu'il en soit, le Conseil a décidé de lui donner une nouvelle chance.")

		ANSWER("Il semble que je n'ai pas le choix. Je vais accepter le verdict du Conseil.",202)
	NODE(202)
		SAY("Mais j'ai une bonne nouvelle pour vous. Le Conseil a également approuvé un crédit de 35.000 nc pour vos recherches. Votre assistante m'a demandé de vous dire que les expériences pouvaient débuter; Elle vous attend pour commencer les recherches.")

		ANSWER("D'accord, je vais voir ça.",203)
		ANSWER("Pas tout de suite, j'avais autre chose de prévu d'abord.",204)
	NODE(203)
		SAY("Bonne chance.")
		STARTMISSION(3580)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(204)
		SAY("C'est vous qui voyez.")
		ENDDIALOG()

	NODE(205)
		SAY("Vous devriez parler à Constantine.")
		ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 6
	NODE(251)
		SAY("Pour une fois dans ma vie, je crois que j'envie presque votre boulot. Peut-être apprécierez-vous de savoir que le Conseil a des chances de vous accorder une prime si vous menez le projet à terme.")
		STARTMISSION(3581)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(252)
		SAY("Vous devriez parler avec Constantine au sujet de la dernière étape de votre projet de recherches.")
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occupé. Circulez.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(14)
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
			CHANGEFACTION(14)
			SAY("Bienvenue chez les Anges Déchus.")
			ENDDIALOG()
		end
end