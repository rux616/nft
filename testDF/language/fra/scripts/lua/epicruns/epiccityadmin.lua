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
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(1,0)
			if(result==-2)then
				SAY("Vous en avez d�j� fait plus qu'assez pour CityAdmin. Mais vous pourriez fonder un clan pour nous assister si vous le d�sirez.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(1,0)
				if(result==-5)then
					SAY("J'ai bien peur que vous n'ayez pas encore les qualifications n�cessaires. Revenez me voir quand vous avez plus d'exp�rience dans le m�tier. (Prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(1,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(1,1)
						if(result==-5)then
							SAY("J'ai bien peur que vous n'ayez pas encore les qualifications n�cessaires. Revenez me voir quand vous avez plus d'exp�rience dans le m�tier. (Prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(1,2)
						if(result==-5)then
							SAY("J'ai bien peur que vous n'ayez pas encore les qualifications n�cessaires. Revenez me voir quand vous avez plus d'exp�rience dans le m�tier. (Prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(1,3)
						if(result==-5)then
							SAY("J'ai bien peur que vous n'ayez pas encore les qualifications n�cessaires. Revenez me voir quand vous avez plus d'exp�rience dans le m�tier. (Prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(1,4)
						if(result==-5)then
							SAY("J'ai bien peur que vous n'ayez pas encore les qualifications n�cessaires. Revenez me voir quand vous avez plus d'exp�rience dans le m�tier. (Prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(1,5)
				if(result==-5)then
					SAY("J'ai bien peur que vous n'ayez pas encore les qualifications n�cessaires. Revenez me voir quand vous avez plus d'exp�rience dans le m�tier. (Prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(1,5)
				        if(result==-4)then
						SAY("Vous en avez d�j� fait plus qu'assez pour CityAdmin. Mais vous pourriez fonder un clan pour nous assister si vous le d�sirez.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
	SAY("Ces enqu�tes semblent prendre plus longtemps que pr�vu, il me semble. Au moins, on ne signale plus de meurtres, c'est toujours �a. Mais gardez l'oeil ouvert!")
	
	ANSWER("Ne vous inqui�tez pas, je d�terminerai la position de ce CopBot vol�.",251)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
	SAY("Je viens d'avoir confirmation de la part du NCPD : on a deux personnes qui pourraient �tre notre myst�rieux hacker. On a fait des recoupements gr�ce � la liste que vous nous avez fournie.")
	
	ANSWER("CONTINUER",201)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
	SAY("On a un probl�me, et j'ai bien peur que ce soit li� directement � vous. On a trouv� un datacube. Un datacube contenant de la propagande �manant des Gardiens du Cr�puscule.")
	
	ANSWER("CONTINUER",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
	SAY("Le NCPD est encore occup� � enqu�ter sur ces meurtres. Mais on ne peut pas en m�me temps n�gliger la s�curit� de Neocron.")
	
	ANSWER("CONTINUER",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
	SAY("Quelque chose est arriv�. Vous rappelez-vous le meurtre de Defries? Eh bien, il semble que �a n'est pas fini. Il y a eu un autre meurtre d'un employ� de CityAdmin. Du m�me grade que Defries.")
	
	ANSWER("CONTINUER",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
	SAY("Bienvenue au CityAdmin. Nous rejoindre est probablement le meilleur choix que vous ayez jamais fait. CityAdmin est le plus grand �tablissement officiel pour la s�ret� des citoyens de Neocron. Et tout cela gr�ce � Lioon Reza.")
	
	ANSWER("Puisque je fais maintenant partie de CityAdmin j'ai pens� que je pourrais obtenir un poste chez vous.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------

NODE(11)
	SAY("J'allais justement vous en parler. En tant que membre fid�le de CityAdmin, il est pr�vu de vous que vous acceptiez des missions r�mun�r�es. Vous �tes libre d'accepter ces t�ches, mais qui rejetterait une demande de l'�tablissement responsable du bien-�tre de chacun dans Neocron?")
	
	ANSWER("CONTINUER",12)
NODE(12)
	SAY("Apr�s tout, CityAdmin travaille pour les citoyens, � l'inverse de la dictature pr�c�dente des Moines PSI. � cette �poque, les pens�es �taient command�es par ces individus et le peuple a v�cu dans l'esclavage virtuel. Beaucoup de gens oublient qui les a lib�r�s de tout cela.")
	
	ANSWER("Mais est-ce diff�rent aujourd'hui? Je veux dire, vous pouvez �tre ex�cut� pour un mot mal plac�.",13)

NODE(13)
	SAY("Arr�tez. Je vais vous donner un bon conseil puisque vous �tes nouveau ici. Il n'y a aucune rumeur au sujet de CityAdmin, vous l'acceptez, c'est tout. C'est particuli�rement vrai au sujet de Reza. Si vous n'observez pas mon avertissement, vous pourriez �tre mourir plus t�t que pr�vu. Et tout �a juste parce que vous ne savez pas tenir votre langue.")
	
	ANSWER("Je comprends. Je vais suivre votre conseil. Dites-moi alors ce qui est important au sujet de CityAdmin?",14)
NODE(14)
	SAY("Bien. Comme je disais donc, Reza a lib�r� le peuple de la dictature cruelle des Moines PSI apr�s plus de cent ans de dictature. Cela s'est produit en l'ann�e 2724, si je me souviens bien. Ce fut �galement le d�but d'une nouvelle �re de libert�.")
	
	ANSWER("CONTINUER",15)
NODE(15)
	SAY("Les Moines PSI doivent � la cl�mence de Lioon Reza d'�tre encore admis dans la ville. De plus, de nombreuses am�liorations ont �t� apport�es, de sorte que les citoyens ont maintenant une vie plus facile. La loi, par exemple, a �t� simplifi�e.")
	
	ANSWER("CONTINUER",16)
NODE(16)
	SAY("De nos jours, tout le monde sait ce qu'on peut ou peut ne pas faire. Le succ�s de cette attitude peut �tre vu dans la Plaza ou ViaRosso, l� le taux de criminalit� est nul. ")
	
	ANSWER("CONTINUER",17)
NODE(17)
	SAY("Et tout ceci malgr� les grandes difficult�s, apr�s que tant de gens soient partis dans une exp�dition � destination d'Irata III. � ce moment-l�, la criminalit� s'est accrue consid�rablement. C'est seulement gr�ce au CopBots qu'il reste un certain ordre dans la ville.")
	
	ANSWER("Savez-vous ce qui est arriv� � ceux qui se sont joints � l'exp�dition? Je veux dire apr�s que le contact avec Irata III ait �t� perdu?",18)
NODE(18)
	SAY("La r�ponse est simple. Irata III, c'est tr�s loin d'ici. Les efforts de CityAdmin sont ax�s sur la s�curit� et le bien-�tre des citoyens de Neocron.")
	
	ANSWER("CONTINUER",19)
NODE(19)
	SAY("Mais assez d'histoire ancienne. Il y a une livraison � faire au NCPD. Une fois l�-bas, vous pourriez peut-�tre un peu aider le NCPD. Neocron est une grande ville, et il y a toujours beaucoup � faire.")
	
	ANSWER("Bien, je vais porter ce colis, qu'est-ce qu'il contient?",20)
	ANSWER("Je ne crois pas �tre pr�t pour cela.",21)
NODE(20)
	GIVEITEM(9052)
	SAY("Il contient des preuves sur diff�rentes drogues qui sont reli�es avec un crime. Si vous voulez en savoir plus, je suis s�r que vous pourrez obtenir plus d'information au NCPD. Bonne chance dans votre premi�re mission pour CityAdmin.")
	STARTMISSION(3564)
	SETNEXTDIALOGSTATE(200)
	ENDDIALOG()
	
NODE(21)
	SAY("Comme vous voulez. Revenez quand vous serez pr�t.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
NODE(51)
	SAY("J'esp�re que �a n'ira pas plus loin. De toute fa�on, le NCPD a mis toutes les forces disponibles sur cette enqu�te.")
	
	ANSWER("CONTINUER",52)
NODE(52)
	SAY("Il ne semble plus facile de r�soudre ce myst�re, puisque toutes les investigations m�nent � un cul de sac. Allons, c'est impossible qu'il y ait tant d'ennemis du CityAdmin pour justifier des recherches si prolong�es ...")
	
	ANSWER("Je crois que vous avez sous-estim� la situation.",53)
NODE(53)
	SAY("Nos ennemis principaux sont les Gardiens du Cr�puscule. Ils essayent constamment de perturber l'autorit� du CityAdmin, mais �a n'est pas nouveau. Outre les Gardiens du Cr�puscule, il reste seulement les Crahn, les Tsunami et le Dragon Noir.")
	
	ANSWER("CONTINUER",54)
NODE(54)
	SAY("Mais Tsunami et Dragon Noir sont trop occup�s par leurs propres affaires et leurs rivalit�s. Et Crahn est seulement un vestige de leur gouvernement destitu�. Ils pleurent encore la perte de leur pouvoir.")
	
	ANSWER("Mais vous sous-estimez les motivations personnelles qui pourraient mener certaines personnes � m�priser le CityAdmin.",55)
NODE(55)
	SAY("Je crois que vous faites erreur, le CityAdmin est enti�rement approuv� par ses citoyens. Quelques citoyens contr�lent Neocron, ainsi que Reza. Mais ce n'est pas de �a que je veux vous parler. Le NCPD est tr�s sollicit� � l'heure actuelle.")
	
	ANSWER("CONTINUER",56)
NODE(56)
	SAY("C'est pourquoi le CityAdmin a d�cid� de permettre � des Runners d'enqu�ter et d'aider ainsi le NCPD. Des informations sur divers contacts m'ont �t� exp�di�es et j'ai ensuite assign� ces missions � plusieurs Runners.")
	
	ANSWER("CONTINUER",57)
NODE(57)
	SAY("Malheureusement les Runners qui s'offrent pour une telle t�che ou qui sont assez qualifi�s sont une race rare. C'est pourquoi j'ai pens� � vous.")
	
	ANSWER("Vous me dites que je ne suis pas assez qualifi�?! Et maintenant vous me demandez parce que vous n'avez plus aucun autre Runner?!!",58)
NODE(58)
	SAY("Mon raisonnement n'est pas sujet � discussion. M�me si vous ne semblez pas l'accepter, il y a des Runners mieux appropri�s � un tel travail que vous. Je n'ai pas voulu �tre si rude dans mes propos, cependant.")
	
	ANSWER("CONTINUER",59)
NODE(59)
	SAY("Si vous d�cidez de ne pas continuer cette t�che, je devrai naturellement inscrire une note dans votre dossier. Vous devriez apprendre � contr�ler votre temp�rament, vous savez...")
	
	ANSWER("Ok, �a va aller. De quelle t�che s'agit-il?",60)
	ANSWER("Je ne suis pas encore d'humeur pour une autre t�che.",63)
NODE(60)
	SAY("Le NCPD nous a inform�s qu'un certain contact de Tsunami, du nom de Hontoka, cherche � nous vendre des informations. Ca pourrait �tre important pour notre affaire de meurtre, mais puisque l'information est offerte par un Tsunami je ne sait pas si elle sera fiable. Je doute qu'il soit honn�te.")
	
	ANSWER("CONTINUER",61)
NODE(61)
	SAY("Mais CityAdmin n'occuperait pas sa place actuelle s'il ne tenait pas compte de toutes les possibilit�s. Vous pouvez le trouver dans le secteur industriel 02. Ensuite, si vous obtenez assez d'informations, allez voir l'officier Jenna. Vous l'avez d�j� rencontr�e, je suppose?")
	STARTMISSION(3565)
	SETNEXTDIALOGSTATE(62)
	ENDDIALOG()	

NODE(62)
	SAY("Concentrez-vous sur la t�che. Hontoka vous attend dans le secteur industriel 02. Si vous avez assez d'informations, allez au NCPD.")
	ENDDIALOG()

NODE(63)
	SAY("Pourquoi ne prendriez-vous pas un peu de repos? Et revenez quand vous estimez que vous �tes pr�t pour une nouvelle t�che.")
	ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
NODE(101)
	SAY("On a d�cid� de donner � un runner ambitieux une mission � sa mesure. Je pense que vous avez d�j� eu la possibilit� d'observer les CopBots dans la rue?")
	
	ANSWER("Oui, ils sont tr�s impressionnants.",102)
NODE(102)
	SAY("Oui, mais il y a aussi quelque chose que beaucoup de gens ignorent. On sait que certains CopBots disparaissent des rues de Neocron chaque ann�e. On parle m�me de CopBots qui erreraient dans les Terres Br�l�es. De CopBots qui deviennent fous.")
	
	ANSWER("C'est impensable! Et si jamais un CopBot devenait fou en pleine rue dans Neocron?",103)
NODE(103)
	SAY("Pas d'inqui�tude � avoir. Le syst�me de CopBots est tr�s efficace pour r�soudre ces probl�mes. Mais nous avons parfois une situation diff�rente. Certains CopBots sont vol�s avant leur mise en service. Heureusement, cela se produit tr�s rarement, et habituellement ces crimes sont r�solus en quelques heures.")
	
	ANSWER("CONTINUER",104)
NODE(104)
	SAY("Mais... Dans ce cas, on a d�couvert qu'un CopBot �tait manquant alors qu'on le pensait activ�. Ca s'est produit il y a deux mois environ, et nous ne savons pas du tout o� il peut se trouver.")
	
	ANSWER("Comment est-ce que vous traitez ces probl�mes en temps normal?",105)
NODE(105)
	SAY("On a implant� dans chaque CopBot une sonde radio qui envoie un signal au QG lorsque le CopBot est activ�. Mais cette fois, il n'a pas �t� activ�. Ou bien la sonde a �t� retir�e.")
	
	ANSWER("CONTINUER",106)
NODE(106)
	SAY("Si c'est r�ellement le cas, alors c'est l'oeuvre d'un g�nie du piratage. M�me nos hackers ne peuvent le faire qu'avec un �quipement sp�cial.")
	
	ANSWER("Mais o� peut-on trouver un tel hacker? Peut-�tre... Les Anges D�chus!!",107)
NODE(107)
	SAY("Oui, exactement. Vous avez l'esprit vif. C'est ce dont nous aurons besoin. Votre mission est d'aller voir un certain Elias � Tech Haven et de l'interroger sur des liens possibles entre les Anges D�chus et le CopBot vol�.")
	
	ANSWER("Dites m'en plus.",108)
	ANSWER("Je ne me sens pas pr�t pour cette mission.",109)
NODE(108)
	SAY("Lorsque vous avez termin� votre mission, allez faire votre rapport � l'agent Jenna. CityAdmin vous remercie d'avance. Les Anges D�chus sont neutres envers nous, ils ne devraient pas poser de probl�mes � coop�rer.")
	STARTMISSION(3566)
	SETNEXTDIALOGSTATE(10)
	ENDDIALOG()	


NODE(109)
	SAY("Revenez quand vous vous sentez � la hauteur.")
	ENDDIALOG()
	
NODE(110)
	SAY("Je pensais que vous vouliez cette enqu�te sur le CopBot disparu? Vous devriez aller voir Elias � Tech Haven et faire votre rapport au NCPD.")
	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
NODE(151)
	SAY("Le fait n'est pas en soi exceptionnel. Mais le probl�me, c'est que la piste de ce datacube remonte jusqu'� vous. Vous savez ce que �a veut dire...")
	
	ANSWER("Mais c'est impossible! Jamais je ne...",152)
NODE(152)
	SAY("Calmez-vous. Je n'ai pas encore pr�venu les CopBots, il me semble. Mais vous comprendrez certainement que ce d�lit entra�ne l'ex�cution du possesseur du datacube?")
	
	ANSWER("CONTINUER",153)
NODE(153)
	SAY("La propagande de ce type est interdite dans Neocron.")
	
	ANSWER("C'est quelqu'un d'autre qui a arrang� le coup! J'ai donn� un datacube � une seule personne r�cemment. C'est certainement lui le coupable!!",154)
NODE(154)
	SAY("CityAdmin est pleinement consciente du fait que quelqu'un cherche � nous faire inculper un de nos employ�s � tort. La proc�dure est de donner � l'accus� un temps limit� pour prouver son innocence.")
	
	ANSWER("CONTINUER",155)
NODE(155)
	SAY("Je sais que vous nous avez rendu de grands services r�cemment, c'est pourquoi j'ai d�cid� d'augmenter le temps qui vous �tait imparti. Vous devriez commencer � r�unir des preuves le plus rapidement possible, vous n'avez pas toute la vie devant vous. C'est le cas de le dire...")
	
	ANSWER("Mais comment? Je ne sais m�me pas par o� commencer!",156)
NODE(156)
	SAY("Vous devriez commencer l� o� vous avez perdu ce datacube, o� bien l� o� vous l'avez donn� � quelqu'un. Tenez, voil� le datacube de propagande.")
	
	ANSWER("C'est probablement Hontoka, dans le secteur industriel 02. C'est � lui que j'ai donn� un datacube.",157)
NODE(157)
	SAY("Maintenant, la balle est dans votre camp. CityAdmin ne peut pas avoir le nez partout. Si vous ne pouvez pas prouver votre innocence, alors vous �tes coupable.")
	
	ANSWER("CONTINUER",158)

--Spieler bekommt Datacube 9054
NODE(158)
	GIVEITEM(9054)
	SAY("Allez me trouver des preuves tangibles, ou bien vous en subirez les cons�quences.")
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
	SAY("Comme c'est vous qui avez fourni cette liste, j'ai sugg�r� que vous vous occupiez du hacker. J'esp�re que �a vous fait plaisir?")
	
	ANSWER("Parfait, je vais terminer ce que j'ai commenc�.",202)
	ANSWER("J'ai bien peur de manquer de pr�paration pour cette mission.",207)
NODE(202)
	SAY("Ravi de l'entendre. CityAdmin d�pend de runners comme vous. Vous devriez parler au contact qui vous a donn� la liste, pour commencer. Il en sait peut-�tre plus, �tant donn� que c'est lui qui a dress� cette liste.")
	
	ANSWER("Vous parlez de cette t�te de mule d'Ethan Cole, c'est �a?",203)
NODE(203)
	SAY("Possible. Souvenez-vous que le hacker n'a tr�s certainement pas travaill� tout seul. Et j'ai de mauvaises nouvelles pour vous, en plus.")
	
	ANSWER("CONTINUER",204)
NODE(204)
	SAY("Un autre meurtre a �t� commis depuis la derni�re fois. L'enqu�te pi�tine, si on ne n�glige aucune piste.")
	
	ANSWER("CONTINUER",205)
NODE(205)
	SAY("Vous devriez peut-�tre vous concentrer en priorit� sur ce hacker et ce CopBot vol�. Ne vous occupez pas trop des meurtres pour l'instant.")
	
	ANSWER("Ca me va. Vous pouvez consid�rer la mission comme r�ussie.",206)
NODE(206)
	SAY("Good luck.")
	STARTMISSION(3568)
	SETNEXTDIALOGSTATE(8)
	ENDDIALOG()
	
NODE(207)
	SAY("Ne prenez pas trop votre temps, il pourrait y avoir un autre meurtre.")
	
	ENDDIALOG()
NODE(208)
	SAY("Vous �tes d�j� sur la piste du hacker? Alors vous feriez mieux d'aller parler � Cole, dans l'Outzone 01.")
	
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
	SAY("Je pensais que vous aviez une piste. Allez faire votre rapport � Jenna lorsque vous aurez plus d'�l�ments.")
	
	ENDDIALOG()

--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occup�. Circulez.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(1)
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
			CHANGEFACTION(1)
			SAY("Bienvenue chez CityAdmin.")
			ENDDIALOG()
		end
end