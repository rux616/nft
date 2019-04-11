--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--50
--0,D,Foster
--1,D,Taylor
--200

--Startnode, Person
--0 Recruiter
--50 Diamond Employee
--100 Foster
--150 Taylor Gomez
--200
--250

-----------------------------------------------------
--Recruiter

	NODE(0)
		SAY("Tu es nouveau ici? Approche-toi, il faut qu'on parle.")
		
		ANSWER("J'�coute.",1)
	NODE(1)
		SAY("Un nouveau membre, on appr�cie toujours. Tsunami est une grande organisation, tu t'en rendras compte bient�t. Nos membres gagnent beaucoup � travailler pour nous, mais il faut que tu saches qu'il y a pas mal de comp�tition ici. Tu te sens pr�t � �a?")
		
		ANSWER("Evidemment. Je vais faire de mon mieux.",2)
	NODE(2)
		SAY("Alors tu vas certainement comprendre que si je faisais confiance � tout le monde sans r�fl�chir, je serais un tas de viande froide � l'heure qu'il est. Autant le dire tout de suite : je ne te fais pas confiance. Tu vas devoir me prouver que tu es digne de quelque chose. Me prouver que tu es loyal envers nous.")
		
		ANSWER("Je suis loyal en votre cause, �a ne fait pas de doute.",3)
	NODE(3)
		SAY("On va commencer par quelque chose de facile. On a pas envie de te perdre dans ta premi�re mission. Mais si tu ne r�ussis pas cette mission, c'est la porte. C'est aussi simple que �a. Alors pr�pare-toi � agir.")
		
		ANSWER("J'aime pas �chouer. Tu vas t'en rendre compte rapidement.",4)
	NODE(4)
		SAY("Tu sais peut-�tre d�j� que le dirigeant de Tsunami s'appelle V�ronique Duchamp. Elle tire toutes les ficelles ici, et c'est une sacr�e vicieuse. S'il y a un gros coup en pr�paration, tu peux parier � coup s�r qu'elle est d�j� l� en coulisses. Et comme elle a sans arr�t plein de choses � faire, elle a besoin de s'appuyer sur des auxiliaires de temps en temps.")
		
		ANSWER("CONTINUER",5)
	NODE(5)
		GIVEITEM(9250)
		SAY("Une petite livraison. C'est simple, alors merde pas. Va porter �a � Maxime, c'est pour Eric Damnund en personne. C'est Maxime qui s'assurera de la suite du transfert. Elle fait des trajets entre Neocron et le D�me d'York. Elle t'attend dans le secteur 10.")
		
		ANSWER("C'est du g�teau, ton affaire. Consid�re que c'est d�j� fait.",6)
	NODE(6)
		SAY("Elle te donnera quelque chose en �change, que tu devras transmettre � Jester, un autre gars qui travaille pour nous, dans le secteur 07. Il bosse en freelance, et souvent il tra�ne dans les bars. Allez, fais ce que je t'ai dit.")
		SETNEXTDIALOGSTATE(7)
		ACCEPTMISSION()
		ENDDIALOG()
		
	NODE(7)
		SAY("C'est dur � comprendre ou quoi? Va dans le secteur 10, donne le paquet � Maxime, puis va livrer le paquet qu'elle te donnera � Jester dans le secteur 07. Ensuite, va parler � Taylor Gomez, dans le Secret Passage-2, pr�s de notre QG secret � Neocron.")
		ENDDIALOG()
		


