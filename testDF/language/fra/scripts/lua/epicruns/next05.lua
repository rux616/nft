--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--
--0,D,Benji
--1,D,Max
--2,D,MAson



--Startnode, Person
--0 Human Resource
--50 Benji NEXT
--100 Max
--150 Dennis Karsten
--200 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("NExT vous propose de participer aux tests de conduite d'un de nos prototypes. Mason vous en a peut-�tre d�j� parl�. Vous pouvez aller prendre les cl�s aupr�s du technicien Benji � la piste de course du d�sert, secteur G 11. Votre t�che sera de tester le comportement du v�hicule dans le d�sert environnant.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Vous n'avez qu'� aller voir Benji, le technicien de NEXT � la piste de course du d�sert. Lorsque vous avez termin�, allez faire votre rapport � Mason au QG.")
		ENDDIALOG()
		


-----------------------------------------------------
--Benji NEXT

	NODE(50)
		SAY("Vous venez pour la s�ance de tests, c'est bien �a?")
		
		ANSWER("Oui, c'est moi. Je viens chercher les clefs du v�hicule. Au fait, qu'est-ce que c'est comme genre de v�hicule?",51)
	NODE(51)
		SAY("Eh bien, c'est une version modifi�e du buggy standard. On a d�velopp� un nouvel alliage qu'on a utilis� comme blindage. Originellement, cet alliage provient de la recherche spatiale, et maintenant on a choisi de l'utiliser dans les v�hicules. Mais pour les clefs... Vous arrivez trop tard.")
		
		ANSWER("CONTINUER",52)
	NODE(52)
		SAY("J'attendais votre passage, et d'un seul coup cette bande du Dragon Noir est apparue. Ils ont menac� de me tuer si je ne leur donnais pas les clefs. Je n'ai pas eu le choix.")
		
		ANSWER("Les clefs ont �t� vol�es, et vous gardez votre calme? C'est incroyable...",53)
	NODE(53)
		SAY("Et qu'est-ce que je devais faire? Me laisser tirer dessus pour qu'ensuite ils prennent les clefs de toute fa�on? Je ne pense pas. Mais attendez... J'ai entendu dire que leur chef s'appelait Max. Ca vous aidera peut-�tre?")
		
		ANSWER(">Un type qui tra�ne dans Outzone 05, il me semble.",54)
	NODE(54)
		SAY("Peut-�tre que vous pouvez r�cup�rer les clefs si vous vous d�p�chez. Si vous les r�cup�rez, pas la peine de revenir ici, allez au QG. J'ai fait annuler les s�ances de tests. Mason sera heureux de revoir les clefs, je suppose.")
		
		ANSWER("Apparemment, il va falloir que je fasse une nouvelle offre � Max. Et le souvenir que j'ai de notre derni�re rencontre ne m'enchante pas. Faites attention si vous retournez en ville, ne vous perdez pas!",55)
	NODE(55)
		SAY("Pas de soucis, je connais mon chemin.")
		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(56)
		SAY("Bonne chance. Outzone 05, j'irais l�-dedans pour rien au monde...")
		ENDDIALOG()
		



-----------------------------------------------------
--Max

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("D�gage, runner!")
			ENDDIALOG()
		else
			SAY("Il faut croire qu'il y a encore quelques merveilles, en ce bas monde. Regardez qui vient se faire torcher le cul!")
		
			ANSWER("Vous feriez mieux de me donner les clefs du v�hicule tout de suite.",101)
		end
	NODE(101)
		SAY("Ha ha. Tr�s amusant. Je ferais mieux de te les donner tout de suite. Elle est o�, la cam�ra? Non mais sans d�conner... M�me si j'avais ces cl�s, je te les aurais jamais donn�es. NExT n'en a plus pour longtemps, de toute mani�re. ProtoPharm va avaler NExT en une bouch�e.")
		
		ANSWER("CONTINUER",102)
	NODE(102)
		SAY("Il ne restera rien de NExT, fais-moi confiance. Et pour les clefs... Elles sont entre les mains de l'honorable M. Karsten. Tu le trouveras au Pussy Club, si tu as le courage d'y aller.")
		
		ANSWER("Vous cherchez encore la bagarre??!!",103)
	NODE(103)
		SAY("Ben ouais! Allez, viens te battre!!")
		ATTACK()
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("Tu pourras m�me pas aller au Pussy Club, je vais m'en occuper!")
		ATTACK()
		ENDDIALOG()
		

