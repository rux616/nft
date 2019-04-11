
--new
function DIALOG()

--Human Resource Director
	NODE(0)
		SAY("Je vois que tu as travaillé fort pour prouver ta loyauté envers notre ordre. Au nom de saint Crahn, je te remercie pour ton dévouement. Si tu désires continuer de servir l'ordre, nous serions prêts à te confier des missions plus complexes. Es-tu prêt pour ce défi?")

		ANSWER("Oui père. Je me soumets corps et âme à la volonté de Crahn.",1)
		ANSWER("Désolé, je ne suis pas encore prêt pour une telle tâche.",8)

	NODE(1)
		SAY("Voici les faits... Mark Cole, un ex-membre des Anges Déchus, nous a informé qu'il est en possession d'un objet d'une grande valeur. Il n'a pas mentionné de quel objet il s'agissait. L'ordre n'est pas sûr que Cole soit honnête et nous ne voulons pas qu'il soit méfiant.")

		ANSWER("Il n'est même pas des nôtres, pourquoi s'abaisserait-on à aller le voir?",2)
	NODE(2)		
		SAY("C'est juste. C'est pourquoi l'ordre a décidé de ne pas lui envoyer un frère haut placé. Mais vu que nous avons besoin de savoir quel est cet objet, je te demande de le prendre à Cole et d'aller le porter à Père Manus, que tu trouveras ici dans notre cathédrale, dans l'Outzone. Père Manus va pouvoir l'examiner de plus près.")

		ANSWER("Qui donc est Mark Cole et qui sont les Anges Déchus?",3)
	NODE(3)
		SAY("Cole a longtemps travaillé pour les Anges Déchus. Les Anges Déchus sont une association de scientifiques qui vivent live exilés dans les Terres Brûlées. Leur base d'opérations, une Mecque du péché, se nomme Tech Haven. Aujourd'hui, ils ont choisi d'habituer dans ce qui reste du Dôme d'York. Les rapports entre la fraternité et les Anges Déchus sont tendus à cause de certains événements malheureux, mais cela ne signifie pas que nous rejetons en bloc toute coopération avec les savants de Tech Haven.")

		ANSWER("Cole ne travaille plus pour eux, alors? Que s'est-il passé?",4) 
	NODE(4)
		SAY("Contrairement à ce qu'il dit, Cole fut banni des Anges Déchus après avoir essayé de vendre des projets scientifiques secrets des Anges.")

		ANSWER("Où exactement puis-je trouver Cole?",5)
	NODE(5)
		SAY("Cole t'attend au Dôme d'York, dans un secteur où on vend toutes sortes d'armes. Personne n'a cherché à contrôler l'endroit, parce que tout le monde en bénéficie. C'est là que se trouve Cole. Dans le secteur 6.")

		ANSWER("CONTINUER",6)
	NODE(6) 
		SAY("Ensuite, transmets mes hommages à Père Manus. Son oeuvre est une source d'inspiration pour nous tous. Acceptes-tu cette mission?")

		ANSWER("Oui père... Je ne décevrai pas Crahn.",7)
	NODE(7)
		SAY("Que le saint Crahn protège ta mission.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(150)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()


	NODE(8)
		SAY("Reviens ici quand tu te sentiras de taille à relever le défi.")
		ENDDIALOG()

-----------------------------------------------------------------
--Ethan Cole
	NODE(50)
		ACTIVATEDIALOGTRIGGER(0)
			SAY("Tu es le jeune moine que la Fraternité m'envoie? Pourquoi père Manus n'est-il pas venu lui-même?")

			ANSWER("S'il te plaît Cole... Je n'ai pas beaucoup de temps. Donne-moi ce que je recherche.",51)

	NODE(51)
		SAY("Pas si vite, l'ami... Depuis que je ne suis plus chez les Anges Déchus, ma vie est devenue plutôt dangereuse. Les Anges veulent ma peau, parce qu'ils craignent que je vende leurs secrets, que je connais depuis que j'ai travaillé dans leurs labos.") 

		ANSWER("Je n'ai rien à faire de tes problèmes. Je pensais que tu étais censé me donner quelque chose d'important. Le reste, je m'en fiche.",52)

	NODE(52)
		SAY("Comprends-moi... Je suis fauché et je ne peux même pas acheter une arme toute simple. L'objet que j'ai est très précieux pour la Fraternité, mais presque inutile pour moi. Trouve-moi une arme simple... un stiletto... et je te donnerai ce que tu cherches.")

		ANSWER("Très bien... Je t'amènerai ton stiletto. Attends-moi ici.",53)

	NODE(53)
		SAY("Où dois-je aller? Les exécuteurs des Anges Déchus se cachent partout. Il n'y a que dans la pénombre de ce marché que je me sens un peu en sécurité.")
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
			SAY("Donne-moi le couteau... voici ton truc. Maintenant disparais... Il ne faut pas qu'on nous voie ensemble. Je me demande bien ce que Père Manus va faire de ce bibelot.")

			ANSWER("Je vois... Maintenant que tu as eu ce que tu voulais, tu montres ton vrai visage. Si tu crois vraiment pouvoir combattre les Anges Déchus avec un stiletto, prépare-toi à une surprise de taille. Pour ma part, je n'aurai aucun regret à voir ta dépouille pourrir lentement dans les Terres Brûlées.",55)
		end

	NODE(55)
		SAY("Ouais, ouais... maintenant va au diable.")

		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(56)
		SAY("Dégage. Je ne veux pas être vu avec toi. Tu ne devais pas donner cet objet à donner à quelqu'un?.")
		ENDDIALOG()


-----------------------------------------------------------------
--Pater Agnus
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je n'ai pas le temps de parler aux jeunes moines.")
			ENDDIALOG()
		else
			SAY("Bienvenue dans notre abbaye, jeune moine. L'ordre m'avait annoncé ta venue. As-tu rencontré Cole?")
		
			ANSWER("Oui, mais il me reste quelque chose d'important à faire. Désolé.",109)
			ANSWER("Oh oui... il est vraiment méprisable.",101)
		end
	NODE(101)
		SAY("Oui, c'est un imbécile... et un traître... Est-ce qu'il t'a donné l'objet?")
	
		ANSWER("Oui père. Mais je ne sais pas ce que c'est. C'est en métal, et ça dégage une certaine chaleur au toucher.",103)
	NODE(103)
		SAY("Laisse-moi voir.")

		ANSWER("Bien sûr, le voici.",104)

	NODE(104)
		TAKEITEM(9000)
		if(result==0)then
			SAY("Mais, où est l'objet? Sans lui, on ne peur rien faire.")
			ENDDIALOG()
		else
			SAY("Intéressant... cet objet est du Tacholytium. Un métal chaud et légèrement radioactif. Si tu le regardes dans le noir, tu remarqueras même qu'il brille légèrement. C'est aussi la raison pour laquelle nos ancêtres l'utilisaient.")

			ANSWER("CONTINUER",105)
		end
	NODE(105)
		SAY("...Aux temps anciens, lorsque nous vivions depuis des générations sous terre, après la Grande Lumière, plusieurs appareils bizarres des anciens Moines Psi furent construits à partir de Tacholytium. Je devrais probablement consulter d'anciens registres pour bien saisir le rôle de cet élément.")

		ANSWER("Ca signifierait que cet objet vaut quelque chose, tout compte fait?",106)
	NODE(106)
		SAY("La patience, jeune moine, est une vertu. Je vais me retirer aux archives afin de répondre pleinement à ta question. D'ici là, je vais conserver cela à l'abri des regards. Il est très possible que ce soit la clé d'un mystère crucial.")

		ANSWER("Qu'il en soit ainsi. Merci père.",107)
	NODE(107)
		SAY("Maintenant retourne au QG. Ils t'attendent déjà. Que Crahn bénisse ta route.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(108)
		ENDDIALOG()
	NODE(108)
		SAY("Désolé, je dois aller aux archives. Retourne au quartier général.")
		ENDDIALOG()
	NODE(109)
		SAY("N'oublie pas de parler à Cole.")
		ENDDIALOG()

-----------------------------------------------------------------
--Official Resources Director
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Je te rappelle que tu as une tâche. La mission n'est pas encore terminée. Tu trouveras Mark dans le secteur 6, et père Manus attend également ta venue.")
			ENDDIALOG()
		else
			SAY("Bienvenue à la maison, jeune moine. Père Agnus m'a déjà parlé du succès de ta mission et de l'objet étrange. Tuas bien agi. En particulier concernant la manière dont tu as agi avec Cole. Je sais que c'est un personnage très désagréable et impertinent.")

			ANSWER("Crahn m'a doté d'une patience à toute épreuve.",151)
		end
	NODE(151)
		SAY("Comme récompense, tu vas recevoir 2000 crédits. Je te suggère d'investir cet argent dans ton équipement PSI.")

		ANSWER("Merci père. Je vais tenir compte de ta suggestion.",152)
	NODE(152)
		SAY("Si tu améliores tes compétences, je pourrais avoir très bientôt une autre mission spéciale pour toi. Que Crahn te bénisse. Maintenant, tu dois aller te mêler à la populace pour t'entraîner à utiliser tes pouvoirs PSI.")
		GIVEMONEY(2000)
		EPICRUNFINISHED(10,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
end