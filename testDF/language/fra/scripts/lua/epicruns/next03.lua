--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--
--0,D,Torben
--1,D,Max
--200,D, Gerard
--3,D,Torben



--Startnode, Person
--0 Human Resource
--50 Torben
--100 Gerard
--150 Max
--200 Gerard
--250 Torben

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Ahh vous revoilà! J'ai bien peur que nous n'ayons rien encore à vous proposer. Mais je voulais vous demander d'aller voir le vieux Torben à la station Pepper Park. Il en veut pas me parler, mais je sais qu'il va avoir des problèmes s'il ne reprend pas le travail rapidement.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Après tout, la compagnie n'est pas une nourrice. NExT ne peut pas se permettre de payer des mécaniciens qui ne font pas leur travail. C'est pour ça que je vous demande d'aller voir s'il n'a pas besoin d'aide. Il a appartenu à l'équipe qui a construit ce métro, vous savez. C'est un pionnier en la matière.")
		
		ANSWER("D'accord, je vais voir ça.",2)
		ANSWER("Pas pour l'instant. Désolé.",3)
	NODE(2)
		SAY("Merci. Vous devriez le trouver au Garriots Diner de Pepper Park.")
		SETNEXTDIALOGSTATE(4)
		ACCEPTMISSION()
		ENDDIALOG()
		
	NODE(3)
		SAY("Vous changerez peut-être d'avis plus tard.")
		ENDDIALOG()
		
	NODE(4)
		SAY("Vous pourriez aller aider Torben? Vous devriez le trouver dans la station Pepper Park.")
		ENDDIALOG()
		

-----------------------------------------------------
--Torben

	NODE(50)
		SAY("Hé toi! On se connaît? Moi qui pensais trouver un endroit où on me ficherait la paix...")
		
		ANSWER("Justement, c'est pour ça que je suis là.",51)
	NODE(51)
		SAY("Pour quoi? Pour qu'on vous fiche la paix?")
		
		ANSWER("Non, pas exactement. Je viens de NEXT. Ils se demandent pourquoi vous avez arrêté de travailler. NEXT pourrait vous virer si vous ne reprenez pas le travail.",52)
	NODE(52)
		SAY("Vous aimez le métro? Moi j'adore ça. Le sifflement des rames qui passent, le bruit des portes qui s'ouvrent, je trouve ça apaisant.")
		
		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("Ca n'a rien à voir avec ce que c'était quand on a commencé à le construire. L'eau de pluie nous empêchait d'accéder aux galeries, il y avait des éboulements, je me souviens même d'une fois où les mutants ont construit une barricade dans l'un des tunnels. On a dû attendre deux mois que le NCPD fasse une descente pour résoudre le problème. C'était le bon temps...")
		
		ANSWER("J'ai comme l'impression que vous êtes en train d'esquiver ma question.",54)
	NODE(54)
		SAY("NExT m'a toujours payé. Et bien. Même lorsque Diggers a revendu ses parts de la compagnie et qu'ils ont eu de grosses difficultés financières, le salaire a continué de tomber régulièrement.")
		
		ANSWER("Ecoutez, je sais que vous avez un problème, et j'ai envie de le résoudre. Mais pour cela, il me faut votre COOPERATION, BORDEL!!",55)
	NODE(55)
		SAY("...")
		
		ANSWER("Je m'excuse, mais il fallait que ça sorte.",56)
	NODE(56)
		SAY("Euh... D'accord. C'est vrai que j'ai un problème, mais il faut pas que j'en parle. Ils m'ont dit qu'ils allaient me mettre en pièces si je parlais. je supporte pas la douleur. Je déteste ça...")
		
		ANSWER("Vous pouvez me faire confiance. Alors calmez-vous et dites-moi ce qui s'est passé.",57)
	NODE(57)
		SAY("Ces... gens... sont venu après ma journée de travail, et ont commencé à me taper dessus. J'ai pu à peine retourner à mon appartement, qui est aussi celui de mon ex-femme, et ensuite je suis tombé dans les pommes. Ils ont dit qu'ils allaient revenir et qu'ils me taperaient dessus jusqu'à ce que j'arrête de travailler... et... vraiment, j'aime pas souffrir. Aidez-moi, je vous en supplie...")
		
		ANSWER("Quelle honte de s'attaquer à un homme sans défense... Qui c'est? Vous avez une idée? NEXT est au courant?",58)
	NODE(58)
		SAY("Non, je n'ai pas pu voir... J'ai eu peur. Mais je sais que d'autres employés ont eu des problèmes semblables... C'était avec des types du Dragon Noir, et ils venaient quelque part dans l'Outzone. J'ai aucun doute. Mais vous avez aucune chance si vous y allez en solo. Ils sont bien équipés.")
		
		ANSWER("Vous me sous-estimez. Mais on pourrait peut-être demander l'aide des CityMercs? Ils ont l'expérience de cette vermine.",59)
	NODE(59)
		SAY("Pourquoi pas. J'en connais un à Neocron. Il s'appelle Gérard, vous le trouverez à Pepper Park 03, au QG de CityMercs. Mais ne parlez pas de moi, seulement si c'est vraiment nécessaire. J'ai envie de profiter de la vie encore un peu.")
		SETNEXTDIALOGSTATE(250)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	