-----------------------------------------------------
--Dennis Karsten

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Passez une bonne soir�e au club.")
			ENDDIALOG()
		else
			SAY("Bienvenue dans ce marais de corruptions et de plaisirs terrestres. Qu'est-ce qu'une c�l�brit� telle que vous fabrique dans cette cage aux fauves?")
		
			ANSWER("J'irai droit au but. Vous avez des cl�s qui appartiennent � NExT. Donnez-les moi, et j'oublie tout le reste.",151)
		end
	NODE(151)
		SAY("Ca ne sera pas facile, runner. M�me si vous avez r�ussi � sauver vote SysAdmin de la mort, �a ne changera rien. NEXT va devenir une branche de ProtoPharm. Et vous connaissez la meilleure? Il n'y a pas de porte de sortie. Maintenant, revenons-en � votre question : oui en effet, j'ai ces cl�s sur moi.")
		
		ANSWER("Qu'est-ce que c'est que ces conneries? NExT ne va jamais devenir une branche de ProtoPharm...",152)
	NODE(152)
		GIVEITEM(9106)
		SAY("Tout d'abord, voil� vos clefs. Apr�s tout, je n'ai rien � voir avec le petit voleur de base. Mais... Je d�teste NExT, tout simplement! Ils sont responsables de tout ce qui se passe de mauvais � Neocron. NExT va tomber, que vous le vouliez ou non.")
		
		ANSWER("Pas tant que je pourrai l'en emp�cher.",153)
	NODE(153)
		SAY("Ca suffit! Vous n'allez rien emp�cher du tout!!")
		ATTACK()
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(200)
		TAKEITEM(9104)
		if(result==0)then
			SAY("Je vais avoir une r�union importante avec nos sup�rieurs. Revenez plus tard.")
			ENDDIALOG()
		else
			SAY("Benji m'a d�j� expliqu� que vous �tiez parti chasser du Dragon Noir en solitaire. Impressionnant. Je n'esp�rais pas vous revoir.")
		
			ANSWER("Mais �a n'est pas tout. J'ai r�ussi � r�cup�rer les clefs.",201)
		end
	NODE(201)
		SAY("Vous avez eu les clefs? Alors il y a eu combat? Qui a vol� cette cl�, au final?")
		
		ANSWER("Un certain Dennis Karsten. Il �tait compl�tement fou.",202)
	NODE(202)
		SAY("Karsten? Je me souviens de lui. Il a travaill� pour ProtoPharm pendant des ann�es. Il est devenu un peu secou� apr�s un accident dont nous avons en partie �t� responsables. Il avait une s�ur, et � en juger par tous ces mails d'insultes qu'il nous a envoy�s, il l'aimait beaucoup.")
		
		ANSWER("CONTINUER",203)
	NODE(203)
		SAY("Sa soeur est morte lors d'un accident sur l'un de nos a�roglisseurs. Je pense qu'il ne nous a jamais pardonn�s pour �a. Mais les gens ne lisent jamais les mentions de s�curit� qui accompagnent nos produits. J'esp�re que vous ne vous �tes pas bless�, au fait?")
		
		ANSWER("Tout va bien. Karsten et Max du Dragon Noir ont tous les deux parl� des plans de ProtoPharm pour s'emparer de NEXT. Je n'aime pas la tournure que prennent les �v�nements.",204)
	NODE(204)
		GIVEMONEY(50000)
		SAY("Je ne vais pas m'engager dans cette discussion maintenant. Nous savons que ProtoPharm a montr� beaucoup d'activit� r�cemment. Le nombre d'actions appartenant � des personnes loyales � NExT est en train de chuter au moment o� nous parlons. Mais il n'y a pas de solution simple pour r�soudre ce probl�me. On travaille dessus en ce moment. Au fait, vous savez que vous nous avez fait �conomiser 10.000 cr�dits en nous ramenant les clefs du v�hicule de tests?")
		
		ANSWER("CONTINUER",205)
	NODE(205)
		SAY("Les techniciens sont en train de refaire les param�tres pour une seconde s�ance de tests. Lorsque nous aurons trouv� une solution pour r�soudre le probl�me que nous pose ProtoPharm, nous ferons appel � vous une nouvelle fois. Vous avez fait une excellente impression � NExT, je vous l'assure.")
		
		ANSWER("Honn�tement, je ne vois pas l'�volution dans ma popularit�...",206)
	NODE(206)
		SAY("Je comprends bien, mais j'ai eu une conversation avec M. Diggers r�cemment, et il m'a assur� qu'il avait beaucoup d'estime pour vous. Il a exprim� de l'int�r�t quant � votre carri�re future. Excusez-moi, mais je dois retourner travailler, il y a beaucoup � faire.")
		EPICRUNFINISHED(3,4)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	  
end