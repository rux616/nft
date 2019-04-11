--new
--ProtoPharm

--
--Trigger
--Triggernumber,Type,Person
--0,D,GEORGE 50
--1,D,ELIAS 150
--2,D,MICHAIL 250
--3
--
--Startnode, Person
--0, Human Resource Director
--50, GEORGE
--100, PAT
--150, ELIAS
--200, GEORGE
--250, MICHAIL
--300, GEORGE
--Items
--6 Snow White 818

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Qu'est-ce que je peux faire pour vous?")

		ANSWER("George a laiss� un message pour moi?",1)
	NODE(1)
		SAY("Je regarde... Oui, il dit qu'il a d�crypt� les donn�es, et il vous attend � l'emplacement habituel.")
		SETNEXTDIALOGSTATE(2)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(2)
		SAY("George vous attend � l'emplacement habituel.")
		ENDDIALOG()

--------------------------------------------------------------------
--GEORGE
--50
	NODE(50)
		SAY("J'ai quelque chose d'important � vous dire. Nous ne devons pas prendre de retard. Les donn�es que j'ai d�cod�es indiquent une unit� de production secr�te de ProtoPharm dans le village Tawkeen.")

		ANSWER("C'est un centre ProtoPharm?",51)
	NODE(51)
		SAY("Nos donn�es pr�cisent que ce n'est pas le cas. Mais les gens qui y travaillent sont bien de ProtoPharm, il n'y a aucun doute l�-dessus. Maintenant, si je vous dis qu'ils ne travaillent pas l� sous les ordres de ProtoPharm, devinez ce qu'ils peuvent bien mijoter.")

		ANSWER("Est-ce que �a peut avoir un rapport avec la Spirula?",52)
	NODE(52)
		SAY("Tout juste. On pense qu'ils se pr�parent � diffuser de grandes quantit�s de Spirula sur le march�. Ce serait une catastrophe, et ProtoPharm en serait responsable. Vous allez devoir vous rendre sur place pour �claircir la situation. La derni�re fois, vous avez prouv� que vous faisiez du bon travail. Je compte sur vous. Mais faites attention, les Terres Br�l�es ne sont pas s�res.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	

--------------------------------------------------------------------
--PAT
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("C'est tr�s dangereux de s'aventurer dans les Terres Br�l�es. Faites attention � vous.")
			ENDDIALOG()
		else
			SAY("Qu'est-ce que vous venez faire ici? Vous ne trouverez rien qui puisse vous int�resser. Partez imm�diatement.")

			ANSWER("J'esp�re que je ne vous d�range pas en plein travail... Je cherche un laboratoire de ProtoPharm qui devrait se trouver dans les environs.",101)
		end
	NODE(101)
		SAY("ProtoPharm? Ouaip, �a fourmille en ce moment. Y a plein de trucs qui circulent, j'ai m�me vu deux tanks. Mais vous �tes en retard, ils ont tous pli� bagages hier.")

		ANSWER("Zut! Et ils ont dit o� ils allaient?",102)
	NODE(102)
		SAY("H�, ho, du calme. Non, j'en sais rien du tout. J'ai pas vu Finster d'assez pr�s pour pouvoir apprendre quelque chose.")

		ANSWER("Finster? Finster �tant dans le campement? Vous l'avez vu?",103)
	NODE(103)
		SAY("Aussi s�r que je vous vois. Il �tait toujours dans le coin. Je pense pas l'avoir vu dormir une seule fois. Il �tait toujours partout � la fois. Plein de monde venait le voir.")

		ANSWER("Ah oui? Quel genre de monde?",104)
	NODE(104)
		SAY("Je pourrais pas vraiment dire. Mais je vois que vous voulez savoir, alors je pense que je vais vous expliquer des trucs. Mais faudra m'aider en retour.")

		ANSWER("On peut toujours en parler, si �a n'est pas excessif.",105)
	NODE(105)
		SAY("Des cr�dits, runner. C'est �a qui fait tourner le monde. Pour 1000 cr�dits, je d�balle tout.")

		ANSWER("C'est beaucoup trop pour une simple r�ponse.",106)
	NODE(106)
		SAY("Ben sinon, vous pourriez m'apporter de la Snow White. Disons six. A vous de choisir.")
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()
		
--SPIELER BEZAHLT
	NODE(107)
		SAY("Alors, vous avez choisi? Le fric, ou bien � boire?")

		ANSWER("Tenez, j'en ai six sur moi. March� conclu?",108)
		ANSWER("Voil� l'argent.",109)
	NODE(108)
		TAKEITEMCNT(818,6)
		if(result==0)then
			SAY("D'abord vous me dites que vous avez un truc pour moi, et puis en fait vous avez rien!")
			ENDDIALOG()
		else
			SAY("Un march� est un march�. Finster a beaucoup parl� avec les Anges D�chus. Je sais pas de quoi, j'ai rien compris, mais j'ai reconnu l'un des leurs, Elias. Il tra�ne souvent pr�s d'une des entr�es de Tech Haven. C'est un timide, mais quelqu'un de bien. Mais je peux rien vous apprendre de plus.")
			SETNEXTDIALOGSTATE(110)
			ENDDIALOG()
			
		end
	NODE(109)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Vous n'avez pas assez d'argent. La prochaine fois, pensez � vous faire un peu de sous avant de me parler.")
			ENDDIALOG()
		else
			SAY("Un march� est un march�. Finster a beaucoup parl� avec les Anges D�chus. Je sais pas de quoi, j'ai rien compris, mais j'ai reconnu l'un des leurs, Elias. Il tra�ne souvent pr�s d'une des entr�es de Tech Haven. C'est un timide, mais quelqu'un de bien. Mais je peux rien vous apprendre de plus.")
			SETNEXTDIALOGSTATE(110)
			ENDDIALOG()
		end
	NODE(110)
		SAY("D�sol�, mais je sais rien d'autre. Elias vit � Tech Haven, il doit tra�ner � l'une des entr�es.")
		ENDDIALOG()

--------------------------------------------------------------------
--ELIAS
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("D�sol�, je ne parle pas � n'importe qui.")
			ENDDIALOG()
		else
			SAY("Vous �tes sur le territoire des Anges D�chus. Qu'est-ce que je peux faire pour vous?")

			ANSWER("J'ai quelques questions. C'est au sujet des plans de Jakob Finster.",151)
		end
	NODE(151)
		SAY("Ce qu'il peut faire avec les Anges D�chus, �a ne regarde que lui et les Anges D�chus, vous ne pensez pas?")

		ANSWER("Etant donn� que Finster nous a donn� un ultimatum, c'est aussi mon probl�me et celui de ProtoPharm.",152)
	NODE(152)
		SAY("Tr�s bien, mais je ne vais pas tout vous expliquer. Oui, nous avons un accord avec Finster. Nous l'avons rencontr� dans son campement. C'est un homme froid et calculateur, et il sait ce qu'il veut. Il nous a propos� des informations permettant de gu�rir les mutants. Comment dire non � une telle proposition? Une telle offre lui aurait donn� bien plus que l'utilisation de nos laboratoires. C'�tait d'ailleurs ce qu'il voulait.")

		ANSWER("Mais ses intentions? Pourquoi a-t-il besoin de vos labos?",153)
	NODE(153)
		SAY("Finster savait que ProtoPharm �tait apr�s lui. Il nous en parlait souvent. C'est �trange, mais tous les autres gens du groupe �taient de ProtoPharm. Il nous a aussi demand� une copie des disques de C�r�s, mais nous n'avions pas de copie de ces �l�ments. Je pense qu'il est dans l'une de ses cachettes � l'heure qu'il est. Ca fait des jours qu'on n'a pas eu de nouvelles.")

		ANSWER("Il travaille visiblement sur quelque chose. Mais quoi?",154)
	NODE(154)
		SAY("Nous sommes pas des espions, runner. Nous sommes des scientifiques, et si quelqu'un d�sire nous cacher des �l�ments, nous avons des choses plus importantes � faire que perdre notre temps � l'espionner. Bonne journ�e.")
		SETNEXTDIALOGSTATE(155)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(155)
		SAY("Je n'ai pas toute la journ�e pour vous parler.")
		
		ENDDIALOG()


--------------------------------------------------------------------
--GEORGE
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous �tes all� dans le village Tawkeen? Allez-y, il nous faut des informations sur leur unit� de production.")
			ENDDIALOG()
		else
			SAY("Certains consid�rent Finster comme un Messie venu leur montrer un avenir radieux. Mais Finster est congel�, et il va le rester. Quelles informations avez-vous sur le campement?")

			ANSWER("Malheureusement, je suis venu trop tard. Mais j'ai pu d�terminer deux choses : Finster �tait l�, et il dirigeait les op�rations, et il a trait� avec les Anges D�chus �galement.",201)
		end
	NODE(201)
		SAY("Finster �tait l�? C'est impossible! Finster est dans un de nos CryoVaults de la section 13. S'il �tait l�, alors il a un sosie.")

		ANSWER("On m'a dit �galement qu'il cherchait les disques de C�r�s.",202)
	NODE(202)
		GIVEITEM(9406)
-- VOLLMACHT
		SAY("Il faut agir. Allez demander lez documents du CryoVault � Michail, en vitesse. J'ai d�j� fait valider votre autorisation.")
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
--------------------------------------------------------------------
--MICHAIL
--250	
	NODE(250)
		TAKEITEM(9406)
		if(result==0)then
			SAY("Je n'ai pas le temps.")
			ENDDIALOG()
		else
			SAY("Quoi encore? Je ne peux vraiment pas travailler dans ces conditions, moi.")
	
			ANSWER("J'ai l'autorisation d'acc�der au dossier Jakob Finster.",251)
		end
	NODE(251)
		SAY("Quoi? Ah, ok. Mais �coutez plut�t �a...")
	
		ANSWER("Oui?",252)
	NODE(252)
		SAY("Je travaille pour aider l'humanit� enti�re. Je n'ai que �a en t�te. Un jour, les mutants appartiendront au pass�, de m�me que les monstres et les robots des Terres Br�l�es. Je veux cr�er des m�dicaments qui font vraiment de l'effet.")
	
		ANSWER("Pourquoi est-ce que vous me parlez de �a??",253)
	NODE(253)
		GIVEITEM(9407)
--SEKTION 13 DOLUMENTE
		SAY("J'esp�re que vous me comprendrez. Que vous vous en souviendrez le moment venu. Tenez, voici les documents que vous vouliez.")
		SETNEXTDIALOGSTATE(254)
		ENDDIALOG()
	NODE(254)
		SAY("Vous avez d�j� vos documents. Qu'est-ce que vous voulez encore?")
		ENDDIALOG()
--------------------------------------------------------------------
--George
--300

	NODE(300)
		TAKEITEM(9407)
		if(result==0)then
			SAY("Il me faut les documents du CryoVault. Allez voir Michail, section 13.")
		else
			SAY("Merci, bon travail.")
		
			ANSWER("C'�tait presque trop facile.",301)
		end
	NODE(301)
		GIVEMONEY(20000)
		SAY("Attendez... Finster n'est pas sur la liste. Quelque chose ne va pas. Je pensais qu'on avait donn� des ordres tr�s clairs de ne pas le d�placer. Je vais devoir demander des autorisations d'acc�s plus �lev�es pour continuer l'enqu�te. En attendant, voici votre r�compense.")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(6,2)
		ENDDIALOG()

end