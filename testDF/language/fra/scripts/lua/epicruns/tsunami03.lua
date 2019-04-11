--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--0,D,Dillan
--1, kill Cook, Raymon
--2,D,Gomez
--200

--Startnode, Person
--0 Human Resource
--50 crazy Dillan
--100 Raymon
--150 Taylor
--200
--250

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Voici des informations vitales au sujet du Dragon Noir et de ProtoPharm. Nous savons ou ça va se passer, et quand. Mais si on empêche la rencontre, ça ne leur fera pas bien mal. Ils n'auront qu'à la faire à un autre endroit. Alors il faut tuer le représentant de ProtoPharm, et maquiller ça pour qu'ils croient que c'est un Dragon Noir qui l'a descendu.")
		
		ANSWER("Oui, mais comment? ProtoPharm n'est pas stupide, ils sauront faire la différence entre un Dragon Noir et un Tsunami.",1)
		ANSWER("J'ai eu assez de défis pour aujourd'hui, ça sera sans moi.",3)
	NODE(1)
		SAY("Nous avons de bons amis dans les Fils de l'Anarchie. Il faut dire qu'ils aiment bien nos clubs. Je pense qu'il doit bien leur rester quelques armes qu'ils ont eues par le Dragon Noir. On peut se servir de ces armes pour bluffer ProtoPharm. Passe voir Happy Gil, il va te mettre au parfum.")
		
		ANSWER("Je sais comment parler à ce genre de gars.",2)
	NODE(2)
		SAY("Apres, faut que tu ailles voir Raymon au secteur 06. Il a des contacts dans ProtoPharm, et il aime beaucoup le fric. Ca sera pas difficile de le convaincre de travailler pour nous. Il va maquiller le meurtre pour que ça ait l'air fait par un Dragon. File-lui l'arme que Gil te donnera, et ensuite va tuer cet abruti de ProtoPharm, Cook. Lui, tu le trouveras au point de rendez-vous, dans l'Outzone.")
		SETNEXTDIALOGSTATE(4)
		ACCEPTMISSION()
		ENDDIALOG()
		
	NODE(3)
		SAY("Comme tu veux. Mais sache qu'ici on n'apprécie pas les lâcheurs.")
		
		ENDDIALOG()
	NODE(4)
		SAY("Alors en piste. Va voir le fils de l'Anarchie aux portes de la ville, et puis Raymon au secteur 06. Ensuite, va faire ton rapport a Taylor.")
		ENDDIALOG()
		


-----------------------------------------------------
--crazy Dillan

	NODE(50)
		SAY("Salut runner, quoi de neuf? T'as l'air d'un larbin qui travaille pour Tsunami, je me trompe? Hé, le prends pas mal, je rigolais...")
		
		ANSWER("Tu as de la chance qu'on ait besoin de toi, sinon je te réduirais en bouillie séance tenante.",51)
	NODE(51)
		SAY("Wohoo, mais c'est qu'on a des tripes, chez Tsunami, apparemment! J'aime ça, vraiment. Alors, qu'est-ce qui t'amène dans le coin?")
		
		ANSWER("J'ai besoin d'une arme qui a été utilisée par le Dragon Noir. Tu as ça pour moi?",52)
	NODE(52)
		SAY("Oui oui, j'en ai plein. C'est de bons amis a moi, comme vous chez Tsunami. Peut-être qu'un de ces jours je vous baiserai tous les deux en beauté, hé hé.")
		
		ANSWER("Ne prononce pas Tsunami et Dragon Noir dans la même phrase, ça fait tache.",53)
	NODE(53)
		SAY("Tout ça parce que vous les aimez pas? Je m'en fiche, de vos petites salades, tu sais. Les Fils de l'Anarchie ont toujours décidé de qui étaient leurs amis. Quelle arme tu veux? Bah, oublie ça. Je vais te donner cette mitrailleuse. Ca te va, comme ça?")
		
		ANSWER("C'est tout ce que tu as? Elle a pas l'air en pleine forme.",54)
	NODE(54)
		SAY("Fais-moi confiance, elle marche bien. Je l'ai testée sur un mutant pas plus tard qu'hier. Ce cadavre ambulant était criblé de balles. Je te jure, il restait plus qu'un tas de bouillie après ça.")
		
		ANSWER("Bon, je la prends.",55)
	NODE(55)
		SAY("Tu veux un dernier conseil? Le Dragon Noir est en train de couver quelque chose. Ils achètent des armes en gros, et ils sont en train de contrôler toutes leurs alliances. Ca a peut-être quelque chose ç voir avec vous. En fait, si vous aviez pas tous ces clubs, ça ferait longtemps qu'on serait du côté du Dragon Noir. Franchement, c'est nul que vous fassiez pas de drogues.")
		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(56)
		SAY("A bientôt dans un des clubs de la ville, runner. T'as pas dit que t'allais causer à un gars du Dôme?")
		ENDDIALOG()


