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
		SAY("NExT vous propose de participer aux tests de conduite d'un de nos prototypes. Mason vous en a peut-être déjà parlé. Vous pouvez aller prendre les clés auprès du technicien Benji à la piste de course du désert, secteur G 11. Votre tâche sera de tester le comportement du véhicule dans le désert environnant.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Vous n'avez qu'à aller voir Benji, le technicien de NEXT à la piste de course du désert. Lorsque vous avez terminé, allez faire votre rapport à Mason au QG.")
		ENDDIALOG()
		


-----------------------------------------------------
--Benji NEXT

	NODE(50)
		SAY("Vous venez pour la séance de tests, c'est bien ça?")
		
		ANSWER("Oui, c'est moi. Je viens chercher les clefs du véhicule. Au fait, qu'est-ce que c'est comme genre de véhicule?",51)
	NODE(51)
		SAY("Eh bien, c'est une version modifiée du buggy standard. On a développé un nouvel alliage qu'on a utilisé comme blindage. Originellement, cet alliage provient de la recherche spatiale, et maintenant on a choisi de l'utiliser dans les véhicules. Mais pour les clefs... Vous arrivez trop tard.")
		
		ANSWER("CONTINUER",52)
	NODE(52)
		SAY("J'attendais votre passage, et d'un seul coup cette bande du Dragon Noir est apparue. Ils ont menacé de me tuer si je ne leur donnais pas les clefs. Je n'ai pas eu le choix.")
		
		ANSWER("Les clefs ont été volées, et vous gardez votre calme? C'est incroyable...",53)
	NODE(53)
		SAY("Et qu'est-ce que je devais faire? Me laisser tirer dessus pour qu'ensuite ils prennent les clefs de toute façon? Je ne pense pas. Mais attendez... J'ai entendu dire que leur chef s'appelait Max. Ca vous aidera peut-être?")
		
		ANSWER(">Un type qui traîne dans Outzone 05, il me semble.",54)
	NODE(54)
		SAY("Peut-être que vous pouvez récupérer les clefs si vous vous dépêchez. Si vous les récupérez, pas la peine de revenir ici, allez au QG. J'ai fait annuler les séances de tests. Mason sera heureux de revoir les clefs, je suppose.")
		
		ANSWER("Apparemment, il va falloir que je fasse une nouvelle offre à Max. Et le souvenir que j'ai de notre dernière rencontre ne m'enchante pas. Faites attention si vous retournez en ville, ne vous perdez pas!",55)
	NODE(55)
		SAY("Pas de soucis, je connais mon chemin.")
		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(56)
		SAY("Bonne chance. Outzone 05, j'irais là-dedans pour rien au monde...")
		ENDDIALOG()
		



-----------------------------------------------------
--Max

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Dégage, runner!")
			ENDDIALOG()
		else
			SAY("Il faut croire qu'il y a encore quelques merveilles, en ce bas monde. Regardez qui vient se faire torcher le cul!")
		
			ANSWER("Vous feriez mieux de me donner les clefs du véhicule tout de suite.",101)
		end
	NODE(101)
		SAY("Ha ha. Très amusant. Je ferais mieux de te les donner tout de suite. Elle est où, la caméra? Non mais sans déconner... Même si j'avais ces clés, je te les aurais jamais données. NExT n'en a plus pour longtemps, de toute manière. ProtoPharm va avaler NExT en une bouchée.")
		
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
		SAY("Tu pourras même pas aller au Pussy Club, je vais m'en occuper!")
		ATTACK()
		ENDDIALOG()
		

