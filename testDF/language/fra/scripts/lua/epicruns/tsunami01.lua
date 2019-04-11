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
		
		ANSWER("J'écoute.",1)
	NODE(1)
		SAY("Un nouveau membre, on apprécie toujours. Tsunami est une grande organisation, tu t'en rendras compte bientôt. Nos membres gagnent beaucoup à travailler pour nous, mais il faut que tu saches qu'il y a pas mal de compétition ici. Tu te sens prêt à ça?")
		
		ANSWER("Evidemment. Je vais faire de mon mieux.",2)
	NODE(2)
		SAY("Alors tu vas certainement comprendre que si je faisais confiance à tout le monde sans réfléchir, je serais un tas de viande froide à l'heure qu'il est. Autant le dire tout de suite : je ne te fais pas confiance. Tu vas devoir me prouver que tu es digne de quelque chose. Me prouver que tu es loyal envers nous.")
		
		ANSWER("Je suis loyal en votre cause, ça ne fait pas de doute.",3)
	NODE(3)
		SAY("On va commencer par quelque chose de facile. On a pas envie de te perdre dans ta première mission. Mais si tu ne réussis pas cette mission, c'est la porte. C'est aussi simple que ça. Alors prépare-toi à agir.")
		
		ANSWER("J'aime pas échouer. Tu vas t'en rendre compte rapidement.",4)
	NODE(4)
		SAY("Tu sais peut-être déjà que le dirigeant de Tsunami s'appelle Véronique Duchamp. Elle tire toutes les ficelles ici, et c'est une sacrée vicieuse. S'il y a un gros coup en préparation, tu peux parier à coup sûr qu'elle est déjà là en coulisses. Et comme elle a sans arrêt plein de choses à faire, elle a besoin de s'appuyer sur des auxiliaires de temps en temps.")
		
		ANSWER("CONTINUER",5)
	NODE(5)
		GIVEITEM(9250)
		SAY("Une petite livraison. C'est simple, alors merde pas. Va porter ça à Maxime, c'est pour Eric Damnund en personne. C'est Maxime qui s'assurera de la suite du transfert. Elle fait des trajets entre Neocron et le Dôme d'York. Elle t'attend dans le secteur 10.")
		
		ANSWER("C'est du gâteau, ton affaire. Considère que c'est déjà fait.",6)
	NODE(6)
		SAY("Elle te donnera quelque chose en échange, que tu devras transmettre à Jester, un autre gars qui travaille pour nous, dans le secteur 07. Il bosse en freelance, et souvent il traîne dans les bars. Allez, fais ce que je t'ai dit.")
		SETNEXTDIALOGSTATE(7)
		ACCEPTMISSION()
		ENDDIALOG()
		
	NODE(7)
		SAY("C'est dur à comprendre ou quoi? Va dans le secteur 10, donne le paquet à Maxime, puis va livrer le paquet qu'elle te donnera à Jester dans le secteur 07. Ensuite, va parler à Taylor Gomez, dans le Secret Passage-2, près de notre QG secret à Neocron.")
		ENDDIALOG()
		