-----------------------------------------------------
--Raymon

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je m'attendais pas a vous voir si tôt. Il fait pas bon traîner ici en ce moment. Revenez plus tard...")
			ENDDIALOG()
		else
			SAY("Bienvenue! Vous devriez goûter leurs plats ici, c'est fameux. La pieuvre mutante est de premier choix, malheureusement peu de gens apprécient.")
		
			ANSWER("Raymon... Je sais que vous étés un membre important chez ProtoPharm, c'est exact?",101)
		end
	NODE(101)
		SAY("Plus ou moins. Disons qu'on se connaît bien. Bon, je suppose que vous êtes pas la pour qu'on parle cuisine?")
		
		ANSWER("Non, je viens pour vous faire une offre de la part de Tsunami. Et pas n'importe quelle offre, si je peux me permettre.",102)
	NODE(102)
		SAY("J'aurais du deviner d'où vous veniez. ProtoPharm ne recherche pas trop les contacts avec Tsunami, vous savez. Surtout en ce moment.")
		
		ANSWER("Qu'est-ce que vous voulez dire?",103)
	NODE(103)
		SAY("Je ne peux pas trop vous en parler maintenant, c'est assez... compliqué. Mais quelle était votre proposition?")
		
		ANSWER("J'ai sur moi une arme qui appartient au Dragon Noir, et nous voulons...",104)
	NODE(104)
		SAY("Ne m'en dites pas plus. Vous voulez maquiller un assassinat, c'est bien ça? Alors c'est non.")
		
		ANSWER("Mais il y a beaucoup d'argent a gagner pour vous dans cette histoire. Ca vaudrait vraiment le coup.",105)
	NODE(105)
		SAY("Si j'avais su que vous veniez pour ça, je n'aurais jamais accepté ce rendez-vous. Si j'attire trop l'attention sur moi en ce moment, je vais finir comme la pieuvre mutante qui est dans mon assiette. Et de plus, vous ne pourrez rien faire pour détruire les relations entre le Dragon et ProtoPharm actuellement.")
		
		ANSWER("Et peut-être qu'avec beaucoup d'argent vous accepteriez de reconsidérer notre offre?",106)
	NODE(106)
		SAY("Non. Avec les accords qui vont avoir lieu aujourd'hui, le lien entre les Dragons et ProtoPharm sera trop fort pour qu'on puisse le détruire avec quelque chose comme ça. Cet accord porte sur un nouveau type de produit chimique. Je ne connais pas le nom actuellement. Mais ça a beaucoup de valeur, et au moment ou M. Crook l'aura remis au Dragon Noir, le lien entre les deux organisations sera trop fort. Même si on assassinait la personne en question, ça ne servirait a rien. ProtoPharm sait a quel point ils sont importants pour le Dragon Noir, une telle action ne passerait pas pour ce qu'on veut qu'elle soit. Pour ce qui est du produit chimique, je ne sais pas du tout en quoi il consiste.")
		
		ANSWER("Alors M. Cook a les nouveaux produits chimiques sur lui, c'est bien ça?",107)
	NODE(107)
		SAY("Oui, mais... Attendez! Je ne dirai rien de plus si Tsunami ne me paye pas pour cette information.")
		
		ANSWER("Si vous n'êtes pas mort demain matin, vous pourrez vous estimer heureux. Sauf si vous me dites ce que vous savez.",108)
	NODE(108)
		SAY("Bon, d'accord. M. Cook est déjà en route pour le rendez-vous, et il a les produits chimiques sur lui. ProtoPharm a reçu un appel anonyme disant qu'il allait y avoir une embuscade, mais ne me demandez pas d'ou je tiens cette information. Si vous voulez réellement tuer Cook, alors réfléchissez-y a deux fois. Il ne sera pas seul dans l'Outzone 03, je peux vous l'assurer. Maintenant laissez-moi tranquille, j'ai un repas a terminer.")
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
		
	NODE(109)
		SAY("Vous ne comptez pas non plus m'empêcher de manger mon dessert? Si vous voulez votre produit chimique, allez en Outzone 03 et débrouillez-vous avec Cook directement.")
		SETNEXTDIALOGSTATE(110)
		ENDDIALOG()
		
	NODE(110)
		SAY("Cook est dans l'Outzone 03. Maintenant, je voudrais bien terminer mon DESSERT!!!")
		ENDDIALOG()