-----------------------------------------------------
--Dennis Karsten

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Passez une bonne soirée au club.")
			ENDDIALOG()
		else
			SAY("Bienvenue dans ce marais de corruptions et de plaisirs terrestres. Qu'est-ce qu'une célébrité telle que vous fabrique dans cette cage aux fauves?")
		
			ANSWER("J'irai droit au but. Vous avez des clés qui appartiennent à NExT. Donnez-les moi, et j'oublie tout le reste.",151)
		end
	NODE(151)
		SAY("Ca ne sera pas facile, runner. Même si vous avez réussi à sauver vote SysAdmin de la mort, ça ne changera rien. NEXT va devenir une branche de ProtoPharm. Et vous connaissez la meilleure? Il n'y a pas de porte de sortie. Maintenant, revenons-en à votre question : oui en effet, j'ai ces clés sur moi.")
		
		ANSWER("Qu'est-ce que c'est que ces conneries? NExT ne va jamais devenir une branche de ProtoPharm...",152)
	NODE(152)
		GIVEITEM(9106)
		SAY("Tout d'abord, voilà vos clefs. Après tout, je n'ai rien à voir avec le petit voleur de base. Mais... Je déteste NExT, tout simplement! Ils sont responsables de tout ce qui se passe de mauvais à Neocron. NExT va tomber, que vous le vouliez ou non.")
		
		ANSWER("Pas tant que je pourrai l'en empêcher.",153)
	NODE(153)
		SAY("Ca suffit! Vous n'allez rien empêcher du tout!!")
		ATTACK()
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(200)
		TAKEITEM(9104)
		if(result==0)then
			SAY("Je vais avoir une réunion importante avec nos supérieurs. Revenez plus tard.")
			ENDDIALOG()
		else
			SAY("Benji m'a déjà expliqué que vous étiez parti chasser du Dragon Noir en solitaire. Impressionnant. Je n'espérais pas vous revoir.")
		
			ANSWER("Mais ça n'est pas tout. J'ai réussi à récupérer les clefs.",201)
		end
	NODE(201)
		SAY("Vous avez eu les clefs? Alors il y a eu combat? Qui a volé cette clé, au final?")
		
		ANSWER("Un certain Dennis Karsten. Il était complètement fou.",202)
	NODE(202)
		SAY("Karsten? Je me souviens de lui. Il a travaillé pour ProtoPharm pendant des années. Il est devenu un peu secoué après un accident dont nous avons en partie été responsables. Il avait une sœur, et à en juger par tous ces mails d'insultes qu'il nous a envoyés, il l'aimait beaucoup.")
		
		ANSWER("CONTINUER",203)
	NODE(203)
		SAY("Sa soeur est morte lors d'un accident sur l'un de nos aéroglisseurs. Je pense qu'il ne nous a jamais pardonnés pour ça. Mais les gens ne lisent jamais les mentions de sécurité qui accompagnent nos produits. J'espère que vous ne vous êtes pas blessé, au fait?")
		
		ANSWER("Tout va bien. Karsten et Max du Dragon Noir ont tous les deux parlé des plans de ProtoPharm pour s'emparer de NEXT. Je n'aime pas la tournure que prennent les événements.",204)
	NODE(204)
		GIVEMONEY(50000)
		SAY("Je ne vais pas m'engager dans cette discussion maintenant. Nous savons que ProtoPharm a montré beaucoup d'activité récemment. Le nombre d'actions appartenant à des personnes loyales à NExT est en train de chuter au moment où nous parlons. Mais il n'y a pas de solution simple pour résoudre ce problème. On travaille dessus en ce moment. Au fait, vous savez que vous nous avez fait économiser 10.000 crédits en nous ramenant les clefs du véhicule de tests?")
		
		ANSWER("CONTINUER",205)
	NODE(205)
		SAY("Les techniciens sont en train de refaire les paramètres pour une seconde séance de tests. Lorsque nous aurons trouvé une solution pour résoudre le problème que nous pose ProtoPharm, nous ferons appel à vous une nouvelle fois. Vous avez fait une excellente impression à NExT, je vous l'assure.")
		
		ANSWER("Honnêtement, je ne vois pas l'évolution dans ma popularité...",206)
	NODE(206)
		SAY("Je comprends bien, mais j'ai eu une conversation avec M. Diggers récemment, et il m'a assuré qu'il avait beaucoup d'estime pour vous. Il a exprimé de l'intérêt quant à votre carrière future. Excusez-moi, mais je dois retourner travailler, il y a beaucoup à faire.")
		EPICRUNFINISHED(3,4)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	  
end