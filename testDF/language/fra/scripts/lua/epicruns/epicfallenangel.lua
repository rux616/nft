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
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Vous n'�tes pas des n�tres. Arr�tez de me faire perdre mon temps... Mais peut-�tre voulez-vous nous rejoindre?")
			ANSWER("Je viens pour �a en effet. J'aimerais rejoindreles Anges D�chus.",301)
			ANSWER("Ca ne m'int�resse pas. Au revoir.",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(14,0)
			if(result==-2)then
				SAY("Navr�, mais vous avez d�j� fait tout ce qui �tait en votre pouvoir pour nous aider. Vous pourriez continuer en cr�ant votre propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(14,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(14,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(14,1)
						if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(14,2)
						if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(14,3)
						if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(14,4)
						if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(14,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(14,5)
				        if(result==-4)then
				SAY("Navr�, mais vous avez d�j� fait tout ce qui �tait en votre pouvoir pour nous aider. Vous pourriez continuer en cr�ant votre propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Vous devriez parler � Constantine. La derni�re �tape de votre projet est en cours. C'est vous qui vous occupez de diriger les recherches, non?")

		ANSWER("J'aimerais bien, mais Constantine fait la plus grosse partie du travail, je n'ai presque plus rien � faire.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Le conseil a pris une d�cision au sujet de Grimm. Ils ont analys� toutes les donn�es, et ont d�cid� de mettre Grimm sous surveillance pendant 24 heures, et de le d�grader.")

		ANSWER("Ca n'est pas juste, Grimm devrait �tre banni, purement et simplement. J'ai failli me faire tuer � cause de lui.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Constantine m'a dit qu'elle aimerait vous parler. A propos de quelqu'un que vous connaissez trop bien, m'a-t-elle dit.")

		ANSWER("Je vais la voir imm�diatement.",151)
		ANSWER("Elle attendra...",152)
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Grimm se trouve dans la salle du r�acteur 1. Il aimerait vous parler. Il m'a sembl� f�brile, il vous cherchait partout. Mais il n'a pas voulu me dire pourquoi. Vous avez peut-�tre une id�e de ce qu'il vous veut.")

		ANSWER("Non, pas la moindre.",101)
		ANSWER("Il attendra, j'ai autre chose � faire.",103)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Votre processus d'enregistrement est finalis�. Voici votre cube d'identification.")
		
		ANSWER("Mon cube d'identification? Ca sert � quoi?",51)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Bienvenue au club, il ne reste que quelques formalit�s � accomplir. Un peu de patience, vous allez recevoir votre carte plus tard. Officiellement, vous �tes maintenant des n�tres. En compl�ment de votre adh�sion, vous recevrez plusieurs missions, car vous n'�tes pas l� pour vous la couler douce. Si vous voulez, on peut d'ailleurs commencer tout de suite.")
		
		ANSWER("Evidemment. C'est pour �a que j'ai rejoint les Anges D�chus.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 1
	NODE(11)
		SAY("Ca fait toujours plaisir � entendre. Comme vous le savez peut-�tre, tous les Anges D�chus sont plus ou moins des scientifiques. Mais nous ne connaissons pas encore tr�s bien vos capacit�s, et nous ne pouvons pas vous donner une v�ritable mission pour le moment. Le mieux � faire serait que vous acceptiez une petite mission de livraison. Sylvia Bennet a publi� les r�sultats de ses derni�res recherches sur un de nos projets en cours. On n'a pas encore eu le temps de distribuer �a � tout le monde. J'aimerais que vous puissiez livrer ces documents.")
		
		ANSWER("Compris. Ca n'est pas ce que je fais d'habitude, mais je m'en accommoderai. O� est-ce que j'emm�ne �a?",12)
		ANSWER("Je ne suis pas encore pr�t pour ce genre de choses.",14)
	NODE(12)
		SAY("Il y a un laboratoire scientifique tout pr�s d'ici. La plupart de nos ressources en recherche sont orient�es vers des m�thodes pour abaisser le niveau de radioactivit� � un niveau acceptable. On y d�veloppe toutes sortes de projets. Vous pourrez y voir un peu ce qu'on y fait... Ca vaut le coup d'oeil.")
		
		ANSWER("Ne vous inqui�tez pas, je ferai cette livraison sans probl�mes.",13)
	NODE(13)
		GIVEITEM(9307)
		SAY("C'est de l'argent facilement gagn�, voyez �a comme �a. Donnez le colis � Grimm, et transmettez-lui mes salutations. Il se trouve dans les niveaux inf�rieurs du QG.")
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
		SAY("Il contient toutes vos donn�es personnelles, et confirme votre affiliation avec les Anges D�chus. Evidemment, il existe un double de ces donn�es, au cas o�. Mais j'ai quelque chose de plus important pour vous. Etant donn� le r�sultat des analyses de vos donn�es, le Conseil Scientifique a d�cid� de vous assigner � un projet de recherche ind�pendant.")
		
		ANSWER("Un projet de recherche pour moi? Merci, mais qu'est-ce que �a signifie? Qu'est-ce que je dois faire?",52)
		ANSWER("Je ne me sens pas encore de taille, je suis d�sol�.",55)
	NODE(52)
		SAY("Vous allez avoir un projet de recherche � mener � bien. Mais la liste de choix est limit�e. Un assistant personnel pourra vous donner un coup de main de temps en temps.")
		
		ANSWER("Ca m'a l'air int�ressant. Quand est-ce que je commence?",53)
	NODE(53)
		SAY("C'est Grimm qui d�tient les informations fournies par le Conseil Scientifique. Il est toujours dans le r�acteur 1. Il vous dira qui sera votre assistant personnel. Bonne chance � vous. Vos r�sultats d�cideront de votre fonction future parmi nous.") 
		STARTMISSION(3577)
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(55)
		SAY("Pas de probl�me, vous avez le droit de douter de vous.")
		
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 3
	NODE(101)
		SAY("Vous feriez mieux de ne pas le faire attendre, j'esp�re que �a n'est pas grave.")
		STARTMISSION(3578)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()		
	NODE(102)
		SAY("Vous avez parl� � Grimm? Ne tra�nez pas, �a m'avait l'air important.")
		ENDDIALOG()
		
	NODE(103)
		SAY("Comme vous voulez, mais il ne sera pas content.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 4
	NODE(151)
		SAY("A part �a, rien de nouveau.")
		STARTMISSION(3579)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(152)
		SAY("Comme vous voulez, mais ne la faites pas poireauter trop longtemps.")
		ENDDIALOG()
	NODE(153)
		SAY("Allez parler � Constantine, elle vous attend dans le r�acteur 1 de Tech Haven.")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 5
	NODE(201)
		SAY("Oui, failli. Je sais. Mais �a n'est pas all� plus loin, et les informations qu'il a transmises hors de Tech Haven n'�taient que des donn�es d'ordre g�n�ral. Quoiqu'il en soit, le Conseil a d�cid� de lui donner une nouvelle chance.")

		ANSWER("Il semble que je n'ai pas le choix. Je vais accepter le verdict du Conseil.",202)
	NODE(202)
		SAY("Mais j'ai une bonne nouvelle pour vous. Le Conseil a �galement approuv� un cr�dit de 35.000 nc pour vos recherches. Votre assistante m'a demand� de vous dire que les exp�riences pouvaient d�buter; Elle vous attend pour commencer les recherches.")

		ANSWER("D'accord, je vais voir �a.",203)
		ANSWER("Pas tout de suite, j'avais autre chose de pr�vu d'abord.",204)
	NODE(203)
		SAY("Bonne chance.")
		STARTMISSION(3580)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(204)
		SAY("C'est vous qui voyez.")
		ENDDIALOG()

	NODE(205)
		SAY("Vous devriez parler � Constantine.")
		ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 6
	NODE(251)
		SAY("Pour une fois dans ma vie, je crois que j'envie presque votre boulot. Peut-�tre appr�cierez-vous de savoir que le Conseil a des chances de vous accorder une prime si vous menez le projet � terme.")
		STARTMISSION(3581)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(252)
		SAY("Vous devriez parler avec Constantine au sujet de la derni�re �tape de votre projet de recherches.")
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occup�. Circulez.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(14)
		if(result>49)then
			SAY("Ravi de l'entendre. Selon votre dossier, vous avez une conduite acceptable. Tr�s bien, il vous co�tera 300.000 cr�dits pour rentrer chez nous.")
	
			ANSWER("Une sacr�e somme!",302)
		else
			SAY("Vous feriez mieux de vous en aller, on ne veut pas de vous ici.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Si vous n'�tes pas pr�t � faire cette d�marche, personne ne vous prendra au s�rieux. On n'aime pas les poules mouill�es ici.")

		ANSWER("Compris, je paie.",303)
		ANSWER("Pas question que je d�bourse un centime pour �a.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Dommage que vous n'ayez pas assez d'argent sur votre compte...")
			ENDDIALOG()
		else
			CHANGEFACTION(14)
			SAY("Bienvenue chez les Anges D�chus.")
			ENDDIALOG()
		end
end