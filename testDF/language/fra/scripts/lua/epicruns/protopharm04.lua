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
		SAY("Brandon George m'a demand� de vous dire qu'il avait besoin de vous. Vous devriez aller le voir tout de suite. J'ai entendu dire que Sandra Frasier lui avait donn� les pleins pouvoirs dans cette affaire. Je pense que la mission sera tr�s importante. Bonne chance, quoi que vous fassiez.")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("George vous cherche partout. Alors d�p�chez-vous d'aller lui parler.")
		ENDDIALOG()
--------------------------------------------------------------------
--GEORGE
--50
	NODE(50)
		SAY("J'esp�rais devoir utiliser vos comp�tences une fois de plus. Comme vous le savez peut-�tre, tout tourne en ce moment autour du CryoVault manquant. Personne ne sait comment Jakob Finster a �t� retir� du secteur 13 sans d�clencher une seule alarme. Je pense que Michail est impliqu� dans cette affaire d'une mani�re ou d'une autre.")

		ANSWER("Vous avez une preuve?",51)
	NODE(51)
		SAY("Pas vraiment, mais ProtoPharm pourrait le renvoyer rien que pour le travail qu'il effectue en ce moment. Nous devons localiser Jakob Finster, et d�terminer s'il s'agit d'un double ou non. Nous ne pouvons pas �tre compl�tement certains que Finster n'est pas en libert� quelque part, maintenant que son CryoVault a disparu.")

		ANSWER("On devrait peut-�tre tout reprendre depuis le d�but et chercher des indices.",52)
	NODE(52)
		SAY("C'est pour �a que les proc�dures standard existent. J'ai effectu� quelques recherches, et j'ai d�couvert que la raison pour laquelle Finster serait entr� dans un CryoVault, ce serait une maladie. Une maladie qu'il �tait impossible de gu�rir � l'�poque. Il pourrait y avoir eu d'autres raisons, mais ce n'est que pure sp�culation.")

		ANSWER("On en sait plus sur cette maladie?",53)
	NODE(53)
		SAY("Non. Tout ce que je sais, c'est que ces documents ont disparu lorsque Jan Pixner a pris la direction de la compagnie. Mais tout semble indiquer que Finster n'ait pas �t� d�gel� depuis vingt ans. C'�tait sa derni�re volont�, et il semble qu'il soit rest� dans son CryoVault depuis presque un si�cle. Je pense que quelqu'un a fini par avoir piti� de lui, ou bien a pens� � un moyen de l'utiliser. Ou bien Finster a inclus un dispositif de s�curit� qui le d�cong�lerai apr�s un certain temps.")

		ANSWER("On entre dans le domaine de la sp�culation. Je sugg�re que nous v�rifions d'abord qui est responsable de la garde du CryoVault. Si nous avons de la chance, cela pourrait nous donner une poste int�ressante.",54)
	NODE(54)
		SAY("Vous avez raison, �a pourrait marcher. Allez voir Gregory Parkins au labo, il a une cl� pour acc�der au CryoVault. Les autres cl�s sont dans une chambre prot�g�e qui ne peut s'ouvrir que tous les deux jours. Je pense donc que ces cl�s n'ont pas �t� utilis�es. Donc, pour moi Gregory est impliqu� dans l'affaire.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		
	

--------------------------------------------------------------------
--GREGORY
--100
	NODE(100)
		SAY("Qu'est-ce que vous voulez? Le labo n'est pas un terrain de jeu. Ceux qui n'ont rien � faire ici ne font que prendre de la place qui pourrait servir � autre chose.")

		ANSWER("Ne vous inqui�tez pas, j'ai de bonnes raisons d'�tre l�. Je veux savoir qui a emprunt� votre cl� d'acc�s au CryoVault.",101)
	NODE(101)
		SAY("Je ne vois pas de quoi vous parlez. Cette cl� a toujours �t� ici dans ma poche. Je connais mon m�tier.")

		ANSWER("Vraiment? Alors expliquez-moi pourquoi il manque un CryoVault? Et pas n'importe lequel, en plus.",102)
	NODE(102)
		SAY("Hum... Oui, bien s�r, c'est parce que... Bon, d'accord. Je suis dedans jusqu'au cou de toute mani�re, pas la peine d'esquiver. On m'a fait chanter en mena�ant de r�v�ler des choses sur moi, et je ne pouvais pas laisser faire �a.")

		ANSWER("Vous voulez dire que vous avez donn� les clefs � quelqu'un?",103)
	NODE(103)
		SAY("Oui, mais je ne peux pas dire � quoi ils ressemblaient, m�me si ma vie en d�pendait. Ils avaient tous des masques � gaz, et des manteaux � capuche. Personne n'aurait pu les identifier. Je ne peux rien dire d'autre � ce sujet, il faut me croire!")

		ANSWER("Qu'est-ce que c'�tait, ce secret avec lequel ils vous ont fait chanter?",104)
	NODE(104)
		SAY("J'aurais mieux fait de ne rien dire. D�sol�, mais je ne vous dirai rien m�me si je me fais renvoyer pour �a.")
		SETNEXTDIALOGSTATE(250)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
--------------------------------------------------------------------
--GEORG BRANDON
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Essayez d'avoir toutes les informations que vous pouvez de la part de Gregory. J'attends votre rapport ici m�me.")
			ENDDIALOG()
		else
			SAY("Ahh, vous voil�. Vous avez trouv� une piste int�ressante?")

			ANSWER("Gregory a reconnu avoir donn� sa cl� � quelqu'un de l'ext�rieur. Ils l'ont visiblement fait chanter au sujet d'un secret personnel. Il n'a pas voulu en dire plus.",151)
		end
	NODE(151)
		SAY("Gregory? Un secret? Je me souviens qu'il avait un poste d'assistant chez Crahn avant de venir travailler pour nous. Il y a peut-�tre un rapport. Je sais qu'il y a un pr�tre de Crahn qui vit dans Crest Village. Autrefois, il avait beaucoup d'influence au sein de la secte, et s'il existe quelqu'un qui conna�t le secret de Gregory, c'est lui. Essayez de lui soutirer tout ce que vous pouvez. Et lorsque vous avez les �l�ments n�cessaires, il sera temps de retourner voir Gregory pour lui remettre le nez dans ses sales affaires.")
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
		


--------------------------------------------------------------------
--pater morpheus
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ce lieu est interdit � ceux qui n'ont jamais connu la gloire de Crahn.")
			ENDDIALOG()
		else
			SAY("Comme vous �tes loin de la ville, j'imagine que vous avez perdu votre chemin. Allez-vous en, avant qu'un monstre ne d�cide de festoyer de vos tripes.")

			ANSWER("Je n'ai pas voyag� jusqu'ici pour rentrer les mains vides. Je veux des r�ponses.",201)
		end
	NODE(201)
		SAY("Apparemment, vous avez c�d� � la corruption de la ville, et vous �tes maintenant un esclave de choix pour Reza.")

		ANSWER("Je ne suis l'esclave de personne. Je cherche des r�ponses, et c'est vous que allez me les donner.",202)
	NODE(202)
		SAY("Au moins, vous avez du caract�re. Peut-�tre tout n'est-il pas perdu. Alors dites-moi, qu'est-ce que je peux faire pour vous?")

		ANSWER("Un certain Gregory Parkins a travaill� pour vous il y a quelques temps comme assistant m�dical. Il porte en lui un secret depuis ce temps, et je voudrais le conna�tre.",203)
	NODE(203)
		SAY("Le monde porte en lui de nombreux secrets, et certains de ces secrets ne doivent pas �tre r�v�l�s. Mais si ce secret est tr�s important pour vous, alors je vais tout d'abord vous demander une faveur.")

		ANSWER("Je m'y attendais. Je ne connais aucun membre de votre secte donnant des informations gratuitement.",204)
	NODE(204)
		SAY("Votre ignorance est grande, et je vous pardonne. Mais je vous avertis : encore une parole de ce genre, et ce secret le restera � jamais.")

		ANSWER("C'est bon, c'est bon, je ne voulais pas vous insulter.",205)
	NODE(205)
		SAY("Alors je vais te demander de te venger de ces cr�atures qui se font appeler les Anges D�chus. Ils ont attaqu� un groupe de fr�res de Crahn innocents et les ont massacr� avec la plus grande cruaut�. ce fut un triste jour pour nous, et la vengeance doit venir sans plus attendre. Vous aurez l'honneur de faire go�ter aux Anges D�chus ce que les repr�sailles de Crahn signifient. Revenez me voir d�s que vous avez accompli votre t�che.")

		ANSWER("Il faut donc que je tue un Ange D�chu?",206)
	NODE(206)
		SAY("Oui. Un runner, pour �tre pr�cis. Peu importe lequel, de toutes fa�ons nous les abattrons tous un jour ou l'autre.")
		SETNEXTDIALOGSTATE(207)
		ENDDIALOG()
		
--SPIELER KILLT EINEN FALLEN ANGEL

	NODE(207)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("D'abord, vous devez liquider un Ange D�chu. Ensuite, nous reprendrons notre int�ressante conversation.")
			ENDDIALOG()
		else		
			SAY("Vous avez fait du bon travail, et pour cela vous recevrez une juste r�compense.")

			ANSWER("Alors dites-moi. Cette histoire commence � tra�ner en longueur.",208)
		end
	NODE(208)
		SAY("Pauvre Gregory. En effet, il a travaill� pour Crahn .Je l'admets. Il recherchait des m�dicaments tr�s importants, et il �tait tr�s attach� � son travail. Mais un jour, il a franchi la limite � ne pas franchir. Certaines de ses exp�riences �taient men�es sur des mutants. Des cr�atures qui ne devaient pas vivre de toutes fa�ons.")

		ANSWER("Mais ces exp�riences, vous les avez permises, non?",209)
	NODE(209)
		SAY("Nous ne lui avions donn� qu'un seul ordre : celui de progresser. Et nous lui avons donn� les moyens d'accomplir sa mission. Mais un jour, au lieu de faire ses exp�riences sur des mutants, il a choisi un jeune gar�on humain. Il a inject� dans ses veines une substance qui a paralys� tous ses nerfs d�finitivement. Il a tent� de se disculper en disant qu'il pensait que c'�tait un mutant. Ridicule! Evidemment, il a �t� renvoy� le m�me jour. Et maintenant, arr�tez de m'importuner.")
		SETNEXTDIALOGSTATE(210)
		ENDDIALOG()
		
	NODE(210)
		SAY("J'ai d�j� dit tout ce que j'avais � dire.")

		ENDDIALOG()

--------------------------------------------------------------------
--Gregory
--250

	NODE(250)
 		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Si vous voulez bien, j'aimerais poursuivre mes exp�riences.")
			ENDDIALOG()
		else
			SAY("Quoi encore? Je ne vous ai pas d�j� tout dit?")
	
			ANSWER("Non, pas tout. J'ai d�couvert votre secret. Mon dieu, pauvre enfant, c'est horrible...",251)
		end
	NODE(251)
		SAY("Quoi? Qu'est-ce que vous voulez dire?")
		
		ANSWER("Vous avez utilis� un enfant comme cobaye. Un ENFANT. Vous avez d�truit son syst�me nerveux en lui injectant un...",252)
	NODE(252)
		SAY("Assez! Assez! Oui, c'est vrai, et croyez-le ou pas, j'en suis d�sol�. Mais vous ne savez pas ce que c'est de travailler pour Crahn. Ils me donnaient des missions les unes apr�s les autres, et ma seule possibilit� de tenir le rythme �tait de faire des exp�riences sur des mutants. Apr�s quelques semaines, je ne me rendais m�me plus compte que c'�taient des �tres humains.")
		
		ANSWER("Continuez.",253)
	NODE(253)
		SAY("J'ai vraiment cru que c'�tait un mutant, pas un enfant en bonne sant�. Je l'ai mis sur la civi�re dans le laboratoire. Il �tait sale et inconscient. Il �tait aussi sale que les mutants. Je n'ai m�me pas enlev� son masque, sinon je m'en serais rendu compte. Vous devez me croire. J'en fais encore des cauchemars.")
		
		ANSWER("M�me si je ne vous aurais pas cru capable d'une pareille chose, je vais garder votre secret. Mais vous allez devoir me dire toute ce que vous savez.",254)
	NODE(254)
		SAY("D'accord. Mais n'en parlez � personne, ou bien je suis fini. Le CryoVault qui contenait le corps de Finster a �t� emmen� par un double de Finster lui-m�me. Il voulait l'emmener quelque part dans la zone industrielle. Je ne sais rien de plus, allez-vous en maintenant.")
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
			SAY("Allez voir le p�re Morpheus � Crest Village, puis retournez voir Gregory pour l'interroger de nouveau.")
			ENDDIALOG()
		else
			SAY("Alors, quelles sont les nouvelles?")
		
			ANSWER("Je vous �pargnerai les d�tails au sujet de Gregory et de son secret, mais il a dit que c'est Jakob Finster qui est venu chercher le CryoVault lui-m�me.",301)
		end
	NODE(301)
		SAY("Alors �a me conforte dans l'id�e qu'il y a un double qui travaille dans l'ombre. Mais �a ne nous aide pas beaucoup.")
		
		ANSWER("Il a aussi dit que Finster voulait emmener le CryoVault dans le secteur industriel. J'en suis pratiquement certain.",302)
	NODE(302)
		SAY("Je m'attendais � entendre �a. Maintenant, on peut commencer les pr�paratifs. Tenez, voici votre r�compense. J'esp�re qu'on continuera � travailler ensemble. (prochaine mission au niveau 40)")
		EPICRUNFINISHED(6,3)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
		



end