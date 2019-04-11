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
		SAY("Ahh vous revoil�! J'ai bien peur que nous n'ayons rien encore � vous proposer. Mais je voulais vous demander d'aller voir le vieux Torben � la station Pepper Park. Il en veut pas me parler, mais je sais qu'il va avoir des probl�mes s'il ne reprend pas le travail rapidement.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Apr�s tout, la compagnie n'est pas une nourrice. NExT ne peut pas se permettre de payer des m�caniciens qui ne font pas leur travail. C'est pour �a que je vous demande d'aller voir s'il n'a pas besoin d'aide. Il a appartenu � l'�quipe qui a construit ce m�tro, vous savez. C'est un pionnier en la mati�re.")
		
		ANSWER("D'accord, je vais voir �a.",2)
		ANSWER("Pas pour l'instant. D�sol�.",3)
	NODE(2)
		SAY("Merci. Vous devriez le trouver au Garriots Diner de Pepper Park.")
		SETNEXTDIALOGSTATE(4)
		ACCEPTMISSION()
		ENDDIALOG()
		
	NODE(3)
		SAY("Vous changerez peut-�tre d'avis plus tard.")
		ENDDIALOG()
		
	NODE(4)
		SAY("Vous pourriez aller aider Torben? Vous devriez le trouver dans la station Pepper Park.")
		ENDDIALOG()
		

-----------------------------------------------------
--Torben

	NODE(50)
		SAY("H� toi! On se conna�t? Moi qui pensais trouver un endroit o� on me ficherait la paix...")
		
		ANSWER("Justement, c'est pour �a que je suis l�.",51)
	NODE(51)
		SAY("Pour quoi? Pour qu'on vous fiche la paix?")
		
		ANSWER("Non, pas exactement. Je viens de NEXT. Ils se demandent pourquoi vous avez arr�t� de travailler. NEXT pourrait vous virer si vous ne reprenez pas le travail.",52)
	NODE(52)
		SAY("Vous aimez le m�tro? Moi j'adore �a. Le sifflement des rames qui passent, le bruit des portes qui s'ouvrent, je trouve �a apaisant.")
		
		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("Ca n'a rien � voir avec ce que c'�tait quand on a commenc� � le construire. L'eau de pluie nous emp�chait d'acc�der aux galeries, il y avait des �boulements, je me souviens m�me d'une fois o� les mutants ont construit une barricade dans l'un des tunnels. On a d� attendre deux mois que le NCPD fasse une descente pour r�soudre le probl�me. C'�tait le bon temps...")
		
		ANSWER("J'ai comme l'impression que vous �tes en train d'esquiver ma question.",54)
	NODE(54)
		SAY("NExT m'a toujours pay�. Et bien. M�me lorsque Diggers a revendu ses parts de la compagnie et qu'ils ont eu de grosses difficult�s financi�res, le salaire a continu� de tomber r�guli�rement.")
		
		ANSWER("Ecoutez, je sais que vous avez un probl�me, et j'ai envie de le r�soudre. Mais pour cela, il me faut votre COOPERATION, BORDEL!!",55)
	NODE(55)
		SAY("...")
		
		ANSWER("Je m'excuse, mais il fallait que �a sorte.",56)
	NODE(56)
		SAY("Euh... D'accord. C'est vrai que j'ai un probl�me, mais il faut pas que j'en parle. Ils m'ont dit qu'ils allaient me mettre en pi�ces si je parlais. je supporte pas la douleur. Je d�teste �a...")
		
		ANSWER("Vous pouvez me faire confiance. Alors calmez-vous et dites-moi ce qui s'est pass�.",57)
	NODE(57)
		SAY("Ces... gens... sont venu apr�s ma journ�e de travail, et ont commenc� � me taper dessus. J'ai pu � peine retourner � mon appartement, qui est aussi celui de mon ex-femme, et ensuite je suis tomb� dans les pommes. Ils ont dit qu'ils allaient revenir et qu'ils me taperaient dessus jusqu'� ce que j'arr�te de travailler... et... vraiment, j'aime pas souffrir. Aidez-moi, je vous en supplie...")
		
		ANSWER("Quelle honte de s'attaquer � un homme sans d�fense... Qui c'est? Vous avez une id�e? NEXT est au courant?",58)
	NODE(58)
		SAY("Non, je n'ai pas pu voir... J'ai eu peur. Mais je sais que d'autres employ�s ont eu des probl�mes semblables... C'�tait avec des types du Dragon Noir, et ils venaient quelque part dans l'Outzone. J'ai aucun doute. Mais vous avez aucune chance si vous y allez en solo. Ils sont bien �quip�s.")
		
		ANSWER("Vous me sous-estimez. Mais on pourrait peut-�tre demander l'aide des CityMercs? Ils ont l'exp�rience de cette vermine.",59)
	NODE(59)
		SAY("Pourquoi pas. J'en connais un � Neocron. Il s'appelle G�rard, vous le trouverez � Pepper Park 03, au QG de CityMercs. Mais ne parlez pas de moi, seulement si c'est vraiment n�cessaire. J'ai envie de profiter de la vie encore un peu.")
		SETNEXTDIALOGSTATE(250)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	


