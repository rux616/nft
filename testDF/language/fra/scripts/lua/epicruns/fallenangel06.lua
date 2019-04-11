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
--Feldd�mpfer Blueprint
--GenResequencer Blueprint
--Feldd�mpfer 9303
--GenResequencer 9304

function DIALOG()
--------------------------------------------------------------------
-- Personal Director
--0
	
	NODE(0)
		SAY("Vous devriez parler � Constantine. La derni�re �tape de votre projet est en cours. C'est vous qui vous occupez de diriger les recherches, non?")

		ANSWER("J'aimerais bien, mais Constantine fait la plus grosse partie du travail, je n'ai presque plus rien � faire.",1)
	NODE(1)
		SAY("Pour une fois dans ma vie, je crois que j'envie presque votre boulot. Peut-�tre appr�cierez-vous de savoir que le Conseil a des chances de vous accorder une prime si vous menez le projet � terme.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(2)
		SAY("Vous devriez parler avec Constantine au sujet de la derni�re �tape de votre projet de recherches.")
		ENDDIALOG()
--------------------------------------------------------------------
--Constantine
--50
	NODE(50)
		SAY("J'esp�re que vous �tes pr�t, parce que vous va d�pendre de vous � pr�sent. Il nous manque des �l�ments, mais j'ai essay� d'en rassembler un maximum.")

		ANSWER("Ca devrait suffire pour terminer le projet.",51)
	NODE(51)
		SAY("j'aimerais bien, mais j'ai une mauvaise nouvelle pour vous. Vous allez devoir obtenir certains �l�ments de Grimm en personne.")

		ANSWER("Je devrais pouvoir survivre au face-�-face.",52)
	NODE(52)
		GIVEITEM(250)
		GIVEITEM(251)
		SAY("Quand je pense que r�cemment encore il voulait vous �liminer... Mais oublions �a. Pour ces �l�ments, vous devrez recycler certains mat�riaux afin de construire le produit final, selon le projet que vous avez choisi. Vous pourrez obtenir ce plan avec l'aide de Grimm. Je peux vous donner du Solantium et du Meritium, mais il vous faudra �galement trois cartouches d'Arilium. Lorsque vous aurez tout, vous pourrez aller voir le directeur des op�rations, et lui remettre le projet.")
		SETNEXTDIALOGSTATE(53)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
--Giveitem Solantium 250 Meritium 251


	NODE(53)
		SAY("Vous avez parl� � Grimm? Si vous avez tout ce qu'il faut, remettez-le au directeur du personnel, il vous attend.")

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
			SAY("Ah, merveilleux, la derni�re personne � qui j'ai envie de parler, justement! Vous savez que vous avez d�truit ma carri�re?!")

			ANSWER("C'est enti�rement de votre faute, vous n'auriez pas d� chercher � me trahir en premier lieu.",101)
		end
	NODE(101)
		SAY("Mais tout est si simple, pour vous! C'est pas juste! J'ai d� travailler dur, tout en bas de l'�chelle, et vous d�barquez, et vous raflez toute la mise! Et maintenant, on me force � coop�rer avec vous, c'est vraiment le bouquet...")

		ANSWER("Alors abr�geons �a, parce que je n'ai pas envie de vous parler non plus.",102)
	NODE(102)
		SAY("On m'a dit que j'allais devoir vous aider, mais je ne bougerai pas le petit doigt tant que vous n'aurez pas fait votre part du boulot. Vous feriez mieux de vous y mettre tout de suite.")

		ANSWER("Attendez une seconde. Qu'est-ce qu'il me faut exactement pour ces plans?",103)
	NODE(103)
		SAY("Tsk, tsk. Ne me dites pas que je dois vous faire une le�on, quand m�me! Vous avez quelque chose dans le cr�ne? Et puis d'abord, sur quel projet est-ce que vous travailliez?")

		ANSWER("Sur le champ de protection.",104)
		ANSWER("Sur le res�quenceur g�n�tique.",105)
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
			SAY("Je vous avais pas demand� un plan de Heavy Deflector Blueprint et un de Vehicle Energy Pak?")
			ENDDIALOG()
		else
			TAKESPECIALITEMCNT( 1507, 1, 1549, 1)
			if(result==0)then
				SAY("Je vous avais pas demand� un plan de Heavy Deflector Blueprint et un de Vehicle Energy Pak?")
				ENDDIALOG()		
			else
				SAY("C'est pas trop t�t! Mais je pensais bien que vous alliez tra�ner. Donnez-moi �a.")

				ANSWER("Tenez, mais vous avez int�r�t � faire �a s�rieusement.",107)
			end
		end
	NODE(107)
		SAY("J'aimerais bien vous apprendre une le�on, mais peu importe, je vais faire mon boulot, comme toujours. Revenez dans quelques minutes.")
		SETNEXTDIALOGSTATE(108)
		ENDDIALOG()

--Spieler bekommt Blueprint f�r den Feldd�mpfer
	NODE(108)
		GIVESPECIALITEM(1507,1,9303)
		SAY("Avec ce plan, vous allez pouvoir terminer votre projet. Vous savez quoi? J'arrive pas � me rendre vraiment compte que je suis en train de vous aider...")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
	NODE(109)
		SAY("Je vous ai d�j� donn� plus que ce que je devrais, alors tirez-vous!")
		ENDDIALOG()
		
	NODE(110)
	TAKESPECIALITEMCNT( 1507, 1, 2237, 1)
		if(result==0)then
			SAY("Je ne vous avez pas demand� un plan de BioTech Construction Chip Blueprint et un de Vehicle Energy Pak??")
			ENDDIALOG()
		else
			TAKESPECIALITEMCNT( 1507, 1, 1549, 1)
			if(result==0)then
				SAY("Je ne vous avez pas demand� un plan de BioTech Construction Chip Blueprint et un de Vehicle Energy Pak??")
				ENDDIALOG()		
			else
				SAY("C'est pas trop t�t! Mais je pensais bien que vous alliez tra�ner. Donnez-moi �a.")

				ANSWER("Tenez, � vous de jouer, maintenant.",111)
			end
		end
	NODE(111)
		SAY("J'aimerais bien vous apprendre une le�on, mais peu importe, je vais faire mon boulot, comme toujours. Revenez dans quelques minutes.")
		SETNEXTDIALOGSTATE(112)
		ENDDIALOG()
	NODE(112)
		GIVESPECIALITEM(1507,1,9304)
		SAY("Avec ce plan, vous allez pouvoir terminer votre projet. Vous savez quoi? J'arrive pas � me rendre vraiment compte que je suis en train de vous aider...")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
--------------------------------------------------------------------
-- Personal Director
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous devriez parler � Constantine � propos de la finalisation de votre projet.")
			ENDDIALOG()
		else
			SAY("Qu'est-ce que je peux faire pour vous?")

			ANSWER("J'ai finalis� mon projet, je viens vous le remettre.",151)
		end
	NODE(151)
		SAY("Ahh vraiment? Bonne nouvelle! On vient de franchir une nouvelle �tape dans le projet de terraformation, vous avez fait de l'excellent travail. J'aimerais vous offrir bien plus en r�compense, mais actuellement toutes nos ressources sont monopolis�es par un grand nombre de projets.")

		ANSWER("Pas de probl�me, je saurai le contenter de peu.",152)
	NODE(152)
		SAY("Sur quel projet travailliez-vous?")

		ANSWER("Sur le champ de radioactivit�...",153)
		ANSWER("Sur le res�quenceur g�n�tique...",154)
	NODE(153)
		TAKEITEM(9303)
		if(result==0)then
			SAY("D�sol�, vous n'avez pas le projet sur vous.")
			ENDDIALOG()
		else

			SAY("Dans ce cas, c'est vraiment un plaisir d'avoir un runner de talent parmi nous. Vous avez bien gagn� votre prime de 100.000 cr�dits. Excellent travail!")
	
			ANSWER("Excellent! Et quand est-ce que je pourrai commencer un nouveau projet?",155)
		end
	NODE(154)
		TAKEITEM(9304)
		if(result==0)then
			SAY("D�sol�, vous n'avez pas le projet sur vous.")
			ENDDIALOG()
		else
			
			SAY("Dans ce cas, c'est vraiment un plaisir d'avoir un runner de talent parmi nous. Vous avez bien gagn� votre prime de 100.000 cr�dits. Excellent travail!")
	
			ANSWER("Excellent! Et quand est-ce que je pourrai commencer un nouveau projet?",155)
		end
	NODE(155)
		SAY("Ah, vous en voulez encre, hein? Mais �a n'est pas si simple. Actuellement, nous avons de grandes difficult�s � trouver du travail pour les nouveaux membres. Je pense que le mieux que vous puissiez faire, ce serait de fonder notre clan et de nous aider de cette mani�re.")

		ANSWER("Alors je vais devoir chercher du travail par moi-m�me?",156)
	NODE(156)
		GIVEMONEY(100000)
		SAY("Oui, tout � fait. Mais vous aurez toujours une place ici chez les Anges D�chus. Bonne chance dans votre carri�re!")
		EPICRUNFINISHED(14,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

end