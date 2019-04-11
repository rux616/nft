
--new
function DIALOG()

--Human Resource Director
	NODE(0)
		SAY("Je vois que tu as travaill� fort pour prouver ta loyaut� envers notre ordre. Au nom de saint Crahn, je te remercie pour ton d�vouement. Si tu d�sires continuer de servir l'ordre, nous serions pr�ts � te confier des missions plus complexes. Es-tu pr�t pour ce d�fi?")

		ANSWER("Oui p�re. Je me soumets corps et �me � la volont� de Crahn.",1)
		ANSWER("D�sol�, je ne suis pas encore pr�t pour une telle t�che.",8)

	NODE(1)
		SAY("Voici les faits... Mark Cole, un ex-membre des Anges D�chus, nous a inform� qu'il est en possession d'un objet d'une grande valeur. Il n'a pas mentionn� de quel objet il s'agissait. L'ordre n'est pas s�r que Cole soit honn�te et nous ne voulons pas qu'il soit m�fiant.")

		ANSWER("Il n'est m�me pas des n�tres, pourquoi s'abaisserait-on � aller le voir?",2)
	NODE(2)		
		SAY("C'est juste. C'est pourquoi l'ordre a d�cid� de ne pas lui envoyer un fr�re haut plac�. Mais vu que nous avons besoin de savoir quel est cet objet, je te demande de le prendre � Cole et d'aller le porter � P�re Manus, que tu trouveras ici dans notre cath�drale, dans l'Outzone. P�re Manus va pouvoir l'examiner de plus pr�s.")

		ANSWER("Qui donc est Mark Cole et qui sont les Anges D�chus?",3)
	NODE(3)
		SAY("Cole a longtemps travaill� pour les Anges D�chus. Les Anges D�chus sont une association de scientifiques qui vivent live exil�s dans les Terres Br�l�es. Leur base d'op�rations, une Mecque du p�ch�, se nomme Tech Haven. Aujourd'hui, ils ont choisi d'habituer dans ce qui reste du D�me d'York. Les rapports entre la fraternit� et les Anges D�chus sont tendus � cause de certains �v�nements malheureux, mais cela ne signifie pas que nous rejetons en bloc toute coop�ration avec les savants de Tech Haven.")

		ANSWER("Cole ne travaille plus pour eux, alors? Que s'est-il pass�?",4) 
	NODE(4)
		SAY("Contrairement � ce qu'il dit, Cole fut banni des Anges D�chus apr�s avoir essay� de vendre des projets scientifiques secrets des Anges.")

		ANSWER("O� exactement puis-je trouver Cole?",5)
	NODE(5)
		SAY("Cole t'attend au D�me d'York, dans un secteur o� on vend toutes sortes d'armes. Personne n'a cherch� � contr�ler l'endroit, parce que tout le monde en b�n�ficie. C'est l� que se trouve Cole. Dans le secteur 6.")

		ANSWER("CONTINUER",6)
	NODE(6) 
		SAY("Ensuite, transmets mes hommages � P�re Manus. Son oeuvre est une source d'inspiration pour nous tous. Acceptes-tu cette mission?")

		ANSWER("Oui p�re... Je ne d�cevrai pas Crahn.",7)
	NODE(7)
		SAY("Que le saint Crahn prot�ge ta mission.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(150)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()


	NODE(8)
		SAY("Reviens ici quand tu te sentiras de taille � relever le d�fi.")
		ENDDIALOG()

-----------------------------------------------------------------
--Ethan Cole
	NODE(50)
		ACTIVATEDIALOGTRIGGER(0)
			SAY("Tu es le jeune moine que la Fraternit� m'envoie? Pourquoi p�re Manus n'est-il pas venu lui-m�me?")

			ANSWER("S'il te pla�t Cole... Je n'ai pas beaucoup de temps. Donne-moi ce que je recherche.",51)

	NODE(51)
		SAY("Pas si vite, l'ami... Depuis que je ne suis plus chez les Anges D�chus, ma vie est devenue plut�t dangereuse. Les Anges veulent ma peau, parce qu'ils craignent que je vende leurs secrets, que je connais depuis que j'ai travaill� dans leurs labos.") 

		ANSWER("Je n'ai rien � faire de tes probl�mes. Je pensais que tu �tais cens� me donner quelque chose d'important. Le reste, je m'en fiche.",52)

	NODE(52)
		SAY("Comprends-moi... Je suis fauch� et je ne peux m�me pas acheter une arme toute simple. L'objet que j'ai est tr�s pr�cieux pour la Fraternit�, mais presque inutile pour moi. Trouve-moi une arme simple... un stiletto... et je te donnerai ce que tu cherches.")

		ANSWER("Tr�s bien... Je t'am�nerai ton stiletto. Attends-moi ici.",53)

	NODE(53)
		SAY("O� dois-je aller? Les ex�cuteurs des Anges D�chus se cachent partout. Il n'y a que dans la p�nombre de ce march� que je me sens un peu en s�curit�.")
		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()

	NODE(54)
		--Spieler gibt Ethan das Messer

		TAKEITEM(19)
		if(result==0)then
			SAY("Allez, va me chercher ce couteau...Allez!")
			ENDDIALOG()
		else
			GIVEITEM(9000)
			SETNEXTDIALOGSATE(55)
			SAY("Donne-moi le couteau... voici ton truc. Maintenant disparais... Il ne faut pas qu'on nous voie ensemble. Je me demande bien ce que P�re Manus va faire de ce bibelot.")

			ANSWER("Je vois... Maintenant que tu as eu ce que tu voulais, tu montres ton vrai visage. Si tu crois vraiment pouvoir combattre les Anges D�chus avec un stiletto, pr�pare-toi � une surprise de taille. Pour ma part, je n'aurai aucun regret � voir ta d�pouille pourrir lentement dans les Terres Br�l�es.",55)
		end

	NODE(55)
		SAY("Ouais, ouais... maintenant va au diable.")

		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(56)
		SAY("D�gage. Je ne veux pas �tre vu avec toi. Tu ne devais pas donner cet objet � donner � quelqu'un?.")
		ENDDIALOG()


-----------------------------------------------------------------
--Pater Agnus
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je n'ai pas le temps de parler aux jeunes moines.")
			ENDDIALOG()
		else
			SAY("Bienvenue dans notre abbaye, jeune moine. L'ordre m'avait annonc� ta venue. As-tu rencontr� Cole?")
		
			ANSWER("Oui, mais il me reste quelque chose d'important � faire. D�sol�.",109)
			ANSWER("Oh oui... il est vraiment m�prisable.",101)
		end
	NODE(101)
		SAY("Oui, c'est un imb�cile... et un tra�tre... Est-ce qu'il t'a donn� l'objet?")
	
		ANSWER("Oui p�re. Mais je ne sais pas ce que c'est. C'est en m�tal, et �a d�gage une certaine chaleur au toucher.",103)
	NODE(103)
		SAY("Laisse-moi voir.")

		ANSWER("Bien s�r, le voici.",104)

	NODE(104)
		TAKEITEM(9000)
		if(result==0)then
			SAY("Mais, o� est l'objet? Sans lui, on ne peur rien faire.")
			ENDDIALOG()
		else
			SAY("Int�ressant... cet objet est du Tacholytium. Un m�tal chaud et l�g�rement radioactif. Si tu le regardes dans le noir, tu remarqueras m�me qu'il brille l�g�rement. C'est aussi la raison pour laquelle nos anc�tres l'utilisaient.")

			ANSWER("CONTINUER",105)
		end
	NODE(105)
		SAY("...Aux temps anciens, lorsque nous vivions depuis des g�n�rations sous terre, apr�s la Grande Lumi�re, plusieurs appareils bizarres des anciens Moines Psi furent construits � partir de Tacholytium. Je devrais probablement consulter d'anciens registres pour bien saisir le r�le de cet �l�ment.")

		ANSWER("Ca signifierait que cet objet vaut quelque chose, tout compte fait?",106)
	NODE(106)
		SAY("La patience, jeune moine, est une vertu. Je vais me retirer aux archives afin de r�pondre pleinement � ta question. D'ici l�, je vais conserver cela � l'abri des regards. Il est tr�s possible que ce soit la cl� d'un myst�re crucial.")

		ANSWER("Qu'il en soit ainsi. Merci p�re.",107)
	NODE(107)
		SAY("Maintenant retourne au QG. Ils t'attendent d�j�. Que Crahn b�nisse ta route.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(108)
		ENDDIALOG()
	NODE(108)
		SAY("D�sol�, je dois aller aux archives. Retourne au quartier g�n�ral.")
		ENDDIALOG()
	NODE(109)
		SAY("N'oublie pas de parler � Cole.")
		ENDDIALOG()

-----------------------------------------------------------------
--Official Resources Director
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Je te rappelle que tu as une t�che. La mission n'est pas encore termin�e. Tu trouveras Mark dans le secteur 6, et p�re Manus attend �galement ta venue.")
			ENDDIALOG()
		else
			SAY("Bienvenue � la maison, jeune moine. P�re Agnus m'a d�j� parl� du succ�s de ta mission et de l'objet �trange. Tuas bien agi. En particulier concernant la mani�re dont tu as agi avec Cole. Je sais que c'est un personnage tr�s d�sagr�able et impertinent.")

			ANSWER("Crahn m'a dot� d'une patience � toute �preuve.",151)
		end
	NODE(151)
		SAY("Comme r�compense, tu vas recevoir 2000 cr�dits. Je te sugg�re d'investir cet argent dans ton �quipement PSI.")

		ANSWER("Merci p�re. Je vais tenir compte de ta suggestion.",152)
	NODE(152)
		SAY("Si tu am�liores tes comp�tences, je pourrais avoir tr�s bient�t une autre mission sp�ciale pour toi. Que Crahn te b�nisse. Maintenant, tu dois aller te m�ler � la populace pour t'entra�ner � utiliser tes pouvoirs PSI.")
		GIVEMONEY(2000)
		EPICRUNFINISHED(10,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
end