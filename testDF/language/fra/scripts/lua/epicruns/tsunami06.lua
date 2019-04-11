--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--0,D,Foster
--1 Spieler killt taylor
--2,D,Recruiter
--200

--Startnode, Person
--0 Human Resource
--50 Foster
--100 Taylor
--150 Recruiter
--200
--250

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("On a encore quelques problèmes a résoudre. Va te reposer un peu en attendant.")
		
		ANSWER("Alors je vais aller voir Foster et tirer cette affaire au clair. Quand on veut que quelque chose soit fait, mieux vaut le faire soi-même.",1)
	NODE(1)
		SAY("Belles paroles. Mais si tu pouvais résoudre la situation, Tsunami apprécierait.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		

-----------------------------------------------------
--Foster

	NODE(50)
		GIVEITEM(3185)
		GIVEITEM(3185)
		GIVEITEM(3185)
		SAY("J'ai mis pas mal de temps a concevoir l'arme que je t'ai donnée la dernière fois pour t'occuper de Taylor. Tiens, prends quelques munitions, ça va te servir... Bonne chance a toi.")
		SETNEXTDIALOGSTATE(51)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(51)
		SAY("J'espère que l'arme te convient?")
		ENDDIALOG()
		
		

-----------------------------------------------------
--Taylor

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Tu oses venir ici? Décampe, ou bien je te fais abattre.")
			ENDDIALOG()
		else
			SAY("Toi ici? Sale traître!")
		
			ANSWER("Pas la peine d'essayer de maquiller la vérité. C'est toi le traître, et j'ai toutes les preuves de ce que j'avance dans ce datacube.",101)
		end
	NODE(101)
		SAY("Quoi? Laisse-moi voir ça. D'ou est-ce que ça vient? Désolé si tu y crois, mais je vais briser tes rêves : c'est un faux. T'as pas de chance.")
		
		ANSWER("Je tiens ça d'une source fiable. Tu es grillé.",102)
	NODE(102)
		SAY("Une source fiable? Tu veux dire Hontoka?")
		
		ANSWER("Exact.",103)
	NODE(103)
		SAY("Incroyable... Hontoka a préparé son coup depuis le début. Il a voulu m'avoir comme si j'étais un gamin. Crois-moi, c'est lui qui arrête pas de parler du bon vieux temps, de lui dire que ça lui manque, de son envie de faire revivre l'honneur et la gloire. Je parie qu'il t'a même dit qu'il fallait une menace extérieure pour qu'on puisse tous s'unir comme avant. C'est pas ça qu'il t'a dit?")
		
		ANSWER("Oui... Et alors?",104)
	NODE(104)
		SAY("Il joue toujours le même disque, c'est désespérant.")
		
		ANSWER("Il va falloir me convaincre mieux que ça! Et Gruber? Tu m'as envoyé a lui pour qu'il me tue!",105)
	NODE(105)
		SAY("Faux! Je t'ai dit d'aller le voir pour qu'il te donne une mission! S'il a essayé de te tuer, c'est Hontoka le responsable. C'est lui que tu dois abattre.")
		
		ANSWER("Et moi, je crois encore que tu es un espion. Tu as beau argumenter, ça ne prendra pas. Prépare-toi a payer, sale traître!",106)
	NODE(106)
		SAY("Tant pis... Va falloir que je te descende.")
		ATTACK()
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()
	NODE(107)
		SAY("Tu vas pas t'en tirer comme ça!!")
		ATTACK()
		ENDDIALOG()

--Spieler killt entweder Hontoka oder Taylor...Taylor ist der verantwortliche Trigger 1
-----------------------------------------------------
--Recruiter

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je pensais t'avoir dit de ne pas revenir tant que les problèmes n'étaient pas résolus.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("T'as parlé à Taylor avant de lui tirer dessus?")
				ENDDIALOG()
			else
				SAY("Reviens quand nous avons démasque l'espion.")
		
				ANSWER("Pas besoin. J'ai trouvé que c'était Taylor, et je l'ai éliminé. J'ai dans ce datacube toutes les informations qui le désignent comme espion.",151)
		end
	NODE(151)
		TAKEITEM(9254)
		if(result==0)then
			SAY("Je ne vois pas de datacube. Si tu ne m'apportes pas de preuves, alors c'est toi que je considérerai comme l'espion.")
			ENDDIALOG()
		else
			SAY("C'est vrai. Tout est vrai. Si j'avais pu soupçonner Gomez....")
		
			ANSWER("Il était malin, j'espère qu'il n'a pas survécu.",152)
		end
	NODE(152)
		SAY("Tu as rendu un grand service a Tsunami, je te remercie. Je te transmets les chaleureuses félicitations de Véronique pour avoir démasqué cet espion. Tu as bien mérité tes 150.000 crédits. Merci encore.")
		
		ANSWER("Je te l'ai déjà dit, tu n'as pas a douter de moi. Encore une chose. Black Lily est le nom d'un membre de Tsunami qui travaille en couverture pour le Dragon Noir. On a découvert sa véritable identité, et maintenant elle craint pour sa vie.",153)
	NODE(153)
		GIVEMONEY(150000)
		SAY("Je vais m'occuper de ça. On ne laisse jamais tomber un membre. Maintenant, pourquoi est-ce que tu ne vas pas créer un clan pour aider Tsunami comme tu sais si bien le faire? Tu sembles très capable de mener ton propre groupe. Réponds a l'appel de ton destin, choisis une plus grande destinée que celle d'accomplir de petites missions dans l'ombre! On a plein de membres qui peuvent faire ce travail a ta place. J'espère que tu seras a l'aise chez nous. Bonne chance!")
		EPICRUNFINISHED(8,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end