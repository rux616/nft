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

		ANSWER("George a laissé un message pour moi?",1)
	NODE(1)
		SAY("Je regarde... Oui, il dit qu'il a décrypté les données, et il vous attend à l'emplacement habituel.")
		SETNEXTDIALOGSTATE(2)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(2)
		SAY("George vous attend à l'emplacement habituel.")
		ENDDIALOG()

--------------------------------------------------------------------
--GEORGE
--50
	NODE(50)
		SAY("J'ai quelque chose d'important à vous dire. Nous ne devons pas prendre de retard. Les données que j'ai décodées indiquent une unité de production secrète de ProtoPharm dans le village Tawkeen.")

		ANSWER("C'est un centre ProtoPharm?",51)
	NODE(51)
		SAY("Nos données précisent que ce n'est pas le cas. Mais les gens qui y travaillent sont bien de ProtoPharm, il n'y a aucun doute là-dessus. Maintenant, si je vous dis qu'ils ne travaillent pas là sous les ordres de ProtoPharm, devinez ce qu'ils peuvent bien mijoter.")

		ANSWER("Est-ce que ça peut avoir un rapport avec la Spirula?",52)
	NODE(52)
		SAY("Tout juste. On pense qu'ils se préparent à diffuser de grandes quantités de Spirula sur le marché. Ce serait une catastrophe, et ProtoPharm en serait responsable. Vous allez devoir vous rendre sur place pour éclaircir la situation. La dernière fois, vous avez prouvé que vous faisiez du bon travail. Je compte sur vous. Mais faites attention, les Terres Brûlées ne sont pas sûres.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	

--------------------------------------------------------------------
--PAT
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("C'est très dangereux de s'aventurer dans les Terres Brûlées. Faites attention à vous.")
			ENDDIALOG()
		else
			SAY("Qu'est-ce que vous venez faire ici? Vous ne trouverez rien qui puisse vous intéresser. Partez immédiatement.")

			ANSWER("J'espère que je ne vous dérange pas en plein travail... Je cherche un laboratoire de ProtoPharm qui devrait se trouver dans les environs.",101)
		end
	NODE(101)
		SAY("ProtoPharm? Ouaip, ça fourmille en ce moment. Y a plein de trucs qui circulent, j'ai même vu deux tanks. Mais vous êtes en retard, ils ont tous plié bagages hier.")

		ANSWER("Zut! Et ils ont dit où ils allaient?",102)
	NODE(102)
		SAY("Hé, ho, du calme. Non, j'en sais rien du tout. J'ai pas vu Finster d'assez près pour pouvoir apprendre quelque chose.")

		ANSWER("Finster? Finster étant dans le campement? Vous l'avez vu?",103)
	NODE(103)
		SAY("Aussi sûr que je vous vois. Il était toujours dans le coin. Je pense pas l'avoir vu dormir une seule fois. Il était toujours partout à la fois. Plein de monde venait le voir.")

		ANSWER("Ah oui? Quel genre de monde?",104)
	NODE(104)
		SAY("Je pourrais pas vraiment dire. Mais je vois que vous voulez savoir, alors je pense que je vais vous expliquer des trucs. Mais faudra m'aider en retour.")

		ANSWER("On peut toujours en parler, si ça n'est pas excessif.",105)
	NODE(105)
		SAY("Des crédits, runner. C'est ça qui fait tourner le monde. Pour 1000 crédits, je déballe tout.")

		ANSWER("C'est beaucoup trop pour une simple réponse.",106)
	NODE(106)
		SAY("Ben sinon, vous pourriez m'apporter de la Snow White. Disons six. A vous de choisir.")
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()
		
--SPIELER BEZAHLT
	NODE(107)
		SAY("Alors, vous avez choisi? Le fric, ou bien à boire?")

		ANSWER("Tenez, j'en ai six sur moi. Marché conclu?",108)
		ANSWER("Voilà l'argent.",109)
	NODE(108)
		TAKEITEMCNT(818,6)
		if(result==0)then
			SAY("D'abord vous me dites que vous avez un truc pour moi, et puis en fait vous avez rien!")
			ENDDIALOG()
		else
			SAY("Un marché est un marché. Finster a beaucoup parlé avec les Anges Déchus. Je sais pas de quoi, j'ai rien compris, mais j'ai reconnu l'un des leurs, Elias. Il traîne souvent près d'une des entrées de Tech Haven. C'est un timide, mais quelqu'un de bien. Mais je peux rien vous apprendre de plus.")
			SETNEXTDIALOGSTATE(110)
			ENDDIALOG()
			
		end
	NODE(109)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Vous n'avez pas assez d'argent. La prochaine fois, pensez à vous faire un peu de sous avant de me parler.")
			ENDDIALOG()
		else
			SAY("Un marché est un marché. Finster a beaucoup parlé avec les Anges Déchus. Je sais pas de quoi, j'ai rien compris, mais j'ai reconnu l'un des leurs, Elias. Il traîne souvent près d'une des entrées de Tech Haven. C'est un timide, mais quelqu'un de bien. Mais je peux rien vous apprendre de plus.")
			SETNEXTDIALOGSTATE(110)
			ENDDIALOG()
		end
	NODE(110)
		SAY("Désolé, mais je sais rien d'autre. Elias vit à Tech Haven, il doit traîner à l'une des entrées.")
		ENDDIALOG()

--------------------------------------------------------------------
--ELIAS
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Désolé, je ne parle pas à n'importe qui.")
			ENDDIALOG()
		else
			SAY("Vous êtes sur le territoire des Anges Déchus. Qu'est-ce que je peux faire pour vous?")

			ANSWER("J'ai quelques questions. C'est au sujet des plans de Jakob Finster.",151)
		end
	NODE(151)
		SAY("Ce qu'il peut faire avec les Anges Déchus, ça ne regarde que lui et les Anges Déchus, vous ne pensez pas?")

		ANSWER("Etant donné que Finster nous a donné un ultimatum, c'est aussi mon problème et celui de ProtoPharm.",152)
	NODE(152)
		SAY("Très bien, mais je ne vais pas tout vous expliquer. Oui, nous avons un accord avec Finster. Nous l'avons rencontré dans son campement. C'est un homme froid et calculateur, et il sait ce qu'il veut. Il nous a proposé des informations permettant de guérir les mutants. Comment dire non à une telle proposition? Une telle offre lui aurait donné bien plus que l'utilisation de nos laboratoires. C'était d'ailleurs ce qu'il voulait.")

		ANSWER("Mais ses intentions? Pourquoi a-t-il besoin de vos labos?",153)
	NODE(153)
		SAY("Finster savait que ProtoPharm était après lui. Il nous en parlait souvent. C'est étrange, mais tous les autres gens du groupe étaient de ProtoPharm. Il nous a aussi demandé une copie des disques de Cérès, mais nous n'avions pas de copie de ces éléments. Je pense qu'il est dans l'une de ses cachettes à l'heure qu'il est. Ca fait des jours qu'on n'a pas eu de nouvelles.")

		ANSWER("Il travaille visiblement sur quelque chose. Mais quoi?",154)
	NODE(154)
		SAY("Nous sommes pas des espions, runner. Nous sommes des scientifiques, et si quelqu'un désire nous cacher des éléments, nous avons des choses plus importantes à faire que perdre notre temps à l'espionner. Bonne journée.")
		SETNEXTDIALOGSTATE(155)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(155)
		SAY("Je n'ai pas toute la journée pour vous parler.")
		
		ENDDIALOG()


--------------------------------------------------------------------
--GEORGE
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous êtes allé dans le village Tawkeen? Allez-y, il nous faut des informations sur leur unité de production.")
			ENDDIALOG()
		else
			SAY("Certains considèrent Finster comme un Messie venu leur montrer un avenir radieux. Mais Finster est congelé, et il va le rester. Quelles informations avez-vous sur le campement?")

			ANSWER("Malheureusement, je suis venu trop tard. Mais j'ai pu déterminer deux choses : Finster était là, et il dirigeait les opérations, et il a traité avec les Anges Déchus également.",201)
		end
	NODE(201)
		SAY("Finster était là? C'est impossible! Finster est dans un de nos CryoVaults de la section 13. S'il était là, alors il a un sosie.")

		ANSWER("On m'a dit également qu'il cherchait les disques de Cérès.",202)
	NODE(202)
		GIVEITEM(9406)
-- VOLLMACHT
		SAY("Il faut agir. Allez demander lez documents du CryoVault à Michail, en vitesse. J'ai déjà fait valider votre autorisation.")
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
	
			ANSWER("J'ai l'autorisation d'accéder au dossier Jakob Finster.",251)
		end
	NODE(251)
		SAY("Quoi? Ah, ok. Mais écoutez plutôt ça...")
	
		ANSWER("Oui?",252)
	NODE(252)
		SAY("Je travaille pour aider l'humanité entière. Je n'ai que ça en tête. Un jour, les mutants appartiendront au passé, de même que les monstres et les robots des Terres Brûlées. Je veux créer des médicaments qui font vraiment de l'effet.")
	
		ANSWER("Pourquoi est-ce que vous me parlez de ça??",253)
	NODE(253)
		GIVEITEM(9407)
--SEKTION 13 DOLUMENTE
		SAY("J'espère que vous me comprendrez. Que vous vous en souviendrez le moment venu. Tenez, voici les documents que vous vouliez.")
		SETNEXTDIALOGSTATE(254)
		ENDDIALOG()
	NODE(254)
		SAY("Vous avez déjà vos documents. Qu'est-ce que vous voulez encore?")
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
		
			ANSWER("C'était presque trop facile.",301)
		end
	NODE(301)
		GIVEMONEY(20000)
		SAY("Attendez... Finster n'est pas sur la liste. Quelque chose ne va pas. Je pensais qu'on avait donné des ordres très clairs de ne pas le déplacer. Je vais devoir demander des autorisations d'accès plus élevées pour continuer l'enquête. En attendant, voici votre récompense.")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(6,2)
		ENDDIALOG()

end