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
-- Pr�fen ob bereits eine Mission l�uft
		if (result==-6) then
			SAY("D�sol�, vous devez terminer la mission en cours avant d'en accepter une nouvelle.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Vous n'�tes pas des n�tres. Arr�tez de me faire perdre mon temps... Mais peut-�tre voulez-vous nous rejoindre?")
			ANSWER("Je viens pour �a en effet. J'aimerais rejoindre BioTech.",301)
			ANSWER("Ca ne m'int�resse pas. Au revoir.",300)
			ENDDIALOG()
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(5,0)
			if(result==-2)then
				SAY("Navr�, mais vous avez d�j� fait tout ce qui �tait en votre pouvoir pour nous aider. Vous pourriez continuer en cr�ant votre propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(5,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(5,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(5,1)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(5,2)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(5,3)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(5,4)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(5,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(5,5)
				        if(result==-4)then
						SAY("Navr�, mais vous avez d�j� fait tout ce qui �tait en votre pouvoir pour nous aider. Vous pourriez continuer en cr�ant votre propre clan.")
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
		SAY("On ne peut plus continuer comme �a. Chaque jour de nouvelles rumeurs sont diffus�es sur le r�seau, et BioTech est attaqu�e � chaque fois. On ne peut pas faire face � tant de hackers diff�rents.")
		
		ANSWER("CONTINUER",201)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Les nouvelles sont mauvaises. La quantit� d'informations compromettantes a brutalement augment�. Pour �tre honn�te, certains employ�s ont �t� durement touch�s par cela. Il est grand temps de mettre fin � ce probl�me.")
		
		ANSWER("CONTINUE",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("BioTech aimerait vous proposer un nouveau travail. Ceci a un lien avec le cube que vous nous avez transmis. Ce fut tr�s enrichissant. Nous avons maintenant plusieurs noms de code de personnes qui apparemment ont re�u des informations concernant BioTech, et ce directement de sources internes � BioTech.")
		
		ANSWER("Ca veut dire que vous avez quelqu'un qui divulgue tous ces secrets? Je pensais que c'�tait uniquement quelques rumeurs. e n'aurais jamais pens� que c'�tait vrai.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("On m'a parl� de vos tentatives pour vous faire appr�cier de BioTech, vous avez de l'ambition! Bon, pour l'instant �a se passe bien. On m'a demand� de vous confier quelque chose. Vous vous souvenez sans doute des rumeurs qui circulaient dans Neocron au sujet de Biotech...?")
		
		ANSWER("CONTINUE",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Ahh, on m'a d�j� inform� qu'il y aurait de nouveaux runners chez BioTech. Les nouveaux membres sont toujours les bienvenue dans nos rangs.")
		
		ANSWER("CONTINUE",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("La proc�dure normale serait que le directeur des Op�rations vienne personnellement vous accueillir, mais il est actuellement en rendez-vous important avez Seymour Jordan. Vous comprendrez que cette entrevue ne souffre pas l'ajournement.")
		
		ANSWER("C'est dommage, mais je comprends. Quelles sont les t�ches qui m'attendent, au juste, maintenant que je travaille pour BioTech?",12)
	NODE(12)
		SAY("Voil� tout ce que j'aime : direct et efficace. On a d�j� d� vous remettre la cl� de votre appartement. En �change, nous ne vous demandons que votre loyaut� et votre attachement � quelques missions sp�ciales. Mais nous parlerons de tout ceci plus tard. Vous avez fait le bon choix en venant chez BioTech, f�licitations.")
		
		ANSWER("CONTINUER",13)
	NODE(13)
		SAY("Je devrais peut-�tre d'abord vous en apprendre plus sur la compagnie. BioTech a �t� impliqu�e dans de nombreux projets depuis sa fondation, en 2638. Actuellement, son but quasi-exclusif est le d�veloppement et la production d'implants de toutes sortes.")
		
		ANSWER("CONTINUER",14)
	NODE(14)
		SAY("Ceci ne signifie pas que la construction de vaisseaux spatiaux, la m�decine ou les armes sont �trangers � BioTech. En effet, le premier vaisseau spatial, l'Avenger, a �t� d�velopp� et construit par BioTech.")
		
		ANSWER("Oui, j'en ai entendu parler.",15)
	NODE(15)
		SAY("Retour au pr�sent. CityAdmin nous demande un entretien avec une de nos toutes derni�res recrues. Ils sont en train de faire une analyse, et ont besoin de poser quelques questions. Cela ne devrait pas prendre trop de temps, et BioTech serait m�me dispos�e � vous offrir quelque compensation.")
		
		ANSWER("Ca m'a l'air bien, je pense que j'y arriverai.",16)
		ANSWER("Pardon, mais pour le moment �a ne sera pas possible.",17)
	NODE(16)
		SAY("Excellent. Vous trouverez un employ� de CityAdmin dans Plaza secteur 2. Nous avons organis� une rencontre dans un restaurant du quartier. Revenez ici une fois que vous avez termin�, pour nous communiquer votre rapport.")
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
		SAY("Et bien cette fois-ci elles sont r�apparues, mais dans le r�seau. Et ce sont des accusations graves qui ciblent deux hauts responsables de BioTech. On ne conna�t pas la source de ces rumeurs, et c'est pour cela qu'on recherche des informations.")
		
		ANSWER("Je comprends. Et c'est � moi de trouver, c'est bien �a?",52)
		ANSWER("Si c'est une mission que vous me proposez, alors d�sol� mais je dois refuser.",55)
	NODE(52)
		SAY("Oui, mais vous ne serez pas seul. Nous avons d�j� envoy� plusieurs runners sur l'affaire. Et vous aurez exactement la m�me mission qu'eux. Ces informations ne sont pas faciles � trouver, c'est pour cela qu'il va vous falloir utiliser des m�thodes peu orthodoxes.")
		
		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("On a un contact chez Tsunami qui a accept� de nous communiquer quelques informations. Mais on n'est pas certain que Tsunami sache r�ellement quelque chose. Si vous mettez les mains sur quelque chose d'int�ressant, faites votre rapport � McMillan. C'est un de nos directeurs d'op�rations � BioTech, et il est au courant de tout.")
		
		ANSWER("OK, j'ai bien compris. Et o� est-ce que je trouve ce contact de Tsunami?",54)
	NODE(54)
		SAY("Il est dans le secteur industriel 02. Mais faites attention, c'est plut�t dangereux. Votre contact s'appelle Hontoka.")
		STARTMISSION(3553)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()		

	NODE(55)
		SAY("Reconsid�rez votre d�cision. Vous pouvez toujours revenir pour cette mission.")
		ENDDIALOG()
		
	NODE(56)
		SAY("Allez prendre contact avec Hontoka, dans le secteur industriel 02.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Mais �a n'est pas vrai! Ces histoires ont �t� alt�r�es pour causer du tort � BioTech.")
		
		ANSWER("CONTINUER",102)
	NODE(102)
		SAY("Mais nous n'avons pas encore trouv� de piste valide pour retrouver cette personne. Actuellement, nous ne savons pas qui est la taupe. Et ce n'est probablement pas qu'une seule personne.")
		
		ANSWER("Et qu'est-ce qu'on peut faire contre cela?",103)
		ANSWER("Actuellement je ne suis pas libre pour ce genre de mission.",107)
	NODE(103)
		SAY("La proc�dure est tr�s complexe, mais le plan est d'espionner les moindres faits et gestes des personnes concern�es. C'est l� que nous avons besoin de vous. BioTech aimerait que vous rencontriez une certaine Andressa. Elle se trouve souvent au restaurant Chez Sypher. Elle travaille dans notre d�partement de recherches, et ces derniers temps ses activit�s nous paraissent pour le moins �tranges.")
		
		ANSWER("Aucun probl�me. Mais qu'est-ce que je fais ensuite? Je me contente de lui demander si elle transmet des informations compromettantes au sujet de BioTech?",104)
	NODE(104)
		SAY("Non, �a ne serait pas tr�s discret. Vous devez la convaincre de vous donner des informations importantes. Proposez-lui 50.000 cr�dits, par exemple. Apr�s tout, vous n'avez pas � la payer r�ellement.")
		
		ANSWER("Et si elle me donne ces informations?",105)
	NODE(105)
		SAY("Je pense qu'avec tout le remue-m�nage qui a eu lieu derni�rement, elle perdra son poste. Si vous l'abattiez, �a ne ferait qu'attirer des regards dont on pourrait fort bien se passer.")
		
		ANSWER("Parfait, je m'en charge.",106)
	NODE(106)
		SAY("Elle se trouve dans ce secteur. Elle aime d�jeuner chez Sypher. Faites votre rapport � McMillan ensuite.")
		STARTMISSION(3554)
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
		
	NODE(107)
		SAY("C'est vraiment dommage. Mais contactez-nous si vous �tes libre.")
		ENDDIALOG()
		
	NODE(108)
		SAY("Je pensais vous avoir d�j� donn� quelque chose � faire? Allez vois Andessa, juste en sortant de chez Biotech.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)
		SAY("Le propri�taire de la station de diffusion, un certain Beckert, nous a transmis les informations demand�es. Nous avons maintenant la liste des gens qui ont lou� cette station. On a besoin de vous pour une autre mission. Si vous �tes pr�t.")
		
		ANSWER("Evidemment, apr�s tout je travaille pour BioTech comme vous, et �a me concerne autant que vous.",152)
		ANSWER("Pas maintenant.",156)

	NODE(152)
		SAY("Ravi de vous l'entendre dire. Sur cette liste, nous avons rep�r� une personne qui a acc�d� � la station pendant la p�riode surveill�e. Nous avons retrouv� dans l'Outzone 01 la trace d'un certain Grand.")
		
		ANSWER("CONTINUER",153)
	NODE(153)
		SAY("Nous avons contact� CityAdmin, et il se trouve que cette personne est bien connue des autorit�s comme hacker notoire. Il n'appartient � aucune faction, il ferait tout pour l'argent.")
		
		ANSWER("Ca ne me semble pas tr�s rassurant. Et en quoi est-ce que �a nous aide?",154)

	NODE(154)
		SAY("Vous devez trouver un moyen de lui faire avouer qui est derri�re tout �a. Et lui faire r�parer les dommages qu'il a caus�s, dans la mesure du possible.")
		
		ANSWER("Je vais y aller. Quelle m�thode est-ce que j'utilise?",155)
		ANSWER("Et si je dois tuer quelqu'un pour r�ussir la mission?",158)
	NODE(155)
		SAY("C'est � vous de voir. Utilisez les m�thodes que vous avez � votre disposition. Apr�s, vous pourrez informer McMillan de l'�volution de la situation.")
		STARTMISSION(3555)
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		

	NODE(156)
		SAY("C'est regrettable. Surtout que cette mission est vraiment importante. Mais je ne vais pas vous forcer la main non plus.")
		ENDDIALOG()
		
	NODE(157)
		SAY("Bonne chance. Vous �tes all� voir ce hacker dans Outzone 01?")
		ENDDIALOG()

	NODE(158)
		SAY("Si vous devez tuer quelqu'un, faites attention. Il ne faut pas que ce soit un employ� de la compagnie, un garde ou une personnalit� officielle. Seulement un runner.")
		
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
		SAY("BioTech a d�cid� de d�terminer qui tire les ficelles de toute cette histoire. Lorsque nous l'aurons trouv�, ces rumeurs dispara�tront. Tue la t�te, le corps mourra, c'est comme cela depuis toujours et je ne vois pas pourquoi �a changerait.")
		
		ANSWER("Je vais faire de mon mieux pour aider BioTech. Par quoi est-ce que je commence?",202)
		ANSWER("Si c'est � moi que vous pensez pour vous aider, d�sol� mais pour l'instant c'est impossible...",205)
	NODE(202)
		SAY("Il semble que ce hacker, celui qui se fait appeler Grand, correspond � ce que nous avons en t�te. Allez le voir � nouveau. Persuadez-le de trouver qui a commenc� tout �a. Qui a lanc� cette guerre ouverte contre nous.")
		
		ANSWER("C'est comme si c'�tait fait.",203)
	NODE(203)
		SAY("Vous pourrez lui proposer 10.000 cr�dits, je pense que �a l'aidera � se d�cider. Evidemment, cette d�pense sera pr�vue dans votre budget. Bonne chance.")
		
		ANSWER("CONTINUER",204)
	NODE(204)
		SAY("Si vous r�ussissez � convaincre le hacker, allez ensuite voir McMillan. Il va vous expliquer les prochaines �tapes.")
		STARTMISSION(3556)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(205)
		SAY("BioTech aurait pourtant bien appr�ci� votre aide sur ce coup... Vous ne nous aidez pas beaucoup, vous savez.")
		ENDDIALOG()
		
	NODE(206)
		SAY("Vous avez vu Grand dans l'Outzone 01?")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6

--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occup�. Circulez.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(5)
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
			CHANGEFACTION(5)
			SAY("Bienvenue chez BioTech.")
			ENDDIALOG()
		end
end