--Spieler grillt Cook und nimmt die die Chemikalie Trigger 1
		

-----------------------------------------------------
--Taylor Gomez

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("On ne m'a pas prévenu que tu avais terminé ta mission. J'imagine que c'est toujours en cours?")
			ENDDIALOG()
		else
			SAY("On m'a prévenu pour ta mission. Qu'est-ce que ça a donné? Tu as réussi a casser le marché entre le Dragon Noir et ProtoPharm?")
		
			ANSWER("Oui, mais le Dragon Noir ne passera pas pour l'assassin. Raymon n'a pas accepté la mission. Et j'ajoute que ProtoPharm était informée de notre plan contre eux.",151)
		end
	NODE(151)
		SAY("Informés? Mais c'est impossible! Ou bien il y a une taupe dans Tsunami. C'est troublant, mais ça me surprend pas. On trouve toujours des gens bien placés qui s'amusent à distribuer des informations. Fais-moi confiance, je connais.")
		
		ANSWER("Tu parles d'une taupe infiltrée chez nous?",152)
	NODE(152)
		SAY("A moins que ce ne soit encore un de ces Moines PSI. Certains disent qu'ils peuvent lire les pensées des autres, et même voir dans l'avenir. Reginald Axom pense que Crahn est impliquée dans l'accord que tu as partiellement empêché. C'est un Moine PSI, mais heureusement il travaille pour nous maintenant. Mais si tu savais que ça passerait pas pour un meurtre du Dragon Noir, pourquoi est-ce que tu l'as tout de même fait?")
		
		ANSWER("Cook avait un produit chimique inconnu avec lui. Apparemment, c'était plutôt important pour le Dragon Noir, et c'est pour ça que j'ai décidé de mettre la main dessus. Et maintenant, qu'est-ce que j'en fais?",153)
	NODE(153)
		GIVEMONEY(15000)
		SAY("J'ai l'air d'un scientifique? Va le montrer a Jester la prochaine fois que tu le vois, il sait peut-être quelque chose. Mais attends un peu avant ça. Développe un peu tes techniques. Tiens, 15.000 crédits en récompense de ton travail. Garde ce produit chimique en sécurité jusque là. (prochaine mission au niveau 35)")
		EPICRUNFINISHED(8,2)		
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
-----------------------------------------------------
--Cook

	NODE(200)
		SAY("Excusez-moi, j'attends quelqu'un.")
		ENDDIALOG()		


end