-----------------------------------------------------
--Maxime

	NODE(50)
		SAY("Tu peux pas emb�ter quelqu'un d'autre? Je suis tr�s occup�e.")
		
		ANSWER("J'ai une livraison pour M. Danmund. Tu peux t'occuper de �a?",51)
		
	NODE(51)
		TAKEITEM(9250)
		if(result==0)then
			SAY("J'ai du temps si c'est important. En l'occurrence, �a a pas l'air.")
			ENDDIALOG()
		else
			SAY("Pour Danmund? Bon d'accord, une fois de plus ou de moins... Donne-moi �a, que je m'en occupe.")
		
			ANSWER("Voil�. Apparemment, tu dois me donner quelque chose en �change.",52)
		end
	NODE(52)
		SAY("Ah bon? Attends que je v�rifie �a, je m'en souviens pas.")
		
		ANSWER("Vas-y, j'attends.",53)
	NODE(53)
		SAY("Oh, int�ressant. Cecil Stone a demand� de faire livrer une puce. Une des puces exp�rimentales X-OR. Bizarre.")
		
		ANSWER("Qu'est-ce qui est bizarre?",54)
	NODE(54)
		GIVEITEM(9251)
		SETNEXTDIALOGSTATE(55)
		SAY("Habituellement, Diamond ne vend que des appartements. Je trouve �a bizarre qu'ils se mettent � la livraison d'implants. Mais bon, je vais �viter de poser ce genre de questions, j'ai envie de vivre vieille.")
		
		ANSWER("Qu'est-ce que c'est que cette puce? Ca m'a l'air important.",55)
		
	NODE(55)
		SAY("J'en sais rien, et je veux pas le savoir. Demande � quelqu'un d'autre.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()
		
	NODE(56)
		SAY("Ecoute, je suis occup�e. Si �a n'est pas pour une autre livraison, tu peux t'en aller.")
		ENDDIALOG()
		

-----------------------------------------------------
--Jester

	NODE(100)
		TAKEITEM(9251)
		if(result==0)then
			SAY("Reste pas l�, j'attends une livraison importante.")
			ENDDIALOG()
		else
			GIVEITEM(9251)
			SAY("C'est toi qui dois m'apporter un colis? Ils envoient des bleus maintenant... T'as la puce?")
		
			ANSWER("Fais attention � ce que tu dis, j'aime pas qu'on me traite de bleu. Ouais, j'ai la puce, elle vient directement de Cecil Stone, apparemment. Mais je comprends pas pourquoi il veut nous transmettre ce genre de truc.",101)
		end
	NODE(101)
		SAY("Excellent, �a fait longtemps que j'attends cette puce. Je commen�ais � trouver le temps long. Qu'est-ce que tu attends? Tu peux partir. T'as une question?")
		
		ANSWER("Je me demandais ce que tu faisais pour Tsunami.",102)
	NODE(102)
		SAY("Je travaille pas que pour Tsunami. En fait, j'ai plein de clients, tout �a d�pend de la discr�tion avec laquelle je travaille. Ca veut dire que je pourrai pas t'en apprendre davantage. Mais la puce, je peux t'en parler. C'est une puce neurale. Elle peut stocker plein de donn�es, mais aussi contr�ler l'esprit d'une personne. Enfin, en th�orie...")
		
		ANSWER("Int�ressant. Et pourquoi Tsunami en aurait besoin?",103)
		
	NODE(103)
		SAY("C'est pour un appareil que je suis en train de leur construire. Mais je peux pas t'en dire plus. Va voir Taylor Gomez, et dis-lui que j'ai eu la puce.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(104)
		SAY("Non, je t'ai d�j� dit que je pouvais rien t'expliquer, sinon je vais me faire flinguer. Ca plut�t faire ton rapport � Taylor Gomez.")
		ENDDIALOG()

-----------------------------------------------------
--Taylor Gomez
		
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Tu n'as pas encore termin� ta mission. Va porter �a � Maxime imm�diatement. Et n'oublie pas de revenir quand tu as termin�.")
			ENDDIALOG()
		else
			SAY("Qu'est-ce qui t'a pris si longtemps? C'�tait pourtant facile! Si tu mets pas un peu de s�rieux dans ce que tu fais, tu iras pas loin.")
		
			ANSWER("Arr�te ton cirque, �a prend du temps de traverser toute la ville.",151)
		end
	NODE(151)
		SAY("Tu n'as pas d'excuse. Chez Tsunami, on se donne � pleine puissance. Si tu veux travailler pour nous r�guli�rement, tu vas devoir apprendre � �tre un peu plus fiable que �a.")
		
		ANSWER("LA prochaine fois j'essaierai de faire plus vite, mais je vois pas trop comment je m'y prendrai. Au fait, qu'est-ce que c'�tait, ce que j'ai donn� � Maxime?",152)
		
	NODE(152)
		SAY("Un cadeau pour le PDG de Diamond Immobilier. Un cadeau que nous avons utilis� comme leurre pour �viter d'attirer l'attention sur le v�ritable objectif de la mission. Comme �a, ils ont pu te donner la micropuce en douce. Cecil Stone, le SysAdmin de Diamond, a une �norme dette envers nous, et c'est pour �a qu'il nous a rendu ce petit service. On a plus trop de r�le � jouer � Neocron, mais �a veut pas dire qu'on va y abandonner nos contacts non plus.")
		
		ANSWER("Qu'est-ce que Jester faisait avec cette puce, alors?",153)
	NODE(153)
		SAY("Il bosse en freelance. Parfois, il bosse pour nous. Il va faire quelque chose de sp�cial avec cette puce. Bon, t'as fini ta mission, je suis plut�t satisfait. Mais fais pas l'erreur de parler de pognon maintenant. C'est pas toi qui nous fait une faveur, ici, c'est l'inverse. Lorsqu'on aura plus de doutes � ton sujet, on te proposera autre chose. (prochaine mission au niveau 20)")
		EPICRUNFINISHED(8,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		


end