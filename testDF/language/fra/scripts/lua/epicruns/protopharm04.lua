--new
--ProtoPharm

--
--Trigger
--Triggernumber,Type,Person
--0,D,100
--1,PvP, Morpheus 200
--2
--3
--
--Startnode, Person
--0, Human Resource Director
--50, GEORGE
--100, GREGORY
--150, George
--200, Morpheus
--250, Gregory
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Brandon George m'a demandé de vous dire qu'il avait besoin de vous. Vous devriez aller le voir tout de suite. J'ai entendu dire que Sandra Frasier lui avait donné les pleins pouvoirs dans cette affaire. Je pense que la mission sera très importante. Bonne chance, quoi que vous fassiez.")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("George vous cherche partout. Alors dépêchez-vous d'aller lui parler.")
		ENDDIALOG()
--------------------------------------------------------------------
--GEORGE
--50
	NODE(50)
		SAY("J'espérais devoir utiliser vos compétences une fois de plus. Comme vous le savez peut-être, tout tourne en ce moment autour du CryoVault manquant. Personne ne sait comment Jakob Finster a été retiré du secteur 13 sans déclencher une seule alarme. Je pense que Michail est impliqué dans cette affaire d'une manière ou d'une autre.")

		ANSWER("Vous avez une preuve?",51)
	NODE(51)
		SAY("Pas vraiment, mais ProtoPharm pourrait le renvoyer rien que pour le travail qu'il effectue en ce moment. Nous devons localiser Jakob Finster, et déterminer s'il s'agit d'un double ou non. Nous ne pouvons pas être complètement certains que Finster n'est pas en liberté quelque part, maintenant que son CryoVault a disparu.")

		ANSWER("On devrait peut-être tout reprendre depuis le début et chercher des indices.",52)
	NODE(52)
		SAY("C'est pour ça que les procédures standard existent. J'ai effectué quelques recherches, et j'ai découvert que la raison pour laquelle Finster serait entré dans un CryoVault, ce serait une maladie. Une maladie qu'il était impossible de guérir à l'époque. Il pourrait y avoir eu d'autres raisons, mais ce n'est que pure spéculation.")

		ANSWER("On en sait plus sur cette maladie?",53)
	NODE(53)
		SAY("Non. Tout ce que je sais, c'est que ces documents ont disparu lorsque Jan Pixner a pris la direction de la compagnie. Mais tout semble indiquer que Finster n'ait pas été dégelé depuis vingt ans. C'était sa dernière volonté, et il semble qu'il soit resté dans son CryoVault depuis presque un siècle. Je pense que quelqu'un a fini par avoir pitié de lui, ou bien a pensé à un moyen de l'utiliser. Ou bien Finster a inclus un dispositif de sécurité qui le décongèlerai après un certain temps.")

		ANSWER("On entre dans le domaine de la spéculation. Je suggère que nous vérifions d'abord qui est responsable de la garde du CryoVault. Si nous avons de la chance, cela pourrait nous donner une poste intéressante.",54)
	NODE(54)
		SAY("Vous avez raison, ça pourrait marcher. Allez voir Gregory Parkins au labo, il a une clé pour accéder au CryoVault. Les autres clés sont dans une chambre protégée qui ne peut s'ouvrir que tous les deux jours. Je pense donc que ces clés n'ont pas été utilisées. Donc, pour moi Gregory est impliqué dans l'affaire.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		
	

--------------------------------------------------------------------
--GREGORY
--100
	NODE(100)
		SAY("Qu'est-ce que vous voulez? Le labo n'est pas un terrain de jeu. Ceux qui n'ont rien à faire ici ne font que prendre de la place qui pourrait servir à autre chose.")

		ANSWER("Ne vous inquiétez pas, j'ai de bonnes raisons d'être là. Je veux savoir qui a emprunté votre clé d'accès au CryoVault.",101)
	NODE(101)
		SAY("Je ne vois pas de quoi vous parlez. Cette clé a toujours été ici dans ma poche. Je connais mon métier.")

		ANSWER("Vraiment? Alors expliquez-moi pourquoi il manque un CryoVault? Et pas n'importe lequel, en plus.",102)
	NODE(102)
		SAY("Hum... Oui, bien sûr, c'est parce que... Bon, d'accord. Je suis dedans jusqu'au cou de toute manière, pas la peine d'esquiver. On m'a fait chanter en menaçant de révéler des choses sur moi, et je ne pouvais pas laisser faire ça.")

		ANSWER("Vous voulez dire que vous avez donné les clefs à quelqu'un?",103)
	NODE(103)
		SAY("Oui, mais je ne peux pas dire à quoi ils ressemblaient, même si ma vie en dépendait. Ils avaient tous des masques à gaz, et des manteaux à capuche. Personne n'aurait pu les identifier. Je ne peux rien dire d'autre à ce sujet, il faut me croire!")

		ANSWER("Qu'est-ce que c'était, ce secret avec lequel ils vous ont fait chanter?",104)
	NODE(104)
		SAY("J'aurais mieux fait de ne rien dire. Désolé, mais je ne vous dirai rien même si je me fais renvoyer pour ça.")
		SETNEXTDIALOGSTATE(250)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
--------------------------------------------------------------------
--GEORG BRANDON
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Essayez d'avoir toutes les informations que vous pouvez de la part de Gregory. J'attends votre rapport ici même.")
			ENDDIALOG()
		else
			SAY("Ahh, vous voilà. Vous avez trouvé une piste intéressante?")

			ANSWER("Gregory a reconnu avoir donné sa clé à quelqu'un de l'extérieur. Ils l'ont visiblement fait chanter au sujet d'un secret personnel. Il n'a pas voulu en dire plus.",151)
		end
	NODE(151)
		SAY("Gregory? Un secret? Je me souviens qu'il avait un poste d'assistant chez Crahn avant de venir travailler pour nous. Il y a peut-être un rapport. Je sais qu'il y a un prêtre de Crahn qui vit dans Crest Village. Autrefois, il avait beaucoup d'influence au sein de la secte, et s'il existe quelqu'un qui connaît le secret de Gregory, c'est lui. Essayez de lui soutirer tout ce que vous pouvez. Et lorsque vous avez les éléments nécessaires, il sera temps de retourner voir Gregory pour lui remettre le nez dans ses sales affaires.")
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
		


--------------------------------------------------------------------
--pater morpheus
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ce lieu est interdit à ceux qui n'ont jamais connu la gloire de Crahn.")
			ENDDIALOG()
		else
			SAY("Comme vous êtes loin de la ville, j'imagine que vous avez perdu votre chemin. Allez-vous en, avant qu'un monstre ne décide de festoyer de vos tripes.")

			ANSWER("Je n'ai pas voyagé jusqu'ici pour rentrer les mains vides. Je veux des réponses.",201)
		end
	NODE(201)
		SAY("Apparemment, vous avez cédé à la corruption de la ville, et vous êtes maintenant un esclave de choix pour Reza.")

		ANSWER("Je ne suis l'esclave de personne. Je cherche des réponses, et c'est vous que allez me les donner.",202)
	NODE(202)
		SAY("Au moins, vous avez du caractère. Peut-être tout n'est-il pas perdu. Alors dites-moi, qu'est-ce que je peux faire pour vous?")

		ANSWER("Un certain Gregory Parkins a travaillé pour vous il y a quelques temps comme assistant médical. Il porte en lui un secret depuis ce temps, et je voudrais le connaître.",203)
	NODE(203)
		SAY("Le monde porte en lui de nombreux secrets, et certains de ces secrets ne doivent pas être révélés. Mais si ce secret est très important pour vous, alors je vais tout d'abord vous demander une faveur.")

		ANSWER("Je m'y attendais. Je ne connais aucun membre de votre secte donnant des informations gratuitement.",204)
	NODE(204)
		SAY("Votre ignorance est grande, et je vous pardonne. Mais je vous avertis : encore une parole de ce genre, et ce secret le restera à jamais.")

		ANSWER("C'est bon, c'est bon, je ne voulais pas vous insulter.",205)
	NODE(205)
		SAY("Alors je vais te demander de te venger de ces créatures qui se font appeler les Anges Déchus. Ils ont attaqué un groupe de frères de Crahn innocents et les ont massacré avec la plus grande cruauté. ce fut un triste jour pour nous, et la vengeance doit venir sans plus attendre. Vous aurez l'honneur de faire goûter aux Anges Déchus ce que les représailles de Crahn signifient. Revenez me voir dès que vous avez accompli votre tâche.")

		ANSWER("Il faut donc que je tue un Ange Déchu?",206)
	NODE(206)
		SAY("Oui. Un runner, pour être précis. Peu importe lequel, de toutes façons nous les abattrons tous un jour ou l'autre.")
		SETNEXTDIALOGSTATE(207)
		ENDDIALOG()
		
--SPIELER KILLT EINEN FALLEN ANGEL

	NODE(207)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("D'abord, vous devez liquider un Ange Déchu. Ensuite, nous reprendrons notre intéressante conversation.")
			ENDDIALOG()
		else		
			SAY("Vous avez fait du bon travail, et pour cela vous recevrez une juste récompense.")

			ANSWER("Alors dites-moi. Cette histoire commence à traîner en longueur.",208)
		end
	NODE(208)
		SAY("Pauvre Gregory. En effet, il a travaillé pour Crahn .Je l'admets. Il recherchait des médicaments très importants, et il était très attaché à son travail. Mais un jour, il a franchi la limite à ne pas franchir. Certaines de ses expériences étaient menées sur des mutants. Des créatures qui ne devaient pas vivre de toutes façons.")

		ANSWER("Mais ces expériences, vous les avez permises, non?",209)
	NODE(209)
		SAY("Nous ne lui avions donné qu'un seul ordre : celui de progresser. Et nous lui avons donné les moyens d'accomplir sa mission. Mais un jour, au lieu de faire ses expériences sur des mutants, il a choisi un jeune garçon humain. Il a injecté dans ses veines une substance qui a paralysé tous ses nerfs définitivement. Il a tenté de se disculper en disant qu'il pensait que c'était un mutant. Ridicule! Evidemment, il a été renvoyé le même jour. Et maintenant, arrêtez de m'importuner.")
		SETNEXTDIALOGSTATE(210)
		ENDDIALOG()
		
	NODE(210)
		SAY("J'ai déjà dit tout ce que j'avais à dire.")

		ENDDIALOG()

--------------------------------------------------------------------
--Gregory
--250

	NODE(250)
 		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Si vous voulez bien, j'aimerais poursuivre mes expériences.")
			ENDDIALOG()
		else
			SAY("Quoi encore? Je ne vous ai pas déjà tout dit?")
	
			ANSWER("Non, pas tout. J'ai découvert votre secret. Mon dieu, pauvre enfant, c'est horrible...",251)
		end
	NODE(251)
		SAY("Quoi? Qu'est-ce que vous voulez dire?")
		
		ANSWER("Vous avez utilisé un enfant comme cobaye. Un ENFANT. Vous avez détruit son système nerveux en lui injectant un...",252)
	NODE(252)
		SAY("Assez! Assez! Oui, c'est vrai, et croyez-le ou pas, j'en suis désolé. Mais vous ne savez pas ce que c'est de travailler pour Crahn. Ils me donnaient des missions les unes après les autres, et ma seule possibilité de tenir le rythme était de faire des expériences sur des mutants. Après quelques semaines, je ne me rendais même plus compte que c'étaient des êtres humains.")
		
		ANSWER("Continuez.",253)
	NODE(253)
		SAY("J'ai vraiment cru que c'était un mutant, pas un enfant en bonne santé. Je l'ai mis sur la civière dans le laboratoire. Il était sale et inconscient. Il était aussi sale que les mutants. Je n'ai même pas enlevé son masque, sinon je m'en serais rendu compte. Vous devez me croire. J'en fais encore des cauchemars.")
		
		ANSWER("Même si je ne vous aurais pas cru capable d'une pareille chose, je vais garder votre secret. Mais vous allez devoir me dire toute ce que vous savez.",254)
	NODE(254)
		SAY("D'accord. Mais n'en parlez à personne, ou bien je suis fini. Le CryoVault qui contenait le corps de Finster a été emmené par un double de Finster lui-même. Il voulait l'emmener quelque part dans la zone industrielle. Je ne sais rien de plus, allez-vous en maintenant.")
		SETNEXTDIALOGSTATE(255)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(255)
		SAY("Je n'ai pas envie d'en parler. Allez-vous en.")
		ENDDIALOG()
		

--------------------------------------------------------------------
--GEORG
--300



	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Allez voir le père Morpheus à Crest Village, puis retournez voir Gregory pour l'interroger de nouveau.")
			ENDDIALOG()
		else
			SAY("Alors, quelles sont les nouvelles?")
		
			ANSWER("Je vous épargnerai les détails au sujet de Gregory et de son secret, mais il a dit que c'est Jakob Finster qui est venu chercher le CryoVault lui-même.",301)
		end
	NODE(301)
		SAY("Alors ça me conforte dans l'idée qu'il y a un double qui travaille dans l'ombre. Mais ça ne nous aide pas beaucoup.")
		
		ANSWER("Il a aussi dit que Finster voulait emmener le CryoVault dans le secteur industriel. J'en suis pratiquement certain.",302)
	NODE(302)
		SAY("Je m'attendais à entendre ça. Maintenant, on peut commencer les préparatifs. Tenez, voici votre récompense. J'espère qu'on continuera à travailler ensemble. (prochaine mission au niveau 40)")
		EPICRUNFINISHED(6,3)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
		



end