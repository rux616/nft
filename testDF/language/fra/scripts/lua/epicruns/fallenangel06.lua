--new
--Fallen Angel 06
--
--Trigger
--Triggernumber,Type,Person
--0,D,cONSTANTINE 50
--1,D,Grimm,108,112
--2,D,Personal Director, 150
--3
--
--Startnode, Person
--0, Personal Director
--50, constantine 1640
--100, Grimm 1639
--150, Personal Director
--200,
--250,
--

--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1640	1639	0	0	3	0	0	0	3	1	1	0	3	4	2	0	0	0	0	
--START	START	START	START
--50	100	0 	0


--Items
--Solantium 250 Meritium 251
--heavy deflector 1851
--vehicle energypack 1549
--Construction chip2238
--Felddämpfer Blueprint
--GenResequencer Blueprint
--Felddämpfer 9303
--GenResequencer 9304

function DIALOG()
--------------------------------------------------------------------
-- Personal Director
--0
	
	NODE(0)
		SAY("Vous devriez parler à Constantine. La dernière étape de votre projet est en cours. C'est vous qui vous occupez de diriger les recherches, non?")

		ANSWER("J'aimerais bien, mais Constantine fait la plus grosse partie du travail, je n'ai presque plus rien à faire.",1)
	NODE(1)
		SAY("Pour une fois dans ma vie, je crois que j'envie presque votre boulot. Peut-être apprécierez-vous de savoir que le Conseil a des chances de vous accorder une prime si vous menez le projet à terme.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(2)
		SAY("Vous devriez parler avec Constantine au sujet de la dernière étape de votre projet de recherches.")
		ENDDIALOG()
--------------------------------------------------------------------
--Constantine
--50
	NODE(50)
		SAY("J'espère que vous êtes prêt, parce que vous va dépendre de vous à présent. Il nous manque des éléments, mais j'ai essayé d'en rassembler un maximum.")

		ANSWER("Ca devrait suffire pour terminer le projet.",51)
	NODE(51)
		SAY("j'aimerais bien, mais j'ai une mauvaise nouvelle pour vous. Vous allez devoir obtenir certains éléments de Grimm en personne.")

		ANSWER("Je devrais pouvoir survivre au face-à-face.",52)
	NODE(52)
		GIVEITEM(250)
		GIVEITEM(251)
		SAY("Quand je pense que récemment encore il voulait vous éliminer... Mais oublions ça. Pour ces éléments, vous devrez recycler certains matériaux afin de construire le produit final, selon le projet que vous avez choisi. Vous pourrez obtenir ce plan avec l'aide de Grimm. Je peux vous donner du Solantium et du Meritium, mais il vous faudra également trois cartouches d'Arilium. Lorsque vous aurez tout, vous pourrez aller voir le directeur des opérations, et lui remettre le projet.")
		SETNEXTDIALOGSTATE(53)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
--Giveitem Solantium 250 Meritium 251


	NODE(53)
		SAY("Vous avez parlé à Grimm? Si vous avez tout ce qu'il faut, remettez-le au directeur du personnel, il vous attend.")

		ENDDIALOG()
--------------------------------------------------------------------
--GRIMM
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Du vent, je n'ai pas envie de vous parler.")
			ENDDIALOG()
		else
			SAY("Ah, merveilleux, la dernière personne à qui j'ai envie de parler, justement! Vous savez que vous avez détruit ma carrière?!")

			ANSWER("C'est entièrement de votre faute, vous n'auriez pas dû chercher à me trahir en premier lieu.",101)
		end
	NODE(101)
		SAY("Mais tout est si simple, pour vous! C'est pas juste! J'ai dû travailler dur, tout en bas de l'échelle, et vous débarquez, et vous raflez toute la mise! Et maintenant, on me force à coopérer avec vous, c'est vraiment le bouquet...")

		ANSWER("Alors abrégeons ça, parce que je n'ai pas envie de vous parler non plus.",102)
	NODE(102)
		SAY("On m'a dit que j'allais devoir vous aider, mais je ne bougerai pas le petit doigt tant que vous n'aurez pas fait votre part du boulot. Vous feriez mieux de vous y mettre tout de suite.")

		ANSWER("Attendez une seconde. Qu'est-ce qu'il me faut exactement pour ces plans?",103)
	NODE(103)
		SAY("Tsk, tsk. Ne me dites pas que je dois vous faire une leçon, quand même! Vous avez quelque chose dans le crâne? Et puis d'abord, sur quel projet est-ce que vous travailliez?")

		ANSWER("Sur le champ de protection.",104)
		ANSWER("Sur le reséquenceur génétique.",105)
	NODE(104)
		SAY("Alors il vous faudra un plan de Heavy Deflector Belt et un de Vehicle Energy Pack. Revenez une fois que vous avez les deux.")
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
	NODE(105)
		SAY("Alors il vous faudra un plan de BioTech Construction Chip 2 et un de Vehicle Energy Pack. Revenez quand vous avez les deux.")
		SETNEXTDIALOGSTATE(110)
		ENDDIALOG()

--VON 104
--heavy deflector 1851
--vehicle energypack 1549
--Construction chip2237

	NODE(106)
		TAKESPECIALITEMCNT(1507, 1, 1851, 1)
		if(result==0)then
			SAY("Je vous avais pas demandé un plan de Heavy Deflector Blueprint et un de Vehicle Energy Pak?")
			ENDDIALOG()
		else
			TAKESPECIALITEMCNT( 1507, 1, 1549, 1)
			if(result==0)then
				SAY("Je vous avais pas demandé un plan de Heavy Deflector Blueprint et un de Vehicle Energy Pak?")
				ENDDIALOG()		
			else
				SAY("C'est pas trop tôt! Mais je pensais bien que vous alliez traîner. Donnez-moi ça.")

				ANSWER("Tenez, mais vous avez intérêt à faire ça sérieusement.",107)
			end
		end
	NODE(107)
		SAY("J'aimerais bien vous apprendre une leçon, mais peu importe, je vais faire mon boulot, comme toujours. Revenez dans quelques minutes.")
		SETNEXTDIALOGSTATE(108)
		ENDDIALOG()

--Spieler bekommt Blueprint für den Felddämpfer
	NODE(108)
		GIVESPECIALITEM(1507,1,9303)
		SAY("Avec ce plan, vous allez pouvoir terminer votre projet. Vous savez quoi? J'arrive pas à me rendre vraiment compte que je suis en train de vous aider...")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
	NODE(109)
		SAY("Je vous ai déjà donné plus que ce que je devrais, alors tirez-vous!")
		ENDDIALOG()
		
	NODE(110)
	TAKESPECIALITEMCNT( 1507, 1, 2237, 1)
		if(result==0)then
			SAY("Je ne vous avez pas demandé un plan de BioTech Construction Chip Blueprint et un de Vehicle Energy Pak??")
			ENDDIALOG()
		else
			TAKESPECIALITEMCNT( 1507, 1, 1549, 1)
			if(result==0)then
				SAY("Je ne vous avez pas demandé un plan de BioTech Construction Chip Blueprint et un de Vehicle Energy Pak??")
				ENDDIALOG()		
			else
				SAY("C'est pas trop tôt! Mais je pensais bien que vous alliez traîner. Donnez-moi ça.")

				ANSWER("Tenez, à vous de jouer, maintenant.",111)
			end
		end
	NODE(111)
		SAY("J'aimerais bien vous apprendre une leçon, mais peu importe, je vais faire mon boulot, comme toujours. Revenez dans quelques minutes.")
		SETNEXTDIALOGSTATE(112)
		ENDDIALOG()
	NODE(112)
		GIVESPECIALITEM(1507,1,9304)
		SAY("Avec ce plan, vous allez pouvoir terminer votre projet. Vous savez quoi? J'arrive pas à me rendre vraiment compte que je suis en train de vous aider...")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
--------------------------------------------------------------------
-- Personal Director
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous devriez parler à Constantine à propos de la finalisation de votre projet.")
			ENDDIALOG()
		else
			SAY("Qu'est-ce que je peux faire pour vous?")

			ANSWER("J'ai finalisé mon projet, je viens vous le remettre.",151)
		end
	NODE(151)
		SAY("Ahh vraiment? Bonne nouvelle! On vient de franchir une nouvelle étape dans le projet de terraformation, vous avez fait de l'excellent travail. J'aimerais vous offrir bien plus en récompense, mais actuellement toutes nos ressources sont monopolisées par un grand nombre de projets.")

		ANSWER("Pas de problème, je saurai le contenter de peu.",152)
	NODE(152)
		SAY("Sur quel projet travailliez-vous?")

		ANSWER("Sur le champ de radioactivité...",153)
		ANSWER("Sur le reséquenceur génétique...",154)
	NODE(153)
		TAKEITEM(9303)
		if(result==0)then
			SAY("Désolé, vous n'avez pas le projet sur vous.")
			ENDDIALOG()
		else

			SAY("Dans ce cas, c'est vraiment un plaisir d'avoir un runner de talent parmi nous. Vous avez bien gagné votre prime de 100.000 crédits. Excellent travail!")
	
			ANSWER("Excellent! Et quand est-ce que je pourrai commencer un nouveau projet?",155)
		end
	NODE(154)
		TAKEITEM(9304)
		if(result==0)then
			SAY("Désolé, vous n'avez pas le projet sur vous.")
			ENDDIALOG()
		else
			
			SAY("Dans ce cas, c'est vraiment un plaisir d'avoir un runner de talent parmi nous. Vous avez bien gagné votre prime de 100.000 crédits. Excellent travail!")
	
			ANSWER("Excellent! Et quand est-ce que je pourrai commencer un nouveau projet?",155)
		end
	NODE(155)
		SAY("Ah, vous en voulez encre, hein? Mais ça n'est pas si simple. Actuellement, nous avons de grandes difficultés à trouver du travail pour les nouveaux membres. Je pense que le mieux que vous puissiez faire, ce serait de fonder notre clan et de nous aider de cette manière.")

		ANSWER("Alors je vais devoir chercher du travail par moi-même?",156)
	NODE(156)
		GIVEMONEY(100000)
		SAY("Oui, tout à fait. Mais vous aurez toujours une place ici chez les Anges Déchus. Bonne chance dans votre carrière!")
		EPICRUNFINISHED(14,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

end