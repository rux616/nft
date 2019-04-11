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
		SAY("Bienvenue au club, il ne reste que quelques formalit�s � accomplir. Un peu de patience, vous allez recevoir votre carte plus tard. Officiellement, vous �tes maintenant des n�tres. En compl�ment de votre adh�sion, vous recevrez plusieurs missions, car vous n'�tes pas l� pour vous la couler douce. Si vous voulez, on peut d'ailleurs commencer tout de suite.")
		
		ANSWER("Evidemment. C'est pour �a que j'ai rejoint les Anges D�chus.",1)
	NODE(1)
		SAY("Ca fait toujours plaisir � entendre. Comme vous le savez peut-�tre, tous les Anges D�chus sont plus ou moins des scientifiques. Mais nous ne connaissons pas encore tr�s bien vos capacit�s, et nous ne pouvons pas vous donner une v�ritable mission pour le moment. Le mieux � faire serait que vous acceptiez une petite mission de livraison. Sylvia Bennet a publi� les r�sultats de ses derni�res recherches sur un de nos projets en cours. On n'a pas encore eu le temps de distribuer �a � tout le monde. J'aimerais que vous puissiez livrer ces documents.")
		
		ANSWER("Compris. Ca n'est pas ce que je fais d'habitude, mais je m'en accommoderai. O� est-ce que j'emm�ne �a?",2)
		ANSWER("Je ne suis pas encore pr�t pour ce genre de choses.",4)
	NODE(2)
		SAY("Il y a un laboratoire scientifique tout pr�s d'ici. La plupart de nos ressources en recherche sont orient�es vers des m�thodes pour abaisser le niveau de radioactivit� � un niveau acceptable. On y d�veloppe toutes sortes de projets. Vous pourrez y voir un peu ce qu'on y fait... Ca vaut le coup d'oeil.")
		
		ANSWER("Ne vous inqui�tez pas, je ferai cette livraison sans probl�mes.",3)
	NODE(3)
		GIVEITEM(9307)
		SAY("C'est de l'argent facilement gagn�, voyez �a comme �a. Donnez le colis � Grimm, et transmettez-lui mes salutations. Il se trouve dans les niveaux inf�rieurs du QG.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		
	NODE(4)
		SAY("Alors revenez me voir quand vous aurez pris vos marques.")
		ENDDIALOG()


--------------------------------------------------------------------
--Grimm
--50
	NODE(50)
		SAY("Qu'est-ce que vous fichez ici?! C'est une zone interdite au civils, seuls les scientifiques ont le droti d'y acc�der!")
		
		ANSWER("On m'a demand� de vous livrer �a en mains propres.",51)
	NODE(51)
		TAKEITEM(9307)
		if(result==0)then
			SAY("Et vous croyez que je vais marcher si vous n'avez pas ces documents?")
			ENDDIALOG()
		else
			SAY("J'aiment? Alors qu'est-ce que vous attendez, donnez-moi �a en vitesse.")
		
			ANSWER("Tenez.",52)
		end
	NODE(52)
		SAY("Le coup classique... Des rapports, des rapports et encore des rapports. Comme si je n'�tais pas d�j� assez occup�. Bien, je vais prendre le temps de voir un peu ce que �a raconte. J'aurai quelque chose � vous faire livrer quand vous reviendrez. En attendant, allez voir Constantine.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		


--------------------------------------------------------------------
--Constantine
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("On pourrait peut-�tre remettre cette conversation � plus tard?")
			ENDDIALOG()
		else
			SAY("J'ai vu que vous venez de parler � Grimm. Ne vous tracassez pas pour si peu, il est toujours de mauvaise humeur, et �a n'est pas un bavard. Il s'imagine toujours qu'il devrait occuper un poste plus �lev�. Dommage qu'il soit coinc� ici avec son petit boulot de chercheur, non? Je m'appelle Constantine, et je travaille comme assistante technique. Ravie de vous rencontrer.")
		
			ANSWER("Je viens d'arriver dans le coin. C'est peut-�tre pour �a qu'ils m'ont donn� une livraison. Dites, qu'est-ce que vous faites de beau dans ce labo?",101)
		end
	NODE(101)
		SAY("Tout ce qui se trouve ici est le top de la technologie, et les murs grouilles de fibres optiques, il y en a des tonnes. Mais malgr� toute cette technologie, on aurait besoin de meilleur mat�riel pour nos plus gros projets.")
		
		ANSWER("Ca doit quand m�me �tre int�ressant, tout �a.",102)
	NODE(102)
		SAY("Oui... Je ne suis pas directement impliqu�e dans les travaux de l'�quipe scientifique, mais j'entends beaucoup de choses. Je suis responsable de l'analyse et de l'enregistrement des diff�rents tests qu'on effectue ici. Toutes les informations sont rassembl�es l�. Si vous avez une question, n'importe laquelle, vous n'avez qu'� me demander.")
		
		ANSWER("Je me posais justement des questions au sujet de votre technologie.",103)
		ANSWER("Pouvez-vous m'en dire plus sur l'histoire des Anges D�chus?",106)
		ANSWER("J'aimerais en savoir plus sur les gens qui vivent et travaillent ici.",107)


--Antwort auf Technik
	NODE(103)
		SAY("J'ai vu beaucoup de projets passer par ici, et je peux vous dire que Tech Haven est incomparable avec Neocron du point de vue technologique. C'est un tout autre ordre de grandeur. L� o� vous �tes, vous �tes au coeur de tout le syst�me. Il y a tant de gadgets et d'appareils autour de vous que vous pouvez travailler beaucoup plus facilement, construire des objets, faire des recherches... C'est l� que les meilleures inventions se r�alisent. Mais ne vous y trompez pas, beaucoup de projets finissent aussi � la poubelle. Malheureusement, Tech Haven perd graduellement son importance dans les domaines des sciences et de la recherche. Depuis que les Anges ont �t� contraints de d�m�nager au D�me d'York, Tech Haven est devenu un lieu de commerce ind�pendant. Mais l'esprit des Anges D�chus est encore tr�s pr�sent dans ces lieux.")
		
		ANSWER("Je n'ai aucune difficult� � vous croire. J'aimerais avoir autant de mat�riel � ma disposition.",104)
	NODE(104)
		SAY("Et vous pouvez. N'importe quel membre peut disposer de ces installations gratuitement. Notre id�e est d'acc�l�rer le processus de recherche. Mais comme les Anges D�chus ont emm�nag� au D�me, Tech Haven perd de l'importance dans les domaines des sciences et de la recherche.")
		
		ANSWER("J'ai encore des questions.",105)

--Fragennode
	NODE(105)
		SAY("Evidemment, si vous voulez savoir quelque chose vous n'avez qu'� me demander.")
		
		ANSWER("La technologie qui nous entoure m'int�resse beaucoup.",103)
		ANSWER("J'aimerais en apprendre plus sur l'histoire des Anges D�chus.",106)
		ANSWER("J'aimerais en apprendre plus sur les gens qui vivent et travaillent ici.",107)
		ANSWER("Je pense que c'est tout pour l'instant. Merci beaucoup.",109)

--Antwort auf Geschichte der FallenAngels
	NODE(106)
		SAY("Je ne connais rien de plus au sujet des Anges que ce que vous pourrez trouver dans la base de donn�es officielle. Mais �a tient en quelques paragraphes, de toute mani�re. Les Moines Psi �taient au pouvoir, � l'�poque, et quelques scientifiques ont d�cid� qu'ils allaient redonner � la Terre son surnom de plan�te bleue. Ils se sont enfuis en 2633, et ont pos� les bases d'une nouvelle structure, ici � Tech Haven. A cette �poque, leur chef s'appelait Thomas Cooper, et aujourd'hui c'est une vraie l�gende. Actuellement, nous sommes au D�me d'York. Notre but n'a pas chang�. Plus la t�che a de l'ampleur, plus elle met du temps � se concr�tiser, je pense.")
		
		ANSWER("Au moins, les Anges D�chus gardent le cap. Je repense � toutes ces factions �go�stes qui ne savent pas o� elles vont... Ca me donne des frissons. Aucune ne sait voir ce qu'elle devrait faire. Enfin... J'ai d'autres questions.",105)

--Antwort auf die Leute von Tech Haven
	NODE(107)
		SAY("Les gens qui vivent ici avec nous sont principalement des individus qui veulent changer le monde sans avoir recours � des armes. Ou bien qui ne voulaient plus vivre dans la crainte de Neocron ou des Terres Br�l�es. Je connais des gens qui ont pass� toutes leur vie � tenter d'am�liorer la qualit� de vie dans un environnement radioactif. Actuellement, c'est Sylvia Bennet qui dirige le Conseil Scientifique. C'est un bon chef, je trouve. M�me si je n'en ai pas connu d'autres. Les autres membres du Conseil changent constamment, et je n'arrive pas � retenir tous les noms. Je n'ai jamais vu l'administratrice syst�me non plus. Beaucoup de rumeurs circulent � son sujet. Surtout � son sujet, d'ailleurs.")
		
		ANSWER("Quel genre de rumeurs. Pourquoi personne ne la voit jamais?",108)
	NODE(108)
		SAY("Aucune id�e. Je ne suis qu'une subalterne. On dit que c'est une gamine, mais une gamine avec une mentalit� d'adulte. Ou bien une mutante. Personnellement, je ne veux pas y croire, je trouve qu'elle fait du bon travail et �a me suffit.")
		
		ANSWER("En effet, j'ai entendu dire que c'�tait un des meilleurs hackers de tout Neocron. J'ai encore d'autres questions...",105)

--Ende der Konversation
	NODE(109)
		SAY("Si vous voulez commencer une recherche par vous-m�me, je pourrai vous donner un coup de main, �ventuellement. Ah, je crois que Grimm a termin�. Vous devriez aller lui parler. Bonne chance.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(110)
		ENDDIALOG()
		
	NODE(110)
		SAY("Je dois retourner travailler. Vous avez parl� � Grimm?")
		SETNEXTDIALOGSTATE(111)
		ENDDIALOG()
		
	NODE(111)
		SAY("Je vais vous dire un secret, mais ne le r�p�tez � personne, compris? On a vu dans les Terres Br�l�es des appareils volants gigantesques. Ca ne me dit rien qui vaille.")
		ENDDIALOG()
--------------------------------------------------------------------
--Grimm
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je n'ai pas fini de lire tous les rapports. Allez parler � Constantine, occupez-vous ailleurs, mais fichez-moi la paix.")
		else
			SAY("Des d�cisions, des d�cisions et encore des d�cisions. C'est toujours la m�me rengaine. Si j'�tais le chef, je mettrais un bon coup de balai dans tout �a. Quant � vous, je vais vous faire surveiller, je vous ai vu soustraire � Constantine des infos importantes, vous allez certainement les diffuser.")
		
			ANSWER("C'est ridicule, on n'a fait que discuter.",151)
		end
	NODE(151)
		GIVEITEM(9308)
		SAY("Et c'est �a votre alibi? Enfin bref, c'est pas grave. Personne ne suivra jamais mes directives, de toute mani�re. Tenez, prenez �a et donnez-le au directeur du personnel.")
		SETNEXTDIALOGSTATE(152)
		ENDDIALOG()
		
	NODE(152)
		SAY("Je ne vous ai pas donn� ce paquet pour que vous le regardiez! Transmettez �a au directeur du personnel!")
		ENDDIALOG()


--------------------------------------------------------------------
--Personal Director
--200
	NODE(200)
		TAKEITEM(9308)
		if(result==0)then
			SAY("Grimm se trouve dans le r�acteur 01. Il attend vos rapports.")
			ENDDIALOG()
		else
			SAY("Ce sont les rectifications du professeur Grimm?")
		
			ANSWER("Aucune id�e de ce que c'est, mais en effet c'est Grimm qui m'a donn� �a. Pas aimable, le bonhomme.",201)
		end
	NODE(201)
		GIVEMONEY(2000)
		SAY("Oui, possible, mais c'est un tr�s bon employ�. Nous sommes conscients du fait qu'il ne fera jamais un bon chef, mais n'�bruitez pas l'information, �a ne servirait � rien. Et �tudiez un peu. Plus en saurez, plus vite on pourra vous donner de nouvelles missions. (prochaine mission au niveau 20)")
		EPICRUNFINISHED(14,0)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()


end