--new
--CityAdmin

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

	CANDOEPICRUN(1,0)
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(1,0)
			if(result==-2)then
				SAY("Vous en avez déjà fait plus qu'assez pour CityAdmin. Mais vous pourriez fonder un clan pour nous assister si vous le désirez.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(1,0)
				if(result==-5)then
					SAY("J'ai bien peur que vous n'ayez pas encore les qualifications nécessaires. Revenez me voir quand vous avez plus d'expérience dans le métier. (Prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(1,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(1,1)
						if(result==-5)then
							SAY("J'ai bien peur que vous n'ayez pas encore les qualifications nécessaires. Revenez me voir quand vous avez plus d'expérience dans le métier. (Prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(1,2)
						if(result==-5)then
							SAY("J'ai bien peur que vous n'ayez pas encore les qualifications nécessaires. Revenez me voir quand vous avez plus d'expérience dans le métier. (Prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(1,3)
						if(result==-5)then
							SAY("J'ai bien peur que vous n'ayez pas encore les qualifications nécessaires. Revenez me voir quand vous avez plus d'expérience dans le métier. (Prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(1,4)
						if(result==-5)then
							SAY("J'ai bien peur que vous n'ayez pas encore les qualifications nécessaires. Revenez me voir quand vous avez plus d'expérience dans le métier. (Prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(1,5)
				if(result==-5)then
					SAY("J'ai bien peur que vous n'ayez pas encore les qualifications nécessaires. Revenez me voir quand vous avez plus d'expérience dans le métier. (Prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(1,5)
				        if(result==-4)then
						SAY("Vous en avez déjà fait plus qu'assez pour CityAdmin. Mais vous pourriez fonder un clan pour nous assister si vous le désirez.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
	SAY("Ces enquêtes semblent prendre plus longtemps que prévu, il me semble. Au moins, on ne signale plus de meurtres, c'est toujours ça. Mais gardez l'oeil ouvert!")
	
	ANSWER("Ne vous inquiétez pas, je déterminerai la position de ce CopBot volé.",251)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
	SAY("Je viens d'avoir confirmation de la part du NCPD : on a deux personnes qui pourraient être notre mystérieux hacker. On a fait des recoupements grâce à la liste que vous nous avez fournie.")
	
	ANSWER("CONTINUER",201)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
	SAY("On a un problème, et j'ai bien peur que ce soit lié directement à vous. On a trouvé un datacube. Un datacube contenant de la propagande émanant des Gardiens du Crépuscule.")
	
	ANSWER("CONTINUER",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
	SAY("Le NCPD est encore occupé à enquêter sur ces meurtres. Mais on ne peut pas en même temps négliger la sécurité de Neocron.")
	
	ANSWER("CONTINUER",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
	SAY("Quelque chose est arrivé. Vous rappelez-vous le meurtre de Defries? Eh bien, il semble que ça n'est pas fini. Il y a eu un autre meurtre d'un employé de CityAdmin. Du même grade que Defries.")
	
	ANSWER("CONTINUER",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
	SAY("Bienvenue au CityAdmin. Nous rejoindre est probablement le meilleur choix que vous ayez jamais fait. CityAdmin est le plus grand établissement officiel pour la sûreté des citoyens de Neocron. Et tout cela grâce à Lioon Reza.")
	
	ANSWER("Puisque je fais maintenant partie de CityAdmin j'ai pensé que je pourrais obtenir un poste chez vous.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------

NODE(11)
	SAY("J'allais justement vous en parler. En tant que membre fidèle de CityAdmin, il est prévu de vous que vous acceptiez des missions rémunérées. Vous êtes libre d'accepter ces tâches, mais qui rejetterait une demande de l'établissement responsable du bien-être de chacun dans Neocron?")
	
	ANSWER("CONTINUER",12)
NODE(12)
	SAY("Après tout, CityAdmin travaille pour les citoyens, à l'inverse de la dictature précédente des Moines PSI. À cette époque, les pensées étaient commandées par ces individus et le peuple a vécu dans l'esclavage virtuel. Beaucoup de gens oublient qui les a libérés de tout cela.")
	
	ANSWER("Mais est-ce différent aujourd'hui? Je veux dire, vous pouvez être exécuté pour un mot mal placé.",13)

NODE(13)
	SAY("Arrêtez. Je vais vous donner un bon conseil puisque vous êtes nouveau ici. Il n'y a aucune rumeur au sujet de CityAdmin, vous l'acceptez, c'est tout. C'est particulièrement vrai au sujet de Reza. Si vous n'observez pas mon avertissement, vous pourriez être mourir plus tôt que prévu. Et tout ça juste parce que vous ne savez pas tenir votre langue.")
	
	ANSWER("Je comprends. Je vais suivre votre conseil. Dites-moi alors ce qui est important au sujet de CityAdmin?",14)
NODE(14)
	SAY("Bien. Comme je disais donc, Reza a libéré le peuple de la dictature cruelle des Moines PSI après plus de cent ans de dictature. Cela s'est produit en l'année 2724, si je me souviens bien. Ce fut également le début d'une nouvelle ère de liberté.")
	
	ANSWER("CONTINUER",15)
NODE(15)
	SAY("Les Moines PSI doivent à la clémence de Lioon Reza d'être encore admis dans la ville. De plus, de nombreuses améliorations ont été apportées, de sorte que les citoyens ont maintenant une vie plus facile. La loi, par exemple, a été simplifiée.")
	
	ANSWER("CONTINUER",16)
NODE(16)
	SAY("De nos jours, tout le monde sait ce qu'on peut ou peut ne pas faire. Le succès de cette attitude peut être vu dans la Plaza ou ViaRosso, là le taux de criminalité est nul. ")
	
	ANSWER("CONTINUER",17)
NODE(17)
	SAY("Et tout ceci malgré les grandes difficultés, après que tant de gens soient partis dans une expédition à destination d'Irata III. À ce moment-là, la criminalité s'est accrue considérablement. C'est seulement grâce au CopBots qu'il reste un certain ordre dans la ville.")
	
	ANSWER("Savez-vous ce qui est arrivé à ceux qui se sont joints à l'expédition? Je veux dire après que le contact avec Irata III ait été perdu?",18)
NODE(18)
	SAY("La réponse est simple. Irata III, c'est très loin d'ici. Les efforts de CityAdmin sont axés sur la sécurité et le bien-être des citoyens de Neocron.")
	
	ANSWER("CONTINUER",19)
NODE(19)
	SAY("Mais assez d'histoire ancienne. Il y a une livraison à faire au NCPD. Une fois là-bas, vous pourriez peut-être un peu aider le NCPD. Neocron est une grande ville, et il y a toujours beaucoup à faire.")
	
	ANSWER("Bien, je vais porter ce colis, qu'est-ce qu'il contient?",20)
	ANSWER("Je ne crois pas être prêt pour cela.",21)
NODE(20)
	GIVEITEM(9052)
	SAY("Il contient des preuves sur différentes drogues qui sont reliées avec un crime. Si vous voulez en savoir plus, je suis sûr que vous pourrez obtenir plus d'information au NCPD. Bonne chance dans votre première mission pour CityAdmin.")
	STARTMISSION(3564)
	SETNEXTDIALOGSTATE(200)
	ENDDIALOG()
	
NODE(21)
	SAY("Comme vous voulez. Revenez quand vous serez prêt.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
NODE(51)
	SAY("J'espère que ça n'ira pas plus loin. De toute façon, le NCPD a mis toutes les forces disponibles sur cette enquête.")
	
	ANSWER("CONTINUER",52)
NODE(52)
	SAY("Il ne semble plus facile de résoudre ce mystère, puisque toutes les investigations mènent à un cul de sac. Allons, c'est impossible qu'il y ait tant d'ennemis du CityAdmin pour justifier des recherches si prolongées ...")
	
	ANSWER("Je crois que vous avez sous-estimé la situation.",53)
NODE(53)
	SAY("Nos ennemis principaux sont les Gardiens du Crépuscule. Ils essayent constamment de perturber l'autorité du CityAdmin, mais ça n'est pas nouveau. Outre les Gardiens du Crépuscule, il reste seulement les Crahn, les Tsunami et le Dragon Noir.")
	
	ANSWER("CONTINUER",54)
NODE(54)
	SAY("Mais Tsunami et Dragon Noir sont trop occupés par leurs propres affaires et leurs rivalités. Et Crahn est seulement un vestige de leur gouvernement destitué. Ils pleurent encore la perte de leur pouvoir.")
	
	ANSWER("Mais vous sous-estimez les motivations personnelles qui pourraient mener certaines personnes à mépriser le CityAdmin.",55)
NODE(55)
	SAY("Je crois que vous faites erreur, le CityAdmin est entièrement approuvé par ses citoyens. Quelques citoyens contrôlent Neocron, ainsi que Reza. Mais ce n'est pas de ça que je veux vous parler. Le NCPD est très sollicité à l'heure actuelle.")
	
	ANSWER("CONTINUER",56)
NODE(56)
	SAY("C'est pourquoi le CityAdmin a décidé de permettre à des Runners d'enquêter et d'aider ainsi le NCPD. Des informations sur divers contacts m'ont été expédiées et j'ai ensuite assigné ces missions à plusieurs Runners.")
	
	ANSWER("CONTINUER",57)
NODE(57)
	SAY("Malheureusement les Runners qui s'offrent pour une telle tâche ou qui sont assez qualifiés sont une race rare. C'est pourquoi j'ai pensé à vous.")
	
	ANSWER("Vous me dites que je ne suis pas assez qualifié?! Et maintenant vous me demandez parce que vous n'avez plus aucun autre Runner?!!",58)
NODE(58)
	SAY("Mon raisonnement n'est pas sujet à discussion. Même si vous ne semblez pas l'accepter, il y a des Runners mieux appropriés à un tel travail que vous. Je n'ai pas voulu être si rude dans mes propos, cependant.")
	
	ANSWER("CONTINUER",59)
NODE(59)
	SAY("Si vous décidez de ne pas continuer cette tâche, je devrai naturellement inscrire une note dans votre dossier. Vous devriez apprendre à contrôler votre tempérament, vous savez...")
	
	ANSWER("Ok, ça va aller. De quelle tâche s'agit-il?",60)
	ANSWER("Je ne suis pas encore d'humeur pour une autre tâche.",63)
NODE(60)
	SAY("Le NCPD nous a informés qu'un certain contact de Tsunami, du nom de Hontoka, cherche à nous vendre des informations. Ca pourrait être important pour notre affaire de meurtre, mais puisque l'information est offerte par un Tsunami je ne sait pas si elle sera fiable. Je doute qu'il soit honnête.")
	
	ANSWER("CONTINUER",61)
NODE(61)
	SAY("Mais CityAdmin n'occuperait pas sa place actuelle s'il ne tenait pas compte de toutes les possibilités. Vous pouvez le trouver dans le secteur industriel 02. Ensuite, si vous obtenez assez d'informations, allez voir l'officier Jenna. Vous l'avez déjà rencontrée, je suppose?")
	STARTMISSION(3565)
	SETNEXTDIALOGSTATE(62)
	ENDDIALOG()	

NODE(62)
	SAY("Concentrez-vous sur la tâche. Hontoka vous attend dans le secteur industriel 02. Si vous avez assez d'informations, allez au NCPD.")
	ENDDIALOG()

NODE(63)
	SAY("Pourquoi ne prendriez-vous pas un peu de repos? Et revenez quand vous estimez que vous êtes prêt pour une nouvelle tâche.")
	ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
NODE(101)
	SAY("On a décidé de donner à un runner ambitieux une mission à sa mesure. Je pense que vous avez déjà eu la possibilité d'observer les CopBots dans la rue?")
	
	ANSWER("Oui, ils sont très impressionnants.",102)
NODE(102)
	SAY("Oui, mais il y a aussi quelque chose que beaucoup de gens ignorent. On sait que certains CopBots disparaissent des rues de Neocron chaque année. On parle même de CopBots qui erreraient dans les Terres Brûlées. De CopBots qui deviennent fous.")
	
	ANSWER("C'est impensable! Et si jamais un CopBot devenait fou en pleine rue dans Neocron?",103)
NODE(103)
	SAY("Pas d'inquiétude à avoir. Le système de CopBots est très efficace pour résoudre ces problèmes. Mais nous avons parfois une situation différente. Certains CopBots sont volés avant leur mise en service. Heureusement, cela se produit très rarement, et habituellement ces crimes sont résolus en quelques heures.")
	
	ANSWER("CONTINUER",104)
NODE(104)
	SAY("Mais... Dans ce cas, on a découvert qu'un CopBot était manquant alors qu'on le pensait activé. Ca s'est produit il y a deux mois environ, et nous ne savons pas du tout où il peut se trouver.")
	
	ANSWER("Comment est-ce que vous traitez ces problèmes en temps normal?",105)
NODE(105)
	SAY("On a implanté dans chaque CopBot une sonde radio qui envoie un signal au QG lorsque le CopBot est activé. Mais cette fois, il n'a pas été activé. Ou bien la sonde a été retirée.")
	
	ANSWER("CONTINUER",106)
NODE(106)
	SAY("Si c'est réellement le cas, alors c'est l'oeuvre d'un génie du piratage. Même nos hackers ne peuvent le faire qu'avec un équipement spécial.")
	
	ANSWER("Mais où peut-on trouver un tel hacker? Peut-être... Les Anges Déchus!!",107)
NODE(107)
	SAY("Oui, exactement. Vous avez l'esprit vif. C'est ce dont nous aurons besoin. Votre mission est d'aller voir un certain Elias à Tech Haven et de l'interroger sur des liens possibles entre les Anges Déchus et le CopBot volé.")
	
	ANSWER("Dites m'en plus.",108)
	ANSWER("Je ne me sens pas prêt pour cette mission.",109)
NODE(108)
	SAY("Lorsque vous avez terminé votre mission, allez faire votre rapport à l'agent Jenna. CityAdmin vous remercie d'avance. Les Anges Déchus sont neutres envers nous, ils ne devraient pas poser de problèmes à coopérer.")
	STARTMISSION(3566)
	SETNEXTDIALOGSTATE(10)
	ENDDIALOG()	


NODE(109)
	SAY("Revenez quand vous vous sentez à la hauteur.")
	ENDDIALOG()
	
NODE(110)
	SAY("Je pensais que vous vouliez cette enquête sur le CopBot disparu? Vous devriez aller voir Elias à Tech Haven et faire votre rapport au NCPD.")
	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
NODE(151)
	SAY("Le fait n'est pas en soi exceptionnel. Mais le problème, c'est que la piste de ce datacube remonte jusqu'à vous. Vous savez ce que ça veut dire...")
	
	ANSWER("Mais c'est impossible! Jamais je ne...",152)
NODE(152)
	SAY("Calmez-vous. Je n'ai pas encore prévenu les CopBots, il me semble. Mais vous comprendrez certainement que ce délit entraîne l'exécution du possesseur du datacube?")
	
	ANSWER("CONTINUER",153)
NODE(153)
	SAY("La propagande de ce type est interdite dans Neocron.")
	
	ANSWER("C'est quelqu'un d'autre qui a arrangé le coup! J'ai donné un datacube à une seule personne récemment. C'est certainement lui le coupable!!",154)
NODE(154)
	SAY("CityAdmin est pleinement consciente du fait que quelqu'un cherche à nous faire inculper un de nos employés à tort. La procédure est de donner à l'accusé un temps limité pour prouver son innocence.")
	
	ANSWER("CONTINUER",155)
NODE(155)
	SAY("Je sais que vous nous avez rendu de grands services récemment, c'est pourquoi j'ai décidé d'augmenter le temps qui vous était imparti. Vous devriez commencer à réunir des preuves le plus rapidement possible, vous n'avez pas toute la vie devant vous. C'est le cas de le dire...")
	
	ANSWER("Mais comment? Je ne sais même pas par où commencer!",156)
NODE(156)
	SAY("Vous devriez commencer là où vous avez perdu ce datacube, où bien là où vous l'avez donné à quelqu'un. Tenez, voilà le datacube de propagande.")
	
	ANSWER("C'est probablement Hontoka, dans le secteur industriel 02. C'est à lui que j'ai donné un datacube.",157)
NODE(157)
	SAY("Maintenant, la balle est dans votre camp. CityAdmin ne peut pas avoir le nez partout. Si vous ne pouvez pas prouver votre innocence, alors vous êtes coupable.")
	
	ANSWER("CONTINUER",158)

--Spieler bekommt Datacube 9054
NODE(158)
	GIVEITEM(9054)
	SAY("Allez me trouver des preuves tangibles, ou bien vous en subirez les conséquences.")
	STARTMISSION(3567)
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	
NODE(159)
	SAY("J'ai bien peur que vous n'ayez pas vraiment le temps de faire une pause. Mais c'est vous qui voyez.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
NODE(201)
	SAY("Comme c'est vous qui avez fourni cette liste, j'ai suggéré que vous vous occupiez du hacker. J'espère que ça vous fait plaisir?")
	
	ANSWER("Parfait, je vais terminer ce que j'ai commencé.",202)
	ANSWER("J'ai bien peur de manquer de préparation pour cette mission.",207)
NODE(202)
	SAY("Ravi de l'entendre. CityAdmin dépend de runners comme vous. Vous devriez parler au contact qui vous a donné la liste, pour commencer. Il en sait peut-être plus, étant donné que c'est lui qui a dressé cette liste.")
	
	ANSWER("Vous parlez de cette tête de mule d'Ethan Cole, c'est ça?",203)
NODE(203)
	SAY("Possible. Souvenez-vous que le hacker n'a très certainement pas travaillé tout seul. Et j'ai de mauvaises nouvelles pour vous, en plus.")
	
	ANSWER("CONTINUER",204)
NODE(204)
	SAY("Un autre meurtre a été commis depuis la dernière fois. L'enquête piétine, si on ne néglige aucune piste.")
	
	ANSWER("CONTINUER",205)
NODE(205)
	SAY("Vous devriez peut-être vous concentrer en priorité sur ce hacker et ce CopBot volé. Ne vous occupez pas trop des meurtres pour l'instant.")
	
	ANSWER("Ca me va. Vous pouvez considérer la mission comme réussie.",206)
NODE(206)
	SAY("Good luck.")
	STARTMISSION(3568)
	SETNEXTDIALOGSTATE(8)
	ENDDIALOG()
	
NODE(207)
	SAY("Ne prenez pas trop votre temps, il pourrait y avoir un autre meurtre.")
	
	ENDDIALOG()
NODE(208)
	SAY("Vous êtes déjà sur la piste du hacker? Alors vous feriez mieux d'aller parler à Cole, dans l'Outzone 01.")
	
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
NODE(251)
	SAY("Vous avez donc une piste?")
	
	ANSWER("Je pense que oui. Il faut encore que j'aille voir un... hum... un contact qui me donnera sa localisation exacte.",252)
NODE(252)
	SAY("Bonne chance.")
	STARTMISSION(3569)
	SETNEXTDIALOGSTATE(3)	
	ENDDIALOG()
NODE(253)
	SAY("Je pensais que vous aviez une piste. Allez faire votre rapport à Jenna lorsque vous aurez plus d'éléments.")
	
	ENDDIALOG()

--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occupé. Circulez.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(1)
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
			CHANGEFACTION(1)
			SAY("Bienvenue chez CityAdmin.")
			ENDDIALOG()
		end
end