-----------------------------------------------------
--Maxime

	NODE(50)
		SAY("Tu peux pas embêter quelqu'un d'autre? Je suis très occupée.")
		
		ANSWER("J'ai une livraison pour M. Danmund. Tu peux t'occuper de ça?",51)
		
	NODE(51)
		TAKEITEM(9250)
		if(result==0)then
			SAY("J'ai du temps si c'est important. En l'occurrence, ça a pas l'air.")
			ENDDIALOG()
		else
			SAY("Pour Danmund? Bon d'accord, une fois de plus ou de moins... Donne-moi ça, que je m'en occupe.")
		
			ANSWER("Voilà. Apparemment, tu dois me donner quelque chose en échange.",52)
		end
	NODE(52)
		SAY("Ah bon? Attends que je vérifie ça, je m'en souviens pas.")
		
		ANSWER("Vas-y, j'attends.",53)
	NODE(53)
		SAY("Oh, intéressant. Cecil Stone a demandé de faire livrer une puce. Une des puces expérimentales X-OR. Bizarre.")
		
		ANSWER("Qu'est-ce qui est bizarre?",54)
	NODE(54)
		GIVEITEM(9251)
		SETNEXTDIALOGSTATE(55)
		SAY("Habituellement, Diamond ne vend que des appartements. Je trouve ça bizarre qu'ils se mettent à la livraison d'implants. Mais bon, je vais éviter de poser ce genre de questions, j'ai envie de vivre vieille.")
		
		ANSWER("Qu'est-ce que c'est que cette puce? Ca m'a l'air important.",55)
		
	NODE(55)
		SAY("J'en sais rien, et je veux pas le savoir. Demande à quelqu'un d'autre.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()
		
	NODE(56)
		SAY("Ecoute, je suis occupée. Si ça n'est pas pour une autre livraison, tu peux t'en aller.")
		ENDDIALOG()
		

-----------------------------------------------------
--Jester

	NODE(100)
		TAKEITEM(9251)
		if(result==0)then
			SAY("Reste pas là, j'attends une livraison importante.")
			ENDDIALOG()
		else
			GIVEITEM(9251)
			SAY("C'est toi qui dois m'apporter un colis? Ils envoient des bleus maintenant... T'as la puce?")
		
			ANSWER("Fais attention à ce que tu dis, j'aime pas qu'on me traite de bleu. Ouais, j'ai la puce, elle vient directement de Cecil Stone, apparemment. Mais je comprends pas pourquoi il veut nous transmettre ce genre de truc.",101)
		end
	NODE(101)
		SAY("Excellent, ça fait longtemps que j'attends cette puce. Je commençais à trouver le temps long. Qu'est-ce que tu attends? Tu peux partir. T'as une question?")
		
		ANSWER("Je me demandais ce que tu faisais pour Tsunami.",102)
	NODE(102)
		SAY("Je travaille pas que pour Tsunami. En fait, j'ai plein de clients, tout ça dépend de la discrétion avec laquelle je travaille. Ca veut dire que je pourrai pas t'en apprendre davantage. Mais la puce, je peux t'en parler. C'est une puce neurale. Elle peut stocker plein de données, mais aussi contrôler l'esprit d'une personne. Enfin, en théorie...")
		
		ANSWER("Intéressant. Et pourquoi Tsunami en aurait besoin?",103)
		
	NODE(103)
		SAY("C'est pour un appareil que je suis en train de leur construire. Mais je peux pas t'en dire plus. Va voir Taylor Gomez, et dis-lui que j'ai eu la puce.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(104)
		SAY("Non, je t'ai déjà dit que je pouvais rien t'expliquer, sinon je vais me faire flinguer. Ca plutôt faire ton rapport à Taylor Gomez.")
		ENDDIALOG()

-----------------------------------------------------
--Taylor Gomez
		
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Tu n'as pas encore terminé ta mission. Va porter ça à Maxime immédiatement. Et n'oublie pas de revenir quand tu as terminé.")
			ENDDIALOG()
		else
			SAY("Qu'est-ce qui t'a pris si longtemps? C'était pourtant facile! Si tu mets pas un peu de sérieux dans ce que tu fais, tu iras pas loin.")
		
			ANSWER("Arrête ton cirque, ça prend du temps de traverser toute la ville.",151)
		end
	NODE(151)
		SAY("Tu n'as pas d'excuse. Chez Tsunami, on se donne à pleine puissance. Si tu veux travailler pour nous régulièrement, tu vas devoir apprendre à être un peu plus fiable que ça.")
		
		ANSWER("LA prochaine fois j'essaierai de faire plus vite, mais je vois pas trop comment je m'y prendrai. Au fait, qu'est-ce que c'était, ce que j'ai donné à Maxime?",152)
		
	NODE(152)
		SAY("Un cadeau pour le PDG de Diamond Immobilier. Un cadeau que nous avons utilisé comme leurre pour éviter d'attirer l'attention sur le véritable objectif de la mission. Comme ça, ils ont pu te donner la micropuce en douce. Cecil Stone, le SysAdmin de Diamond, a une énorme dette envers nous, et c'est pour ça qu'il nous a rendu ce petit service. On a plus trop de rôle à jouer à Neocron, mais ça veut pas dire qu'on va y abandonner nos contacts non plus.")
		
		ANSWER("Qu'est-ce que Jester faisait avec cette puce, alors?",153)
	NODE(153)
		SAY("Il bosse en freelance. Parfois, il bosse pour nous. Il va faire quelque chose de spécial avec cette puce. Bon, t'as fini ta mission, je suis plutôt satisfait. Mais fais pas l'erreur de parler de pognon maintenant. C'est pas toi qui nous fait une faveur, ici, c'est l'inverse. Lorsqu'on aura plus de doutes à ton sujet, on te proposera autre chose. (prochaine mission au niveau 20)")
		EPICRUNFINISHED(8,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		


end