-----------------------------------------------------
--Gerard

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("J'ai des choses importantes � faire, veuillez m'excuser.")
			ENDDIALOG()
		else
			SAY("Qu'est-ce que vous faites ici? Propri�t� de CityMercs!")
		
			ANSWER("Je sais, je sais. Je veux parler � G�rard.",101)
		end
	NODE(101)
		SAY("C'est moi.")
		
		ANSWER("Tr�s bien. Je connais quelqu'un qui travaille � NExT et qui se fait battre r�guli�rement par des gens du Dragon Noir. Ils lui mettent la pression.",102)
	NODE(102)
		SAY("Je connais bien ce genre d'affaires. C'est courant, par ici. Ca arrive tous les jours. La plupart du temps, le Dragon Noir a une raison de faire �a. Ils ne le font pas juste par plaisir, quoique j'aie connu des fois o� c'�tait le cas. J'ai vu une fois comment ils ont arrach� l'implant oculaire d'un type sans anesth�sie. C'est pas des tendres.")
		
		ANSWER("Vous pouvez faire quelque chose pour mon ami? Je pense que la compagnie vous paiera pour �a. Ceux qui lui font �a se trouvent dans Outzone 05.",103)
	NODE(103)
		SAY("Oui, je pense qu'on peut faire quelque chose. Mais il nous faut l'endroit exact o� on peut les trouver. Outzone 05, c'est grand. Peut-�tre que vous pourriez m�me aller leur parler, parfois il suffit de �a pour les convaincre. Je suis au courant de rumeurs de ProtoPharm qui soutiendrait le Dragon Noir contre NExT, mais je sais pas du tout si c'est vrai.")
		
		ANSWER("ProtoPharm demande au Dragon Noir de nous attaquer?",104)
	NODE(104)
		SAY("C'est ce qu'on dit... Allez voir o� ils sont, il me faut l'endroit pr�cis. On ne peut pas fouiller toute l'Outzone. Et essayer leur parler, peut-�tre qu'ils veulent seulement de l'argent apr�s tout. Outzone 05, hein? Bonne chance.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		


-----------------------------------------------------
--Max

	NODE(150)
		SAY("Regardez qui voil�! Encore une petite p�dale qui ose entrer sur notre territoire! Tu veux quoi? Dis-nous, et peut-�tre qu'on te tuera pas tout de suite.")
		
		ANSWER("Je viens vous voir parce que vous frappez sans raison un employ� de NExT.",151)
	NODE(151)
		SAY("Oh. Ceux qui nous ont demand� de faire �a ne doivent pas �tre bien gentils. NExT, tu dis? Oui, �a se peut. On a fait une petite faveur � ProtoPharm. Rien d'officiel, �videmment. Et en fait, peut-�tre qu'on en a marre de NExT nous-m�mes.")
		
		ANSWER("Vous allez vous attirer des ennuis � cause de ce que vous avez fait. On ne pourrait pas tenter un arrangement � l'amiable? Par l'argent, disons?",152)
	NODE(152)
		SAY("Pourquoi pas, si tu allonges assez de fric... On est des gens raisonnables. Qu'est-ce que tu proposes?")
		
		ANSWER("Moi, je ne peux rien vous proposer. Mais NExT...",153)
	NODE(153)
		SAY("T'as une grande gueule, toi! D'abord tu nous promets du fric, et puis tu veux plus? Comme si tu pouvais nous promettre quelque chose de la part de NExT! Je sais pas si t'as bien compris, mais regarde autour de toi : t'as pas d'amis!")
		
		ANSWER("Il doit certainement avoir un moyen de n�gocier...",154)
	NODE(154)
		SAY("Ouais, n�gocier... je vais n�gocier tes organes au march� noir!")
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
			SAY("Allez voir o� ils sont. Vous devez aller leur parler.")
			ENDDIALOG()
		else

			SAY("Alors? Vous les avez vus?")
		
			ANSWER("Oui! Ca se voit pas? Ces malades ont essay� de me tuer!",201)
		end
	NODE(201)
		SAY("Calmez-vous. C'est pas moi qui fait les r�gles ici. Mais comme vous avez confirm� leur emplacement, on va faire une descente. En temps normal, on envoie nos propres �claireurs, mais je trouvais que vous aviez l'air de savoir vous battre. Peut-�tre que vous pourriez nous faire une faveur...")
		
		ANSWER("Oubliez. Soit vous vous occupez du probl�me, soit je m'en vais.",202)
	NODE(202)
		SAY("D'accord, d'accord. Evidemment, qu'on av s'en occuper. Apr�s tout, on est les CityMercs. Ca sera pas la premi�re fois qu'on se frotte au Dragon Noir. Bon, je pense qu'on va avoir besoin d'un groupe de rubans blancs cette fois. Vous faites pas de bile, on va s'occuper de la situation. Allez vous mettre � l'abri dans la Plaza.")
		SETNEXTDIALOGSTATE(203)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

	NODE(203)
		SAY("Je vous ai d�j� dit qu'on s'en chargeait. Vous pouvez aller dire �a � votre ami.")
		ENDDIALOG()


-----------------------------------------------------
--Torben

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Des nouvelles? Vous avez vu G�rard dans Pepper Park 03?")
			ENDDIALOG()
		else
			SAY("Vous avez parl� � CityMercs? Qu'est-ce qu'ils ont dit?")
		
			ANSWER("Oui, mais le Dragon Noir m'a tout de m�me fait la peau... Ne vous inqui�tez pas, ils vont prendre la situation en main.",251)
		end
	NODE(251)
		SAY("Les Mercs vont s'en occuper? C'est vrai?")
		
		ANSWER("C'est ce que je viens de dire, il me semble.",252)
	NODE(252)
		SAY("Ca veut dire que je suis sauv�? Parce que quand les Mercs s'occupent de quelque chose, ils rigolent pas! Merci runner! J'aurais pas cru que vous me seriez venu en aide. En fait, je pensais que personne pouvait m'aider. Mais j'ai d� me tromper. Je vais me remettre au travail tout de suite!")
		
		ANSWER("CONTINUER",253)
	NODE(253)
		GIVEMONEY(5000)
		SAY("Et si je peux, je vais essayer de vous renvoyer l'ascenseur plus tard. Sur moi j'ai 5.000 cr�dits, j'esp�re que �a vous suffira pour l'instant. Je vais faire en sorte que vous ayez de bonnes missions � l'avenir! Au revoir et merci, runner!")
		EPICRUNFINISHED(3,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end