-----------------------------------------------------
--Gerard

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("J'ai des choses importantes à faire, veuillez m'excuser.")
			ENDDIALOG()
		else
			SAY("Qu'est-ce que vous faites ici? Propriété de CityMercs!")
		
			ANSWER("Je sais, je sais. Je veux parler à Gérard.",101)
		end
	NODE(101)
		SAY("C'est moi.")
		
		ANSWER("Très bien. Je connais quelqu'un qui travaille à NExT et qui se fait battre régulièrement par des gens du Dragon Noir. Ils lui mettent la pression.",102)
	NODE(102)
		SAY("Je connais bien ce genre d'affaires. C'est courant, par ici. Ca arrive tous les jours. La plupart du temps, le Dragon Noir a une raison de faire ça. Ils ne le font pas juste par plaisir, quoique j'aie connu des fois où c'était le cas. J'ai vu une fois comment ils ont arraché l'implant oculaire d'un type sans anesthésie. C'est pas des tendres.")
		
		ANSWER("Vous pouvez faire quelque chose pour mon ami? Je pense que la compagnie vous paiera pour ça. Ceux qui lui font ça se trouvent dans Outzone 05.",103)
	NODE(103)
		SAY("Oui, je pense qu'on peut faire quelque chose. Mais il nous faut l'endroit exact où on peut les trouver. Outzone 05, c'est grand. Peut-être que vous pourriez même aller leur parler, parfois il suffit de ça pour les convaincre. Je suis au courant de rumeurs de ProtoPharm qui soutiendrait le Dragon Noir contre NExT, mais je sais pas du tout si c'est vrai.")
		
		ANSWER("ProtoPharm demande au Dragon Noir de nous attaquer?",104)
	NODE(104)
		SAY("C'est ce qu'on dit... Allez voir où ils sont, il me faut l'endroit précis. On ne peut pas fouiller toute l'Outzone. Et essayer leur parler, peut-être qu'ils veulent seulement de l'argent après tout. Outzone 05, hein? Bonne chance.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		


-----------------------------------------------------
--Max

	NODE(150)
		SAY("Regardez qui voilà! Encore une petite pédale qui ose entrer sur notre territoire! Tu veux quoi? Dis-nous, et peut-être qu'on te tuera pas tout de suite.")
		
		ANSWER("Je viens vous voir parce que vous frappez sans raison un employé de NExT.",151)
	NODE(151)
		SAY("Oh. Ceux qui nous ont demandé de faire ça ne doivent pas être bien gentils. NExT, tu dis? Oui, ça se peut. On a fait une petite faveur à ProtoPharm. Rien d'officiel, évidemment. Et en fait, peut-être qu'on en a marre de NExT nous-mêmes.")
		
		ANSWER("Vous allez vous attirer des ennuis à cause de ce que vous avez fait. On ne pourrait pas tenter un arrangement à l'amiable? Par l'argent, disons?",152)
	NODE(152)
		SAY("Pourquoi pas, si tu allonges assez de fric... On est des gens raisonnables. Qu'est-ce que tu proposes?")
		
		ANSWER("Moi, je ne peux rien vous proposer. Mais NExT...",153)
	NODE(153)
		SAY("T'as une grande gueule, toi! D'abord tu nous promets du fric, et puis tu veux plus? Comme si tu pouvais nous promettre quelque chose de la part de NExT! Je sais pas si t'as bien compris, mais regarde autour de toi : t'as pas d'amis!")
		
		ANSWER("Il doit certainement avoir un moyen de négocier...",154)
	NODE(154)
		SAY("Ouais, négocier... je vais négocier tes organes au marché noir!")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(155)
		ATTACK()
		ENDDIALOG()
	NODE(155)
		SAY("T'es encore en vie?!")
		ATTACK()
		ENDDIALOG()
		


-----------------------------------------------------
--Gerard

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Allez voir où ils sont. Vous devez aller leur parler.")
			ENDDIALOG()
		else

			SAY("Alors? Vous les avez vus?")
		
			ANSWER("Oui! Ca se voit pas? Ces malades ont essayé de me tuer!",201)
		end
	NODE(201)
		SAY("Calmez-vous. C'est pas moi qui fait les règles ici. Mais comme vous avez confirmé leur emplacement, on va faire une descente. En temps normal, on envoie nos propres éclaireurs, mais je trouvais que vous aviez l'air de savoir vous battre. Peut-être que vous pourriez nous faire une faveur...")
		
		ANSWER("Oubliez. Soit vous vous occupez du problème, soit je m'en vais.",202)
	NODE(202)
		SAY("D'accord, d'accord. Evidemment, qu'on av s'en occuper. Après tout, on est les CityMercs. Ca sera pas la première fois qu'on se frotte au Dragon Noir. Bon, je pense qu'on va avoir besoin d'un groupe de rubans blancs cette fois. Vous faites pas de bile, on va s'occuper de la situation. Allez vous mettre à l'abri dans la Plaza.")
		SETNEXTDIALOGSTATE(203)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

	NODE(203)
		SAY("Je vous ai déjà dit qu'on s'en chargeait. Vous pouvez aller dire ça à votre ami.")
		ENDDIALOG()


-----------------------------------------------------
--Torben

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Des nouvelles? Vous avez vu Gérard dans Pepper Park 03?")
			ENDDIALOG()
		else
			SAY("Vous avez parlé à CityMercs? Qu'est-ce qu'ils ont dit?")
		
			ANSWER("Oui, mais le Dragon Noir m'a tout de même fait la peau... Ne vous inquiétez pas, ils vont prendre la situation en main.",251)
		end
	NODE(251)
		SAY("Les Mercs vont s'en occuper? C'est vrai?")
		
		ANSWER("C'est ce que je viens de dire, il me semble.",252)
	NODE(252)
		SAY("Ca veut dire que je suis sauvé? Parce que quand les Mercs s'occupent de quelque chose, ils rigolent pas! Merci runner! J'aurais pas cru que vous me seriez venu en aide. En fait, je pensais que personne pouvait m'aider. Mais j'ai dû me tromper. Je vais me remettre au travail tout de suite!")
		
		ANSWER("CONTINUER",253)
	NODE(253)
		GIVEMONEY(5000)
		SAY("Et si je peux, je vais essayer de vous renvoyer l'ascenseur plus tard. Sur moi j'ai 5.000 crédits, j'espère que ça vous suffira pour l'instant. Je vais faire en sorte que vous ayez de bonnes missions à l'avenir! Au revoir et merci, runner!")
		EPICRUNFINISHED(3,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end