function DIALOG()

	NODE(0)
		SAY("Yo, ca baigne?.")
		
		ANSWER("C'est toi qui t'occupes de ces deux beaut�s?",1)
		ANSWER("Faut que j'y aille.",100)

--Geschlechterspaltung		
	NODE(1)
		GENDERCHECK()
		if (result==1) then
			SAY("Ouais, mec! T'as envie d'exotique?")
			ANSWER("Exotique? Tu peux pr�ciser?",10)
		else
			SAY("Alors ma belle? Tu veux de l'exotique?")
			ANSWER("J'ai besoin d'argent!",20)
			ANSWER("Euh... Qu'est-ce que tu proposes de sp�cial?",25)
			ANSWER("Je suis pas branch�e dans ton trip, p'tit mec.",102)
		end

--M�nner
	NODE(10)
		SAY("J'ai ici les plus chaudes suceuses de tout le quartier. C'est pas pour les amateurs! C'est du premier choix!")
		ANSWER("Sympa! Et elles font quoi?",11)
	NODE(11)
		SAY("D'abord, mettons les choses au point! Y a rien � cacher! Chacune a quelques petites mutations marrantes. Plein de nichons, plusieurs chattes, des langues ultra-longues, tout ce que tu peux vouloir! Mais je suis un gars correct, je fais pas dans le d�gueulasse, �a reste regardable.")
		ANSWER("C'est un truc de fou! Ca fait des ann�es que je cherche �a! C'est combien?",12)
		ANSWER("T'es compl�tement jet�... Y a des clients pour �a? Faut te faire soigner, mon gars!",101)
	NODE(12)
		SAY("On s'en fout du prix, l'important c'est qu'on s'�clate. Tant que t'y a pas go�t�, tu peux pas t'imaginer toutes les possibilit� qu'elles ont. Une langue de 50 centim�tres de long! T'imagines comment �a t'enroule le truc? Schlurp!")
		ANSWER("Ouais, ouais, j'ai compris le topo, dis-moi juste combien!",13)
	NODE(13)
		SAY("Les prix sont � la hauteur de la performance. On commence � 200.000 cr�dits, et pour �a tu peux avoir la...")
		ANSWER("200.000?! T'es pas bien? Tu trouves des clients � ce prix?",14)
	NODE(14)
		SAY("J'te le dis, les prix sont � la hauteur de la perf...")
		ANSWER("Ouais, ben pour ce prix-l�, je pr�f�re encore aller me palucher tout seul!",15)
	NODE(15)
		SAY("La fid�le veuve poignet, hein?")
		ENDDIALOG()
	
--Frauen		
	NODE(20)
		SAY("Ehhh mais qu'est-ce qu'on a l� qui s'approche?")
		ANSWER("je veux travailler pour toi. Faire des passes, je te donne une part... voil�.",21)
	NODE(21)
		SAY("Hahahah... elle veut travailler pour moi. Hahah...")
		ANSWER("Pourquoi tu rigoles?!",22)
	NODE(22)
		SAY("D�sol� poulette, mais sans te vexer, t'as un physique... moyen. Je peux rien faire de �a, moi. Il me faut de la premi�re classe! Regarde ce que j'ai l�, �a c'est du top, et avec des options, en plus!")
		ANSWER("Des... options?",23)
	NODE(23)
		SAY("Chacune a quelques petites mutations marrantes. Plein de nichons, plusieurs chattes, des langues ultra-longues, tout ce que tu peux vouloir! Tant que t'y a pas go�t�, tu peux pas t'imaginer toutes les possibilit� qu'elles ont. Une langue de 50 centim�tres de long! T'imagines comment �a t'enroule le truc? Schlurp!")
		ANSWER("Ca m'a l'air sympa! C'est combien?",24)
		ANSWER("Beurk! Je vais m'en aller avant que tu en mettes partout...",103)
	NODE(24)
		SAY("Regardez-la, la petite, mais c'est que �a l'int�resse! De toute mani�re, c'est trop cher pour toi, alors tire-toi!")
		ENDDIALOG()



	NODE(25)
		SAY("Chacune a quelques petites mutations marrantes. Plein de nichons, plusieurs chattes, des langues ultra-longues, tout ce que tu peux vouloir! Tant que t'y a pas go�t�, tu peux pas t'imaginer toutes les possibilit� qu'elles ont. Une langue de 50 centim�tres de long! T'imagines comment �a t'enroule le truc? Schlurp!")
		ANSWER("Ca m'a l'air sympa! C'est combien?",26)
		ANSWER("Beurk! Je vais m'en aller avant que tu en mettes partout...",103)
	NODE(26)
		SAY("Les prix sont � la hauteur de la performance. On commence � 200.000 cr�dits, et pour �a tu peux avoir la...")
		ANSWER("200.000?! T'es pas bien? Tu trouves des clients � ce prix?",27)
	NODE(27)
		SAY("J'te le dis, les prix sont � la hauteur de la perf...")
		ANSWER("Pour ce prix l�, j'ai une main qui ne demande qu'� servir!",28)
	NODE(28)
		SAY("C'est toi qui vois, ma poule.")
		ENDDIALOG()
		
-- Dialog Ausstiege			
	NODE(100)
		SAY("Cool mec! Si t'as envie d'exotisme, passe dans le coin!")
		ENDDIALOG()	

	NODE(101)
		SAY("Cool mec. Pas la peine de t'�nerver, si �a te branche pas tu t'casses, c'est tout...")
		ENDDIALOG()

	NODE(102)
		SAY("Pas la peine de t'emballer. Ca te branche pas? Tu t'casses!")
		ENDDIALOG()
		
	NODE(103)
		SAY("Hahaha... allez, assez rigol�, tire-toi.")
		ENDDIALOG()
		
end