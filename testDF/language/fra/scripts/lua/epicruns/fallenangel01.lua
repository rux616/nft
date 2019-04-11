--new
--Fallen Angel01
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm(50)
--1,D,Constantine (100)
--2,D,Personal Director (200)
--
--
--Startnode, Person
--0, Personal Director (gibt und bekommt Questitem)
--50, Grimm (Forschungstrakt) (bekommt und gibt Questitem)
--100, Constantine (Forschungstrakt)
--150
--200
--
--
--Items
--2 Questitems

function DIALOG()
--------------------------------------------------------------------
--Personal Director
--0
	NODE(0)
		SAY("Bienvenue au club, il ne reste que quelques formalités à accomplir. Un peu de patience, vous allez recevoir votre carte plus tard. Officiellement, vous êtes maintenant des nôtres. En complément de votre adhésion, vous recevrez plusieurs missions, car vous n'êtes pas là pour vous la couler douce. Si vous voulez, on peut d'ailleurs commencer tout de suite.")
		
		ANSWER("Evidemment. C'est pour ça que j'ai rejoint les Anges Déchus.",1)
	NODE(1)
		SAY("Ca fait toujours plaisir à entendre. Comme vous le savez peut-être, tous les Anges Déchus sont plus ou moins des scientifiques. Mais nous ne connaissons pas encore très bien vos capacités, et nous ne pouvons pas vous donner une véritable mission pour le moment. Le mieux à faire serait que vous acceptiez une petite mission de livraison. Sylvia Bennet a publié les résultats de ses dernières recherches sur un de nos projets en cours. On n'a pas encore eu le temps de distribuer ça à tout le monde. J'aimerais que vous puissiez livrer ces documents.")
		
		ANSWER("Compris. Ca n'est pas ce que je fais d'habitude, mais je m'en accommoderai. Où est-ce que j'emmène ça?",2)
		ANSWER("Je ne suis pas encore prêt pour ce genre de choses.",4)
	NODE(2)
		SAY("Il y a un laboratoire scientifique tout près d'ici. La plupart de nos ressources en recherche sont orientées vers des méthodes pour abaisser le niveau de radioactivité à un niveau acceptable. On y développe toutes sortes de projets. Vous pourrez y voir un peu ce qu'on y fait... Ca vaut le coup d'oeil.")
		
		ANSWER("Ne vous inquiétez pas, je ferai cette livraison sans problèmes.",3)
	NODE(3)
		GIVEITEM(9307)
		SAY("C'est de l'argent facilement gagné, voyez ça comme ça. Donnez le colis à Grimm, et transmettez-lui mes salutations. Il se trouve dans les niveaux inférieurs du QG.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		
	NODE(4)
		SAY("Alors revenez me voir quand vous aurez pris vos marques.")
		ENDDIALOG()


--------------------------------------------------------------------
--Grimm
--50
	NODE(50)
		SAY("Qu'est-ce que vous fichez ici?! C'est une zone interdite au civils, seuls les scientifiques ont le droti d'y accéder!")
		
		ANSWER("On m'a demandé de vous livrer ça en mains propres.",51)
	NODE(51)
		TAKEITEM(9307)
		if(result==0)then
			SAY("Et vous croyez que je vais marcher si vous n'avez pas ces documents?")
			ENDDIALOG()
		else
			SAY("J'aiment? Alors qu'est-ce que vous attendez, donnez-moi ça en vitesse.")
		
			ANSWER("Tenez.",52)
		end
	NODE(52)
		SAY("Le coup classique... Des rapports, des rapports et encore des rapports. Comme si je n'étais pas déjà assez occupé. Bien, je vais prendre le temps de voir un peu ce que ça raconte. J'aurai quelque chose à vous faire livrer quand vous reviendrez. En attendant, allez voir Constantine.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		


--------------------------------------------------------------------
--Constantine
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("On pourrait peut-être remettre cette conversation à plus tard?")
			ENDDIALOG()
		else
			SAY("J'ai vu que vous venez de parler à Grimm. Ne vous tracassez pas pour si peu, il est toujours de mauvaise humeur, et ça n'est pas un bavard. Il s'imagine toujours qu'il devrait occuper un poste plus élevé. Dommage qu'il soit coincé ici avec son petit boulot de chercheur, non? Je m'appelle Constantine, et je travaille comme assistante technique. Ravie de vous rencontrer.")
		
			ANSWER("Je viens d'arriver dans le coin. C'est peut-être pour ça qu'ils m'ont donné une livraison. Dites, qu'est-ce que vous faites de beau dans ce labo?",101)
		end
	NODE(101)
		SAY("Tout ce qui se trouve ici est le top de la technologie, et les murs grouilles de fibres optiques, il y en a des tonnes. Mais malgré toute cette technologie, on aurait besoin de meilleur matériel pour nos plus gros projets.")
		
		ANSWER("Ca doit quand même être intéressant, tout ça.",102)
	NODE(102)
		SAY("Oui... Je ne suis pas directement impliquée dans les travaux de l'équipe scientifique, mais j'entends beaucoup de choses. Je suis responsable de l'analyse et de l'enregistrement des différents tests qu'on effectue ici. Toutes les informations sont rassemblées là. Si vous avez une question, n'importe laquelle, vous n'avez qu'à me demander.")
		
		ANSWER("Je me posais justement des questions au sujet de votre technologie.",103)
		ANSWER("Pouvez-vous m'en dire plus sur l'histoire des Anges Déchus?",106)
		ANSWER("J'aimerais en savoir plus sur les gens qui vivent et travaillent ici.",107)


--Antwort auf Technik
	NODE(103)
		SAY("J'ai vu beaucoup de projets passer par ici, et je peux vous dire que Tech Haven est incomparable avec Neocron du point de vue technologique. C'est un tout autre ordre de grandeur. Là où vous êtes, vous êtes au coeur de tout le système. Il y a tant de gadgets et d'appareils autour de vous que vous pouvez travailler beaucoup plus facilement, construire des objets, faire des recherches... C'est là que les meilleures inventions se réalisent. Mais ne vous y trompez pas, beaucoup de projets finissent aussi à la poubelle. Malheureusement, Tech Haven perd graduellement son importance dans les domaines des sciences et de la recherche. Depuis que les Anges ont été contraints de déménager au Dôme d'York, Tech Haven est devenu un lieu de commerce indépendant. Mais l'esprit des Anges Déchus est encore très présent dans ces lieux.")
		
		ANSWER("Je n'ai aucune difficulté à vous croire. J'aimerais avoir autant de matériel à ma disposition.",104)
	NODE(104)
		SAY("Et vous pouvez. N'importe quel membre peut disposer de ces installations gratuitement. Notre idée est d'accélérer le processus de recherche. Mais comme les Anges Déchus ont emménagé au Dôme, Tech Haven perd de l'importance dans les domaines des sciences et de la recherche.")
		
		ANSWER("J'ai encore des questions.",105)

--Fragennode
	NODE(105)
		SAY("Evidemment, si vous voulez savoir quelque chose vous n'avez qu'à me demander.")
		
		ANSWER("La technologie qui nous entoure m'intéresse beaucoup.",103)
		ANSWER("J'aimerais en apprendre plus sur l'histoire des Anges Déchus.",106)
		ANSWER("J'aimerais en apprendre plus sur les gens qui vivent et travaillent ici.",107)
		ANSWER("Je pense que c'est tout pour l'instant. Merci beaucoup.",109)

--Antwort auf Geschichte der FallenAngels
	NODE(106)
		SAY("Je ne connais rien de plus au sujet des Anges que ce que vous pourrez trouver dans la base de données officielle. Mais ça tient en quelques paragraphes, de toute manière. Les Moines Psi étaient au pouvoir, à l'époque, et quelques scientifiques ont décidé qu'ils allaient redonner à la Terre son surnom de planète bleue. Ils se sont enfuis en 2633, et ont posé les bases d'une nouvelle structure, ici à Tech Haven. A cette époque, leur chef s'appelait Thomas Cooper, et aujourd'hui c'est une vraie légende. Actuellement, nous sommes au Dôme d'York. Notre but n'a pas changé. Plus la tâche a de l'ampleur, plus elle met du temps à se concrétiser, je pense.")
		
		ANSWER("Au moins, les Anges Déchus gardent le cap. Je repense à toutes ces factions égoïstes qui ne savent pas où elles vont... Ca me donne des frissons. Aucune ne sait voir ce qu'elle devrait faire. Enfin... J'ai d'autres questions.",105)

--Antwort auf die Leute von Tech Haven
	NODE(107)
		SAY("Les gens qui vivent ici avec nous sont principalement des individus qui veulent changer le monde sans avoir recours à des armes. Ou bien qui ne voulaient plus vivre dans la crainte de Neocron ou des Terres Brûlées. Je connais des gens qui ont passé toutes leur vie à tenter d'améliorer la qualité de vie dans un environnement radioactif. Actuellement, c'est Sylvia Bennet qui dirige le Conseil Scientifique. C'est un bon chef, je trouve. Même si je n'en ai pas connu d'autres. Les autres membres du Conseil changent constamment, et je n'arrive pas à retenir tous les noms. Je n'ai jamais vu l'administratrice système non plus. Beaucoup de rumeurs circulent à son sujet. Surtout à son sujet, d'ailleurs.")
		
		ANSWER("Quel genre de rumeurs. Pourquoi personne ne la voit jamais?",108)
	NODE(108)
		SAY("Aucune idée. Je ne suis qu'une subalterne. On dit que c'est une gamine, mais une gamine avec une mentalité d'adulte. Ou bien une mutante. Personnellement, je ne veux pas y croire, je trouve qu'elle fait du bon travail et ça me suffit.")
		
		ANSWER("En effet, j'ai entendu dire que c'était un des meilleurs hackers de tout Neocron. J'ai encore d'autres questions...",105)

--Ende der Konversation
	NODE(109)
		SAY("Si vous voulez commencer une recherche par vous-même, je pourrai vous donner un coup de main, éventuellement. Ah, je crois que Grimm a terminé. Vous devriez aller lui parler. Bonne chance.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(110)
		ENDDIALOG()
		
	NODE(110)
		SAY("Je dois retourner travailler. Vous avez parlé à Grimm?")
		SETNEXTDIALOGSTATE(111)
		ENDDIALOG()
		
	NODE(111)
		SAY("Je vais vous dire un secret, mais ne le répétez à personne, compris? On a vu dans les Terres Brûlées des appareils volants gigantesques. Ca ne me dit rien qui vaille.")
		ENDDIALOG()
--------------------------------------------------------------------
--Grimm
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je n'ai pas fini de lire tous les rapports. Allez parler à Constantine, occupez-vous ailleurs, mais fichez-moi la paix.")
		else
			SAY("Des décisions, des décisions et encore des décisions. C'est toujours la même rengaine. Si j'étais le chef, je mettrais un bon coup de balai dans tout ça. Quant à vous, je vais vous faire surveiller, je vous ai vu soustraire à Constantine des infos importantes, vous allez certainement les diffuser.")
		
			ANSWER("C'est ridicule, on n'a fait que discuter.",151)
		end
	NODE(151)
		GIVEITEM(9308)
		SAY("Et c'est ça votre alibi? Enfin bref, c'est pas grave. Personne ne suivra jamais mes directives, de toute manière. Tenez, prenez ça et donnez-le au directeur du personnel.")
		SETNEXTDIALOGSTATE(152)
		ENDDIALOG()
		
	NODE(152)
		SAY("Je ne vous ai pas donné ce paquet pour que vous le regardiez! Transmettez ça au directeur du personnel!")
		ENDDIALOG()


--------------------------------------------------------------------
--Personal Director
--200
	NODE(200)
		TAKEITEM(9308)
		if(result==0)then
			SAY("Grimm se trouve dans le réacteur 01. Il attend vos rapports.")
			ENDDIALOG()
		else
			SAY("Ce sont les rectifications du professeur Grimm?")
		
			ANSWER("Aucune idée de ce que c'est, mais en effet c'est Grimm qui m'a donné ça. Pas aimable, le bonhomme.",201)
		end
	NODE(201)
		GIVEMONEY(2000)
		SAY("Oui, possible, mais c'est un très bon employé. Nous sommes conscients du fait qu'il ne fera jamais un bon chef, mais n'ébruitez pas l'information, ça ne servirait à rien. Et étudiez un peu. Plus en saurez, plus vite on pourra vous donner de nouvelles missions. (prochaine mission au niveau 20)")
		EPICRUNFINISHED(14,0)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()


end