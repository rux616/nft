--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--50
--0,D,Hontoka
--1,Pvp, 4Black Dragon
--2,D,Cole
--200
--3,D,Foster

--Startnode, Person
--0 Human Resource
--50 Black Lily
--100 Hontoka
--150 Cole
--200 Hontoka
--250 Foster

-----------------------------------------------------
--Recruiter

	NODE(0)
		SAY("Les membres de Tsunami sur lesquels nous avons des doutes ne sont pas d�sir�s tant qu'on n'a pas fait le m�nage dans cette histoire.")
		
		ANSWER("Bon, c'est dommage. Je pense que je vais devoir compter sur l'offre de Leila, apr�s tout.",1)
	NODE(1)
		SAY("Excuse-moi, mais la situation demande toute mon attention.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(2)
		SAY("Ne me force pas a appeler la s�curit�. Va parler a Leila, puisque c'est ce que tu as envie de faire.")
		ENDDIALOG()

-----------------------------------------------------
--Black Lily

	NODE(50)
		SAY("Enfin, tu es de retour! J'ai eu beaucoup de probl�mes pour contacter Hontoka, c'est un autre ex�cutant de Tsunami, mais peu de gens connaissent sa v�ritable identit�. Il pr�f�re observer les choses de loin. Je sais que dans le syndicat, il a une importance au moins aussi �lev�e que Taylor. Il m'a donn� un endroit ou tu pourras le trouver. Je pense qu'il a parl� du secteur industriel 02, je te sugg�re de commencer par la...")
		
		ANSWER("Enfin une bonne nouvelle. Ca n'�tait pas facile de rester discret pendant tout ce temps.",51)
	NODE(51)
		SAY("Tu vas avoir besoin de plus de preuves contre Taylor. Mais comment faire? Ca, je sais pas. Mais il y a des gens dans Neocron qui feraient presque tout pour de l'argent. Je pense que tu devrais d'abord aller voir Hontoka. Il a quelques id�es a ce sujet.")
		
		ANSWER("Je ferai comme tu me dis. Mais j'ai vraiment l'impression que la situation est en train de d�g�n�rer et �a me plait pas!",52)
	NODE(52)
		GIVEITEM(9252)
		SAY("Il faut que tu gardes ton calme, ou bien tes nerfs vont l�cher. Allez, d�p�che-toi, avant que Gecko nous surprenne. Et... Je voulais te rendre �a... Je n'ai pas pu le faire... Lorsque Gecko a compris que j'�tais une espionne, il m'a rendu l'implant et m'a dit que j'avais la permission de l'utiliser sur moi, si je trouvais ma vie trop insupportable...")
		
		ANSWER("Oui, l'injecteur de poison...",53)
	NODE(53)
		SAY("Oui. Mais maintenant, il faut que tu partes.")
		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()
		
	NODE(54)
		SAY("Va-t-en maintenant. Hontoka est dans le secteur industriel 02.")
		ENDDIALOG()

-----------------------------------------------------
--Hontoka

	NODE(100)
		SAY("On m'a inform� de ta situation. Leila pense qu'on peut te faire confiance, et moi j'ai confiance en Leila. Bon, c'est pas tr�s engageant, ton affaire. Tu as mis le serpent en col�re, et maintenant tu as peur de te faire mordre.")
		
		ANSWER("Je suis la parce que je n'ai plus d'autre espoir.",101)
	NODE(101)
		SAY("J'aime pas Taylor, il me fait penser a une sangsue. Toujours a sucer le sang des autres, il n'a jamais rien fait de lui-m�me. C'est une des raisons qui m'ont fait arr�ter de participer activement a Tsunami. Mais attention, j'ai toujours beaucoup d'amis dans le Syndicat, mais maintenant c'est plus la m�me chose. A l'�poque, il y avait encore un certain sens de l'honneur. Maintenant c'est termin�, a part pour V�ronique je pense.")
		
		ANSWER("Et toi, qu'est-ce que tu fais l�, si pr�s de Neocron?",102)
	NODE(102)
		SAY("Il faut bien que quelqu'un s'occupe des affaires ici. C'est pas facile de partir comme �a, apr�s tout ce qu'on a fait. Je critique pas V�ronique, ce que je critique c'est notre �poque. J'aimerais bien revenir en arri�re, a l'�poque ou on faisait tout avec honneur. Je voudrais qu'il y ait une menace suffisante pour que tout le monde s'unisse a nouveau. je veux t'aider, et je vais rechercher des preuves de la trahison de Taylor Gomez.")
		
		ANSWER("Merci. Mais moi, qu'est-ce que je peux faire en attendant?",103)
	NODE(103)
		SAY("Le Dragon Noir commence a rassembler des forces pour prot�ger ses arri�res. Leurs buts sont clairs : ils nous en veulent. V�ronique et Axom le savent, et ils commencent a se pr�parer eux aussi. La seule mani�re d'�viter l'affrontement serait de confondre Taylor directement et de le descendre. Ca permettrait de r�v�ler ses petits secrets. Mais on va devoir se pr�parer.; Si tu ne peux pas prouver qu'il est coupable, �a servira a rien de le tuer.")
		
		ANSWER("Plus facile � dire qu'� faire. O� est-ce que je pourrais trouver ces preuves?",104)
	NODE(104)
		SAY("Je connais peut-�tre quelqu'un. Quelqu'un qui a beaucoup de talents, et conna�t beaucoup de monde. Ethan Cole. Tu le trouveras dans le march� de l'Outzone. Il en saura peut-�tre plus.")
		
		ANSWER("Je pense que je trouverai moi-m�me. Merci.",105)
	NODE(105)
		SAY("Reviens me voir lorsque Cole t'aura donn� des informations.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	

-----------------------------------------------------
--Cole

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je n'ai aucune id�e de ce que vous pouvez me vouloir.")
			ENDDIALOG()
		else
			SAY("H� toi, petite raclure de Tsunami! Fais attention ou tu vas, c'est mon territoire ici!")
		
			ANSWER("Cole? On m'a dit que tu avais des informations int�ressantes pour moi.",151)
		end
	NODE(151)
		SAY("Mais c'est merveilleux! Un Tsunami qui me demande de l'aide! T'as pas l'air d'en avoir beaucoup dans la cervelle, on dirait. Et je suis pas dispos� a te donner un coup de main. Sauf si...")
		
		ANSWER("Sauf si quoi?",152)
	NODE(152)
		SAY("Peut-�tre que je pourrai te donner des informations si tu me rends un petit service.")
		
		ANSWER("Ca d�pend... Je...",153)
	NODE(153)
		SAY("Je te prenais pour un dur, mais en fait tu es juste un perdant comme les autres. C'est une honte que des gens se cr�vent le cul pour gagner des clous, et que pendant ce temps-la tu te pr�lasses en gagnant des sommes folles.  Hors de la vue, vermine.")
		
		ANSWER("Attends, je vais le faire... C'est d'accord. Qu'est-ce que c'est?",154)
	NODE(154)
		SAY("Bon, voila qui est mieux. Alors �coute-moi attentivement. Il y a un type qui arr�te pas de me coller au train en ce moment. Il me suit jour et nuit, il me l�che pas d'une semaine.")
		
		ANSWER("Et maintenant, ou est-ce qu'il est? Je le vois pas.",155)
	NODE(155)
		SAY("C'est un Dragon Noir. C'est un job qui devrait te plaire, �tant donn�e ton appartenance a Tsunami. Je veux que tu d�tournes son attention le temps que je demande a un ami a moi d'entrer dans son appartement pour chourer son mat�riel.")
		
		ANSWER("Je vois toujours pas ce que je dois faire dans tout �a.",156)
	NODE(156)
		SAY("Simplement d�tourner son attention. T'as qu'a tuer deux Dragons Noirs, et �a sera la panique chez eux. Et ensuite, mon pote pourra faire son travail tranquillement.")
		
		ANSWER("D'accord. Mais ensuite, tu ferais mieux d'avoir des informations pour moi.",157)
		ANSWER("Ca serait trop te demander de me dire qui je dois tuer?",163)
	NODE(157)
		SAY("Des infos? Ah oui, des infos... T'inqui�te pas, j'ai tout en t�te. Maintenant va faire ton travail.")
		SETNEXTDIALOGSTATE(158)
		ENDDIALOG()

--Spieler killt 4 Black Draggon PvP Trigger 1
		
	NODE(158)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Faut vraiment que t'aille tuer un Dragon Noir, sinon je pourrai rien faire pour toi.")
			ENDDIALOG()
		else
			SAY("Encore toi? Qu'est-ce que tu veux cette fois??")
		
			ANSWER("J'ai rempli ma part du contrat, maintenant c'est ton tour.",159)
		end
	NODE(159)
		SAY("Il �tait grand temps! C'est bien fait pour ce b�tard, il avait qu'� pas me coller au cul. Bon, mon pote a ruin� son �quipement, �a m'�tonnerait qu'il arrive a faire quelque chose maintenant. La confidentialit�, c'est important pour moi.")
		
		ANSWER("Dis-moi ce que tu sais sur Taylor Gomez.",160)
	NODE(160)
		GIVEITEM(9254)
		SAY("Je sais plein de trucs sur lui. Je sais de source sure qu'il veut tuer V�ronique. Il a �t� grassement pay� par le Dragon Noir pour �a. C'est aussi un pervers sexuel, et il touche des pots de vin de la part de plusieurs organisations de Neocron. C'est le genre de scoop que tu voulais? Tiens, voila un cube avec toutes les preuves.")
		
		ANSWER("C'est plus que ce que j'esp�rais. Je vais garder ces informations bien en s�curit�. Ca me ferait mal de le perdre...",161)
	NODE(161)
		SAY("Maintenant d�gage. Et t'�tonne pas si ce que je viens de te dire est pas vrai � 100%, compris?")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(162)
		ENDDIALOG()
		
	NODE(162)
		SAY("J'ai plus rien a te dire. Je t'ai donn� ce que tu voulais, maintenant retourne d'ou tu viens.")
		ENDDIALOG()
	

	NODE(163)
		SAY("Faut que tu abattes 2 types du Dragon Noir. Pas de runners, mais des employ�s. Va voir vers leur QG secret de Neocron, il y a plein de cibles faciles dans le coin.")
		
		ANSWER("Je tue n'importe qui?",164)
	NODE(164)
		SAY("Seulement des thugs. Mais attire pas trop l'attention, sinon on pourra pas te couvrir, on dira qu'on �tait pas au courant.")
		SETNEXTDIALOGSTATE(158)
		ENDDIALOG()


-----------------------------------------------------
--Hontoka

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Tu as vu Cole? Va le voir avant de revenir.")
			ENDDIALOG()
		else
			SAY("Tu as trouv� des preuves?")
		
			ANSWER("Oui, et m�me plus que pr�vu. Je dirais presque que j'en ai trop. Je me demande ou Cole a pu trouver toutes ces informations.",201)
		end
	NODE(201)
		SAY("C'est vrai qu'il a beaucoup d'informateurs. Mais le plus important, c'est de savoir si �a vaut quelque chose. Ca a l'air exploitable?")
		
		ANSWER("Oui, Taylor n'en a plus pour longtemps. Maintenant, on sait que Taylor a �t� pay� par le Dragon Noir pour tuer V�ronique. Ca devrait l'achever.",202)
	NODE(202)
		SAY("Avant de confronter Taylor, tu devrais peut-�tre t'entra�ner un peu, et te trouver de bonnes armes. Tu ferais bien d'aller parler a Foster.")
		SETNEXTDIALOGSTATE(203)
		ENDDIALOG()
		
	NODE(203)
		SAY("Actuellement, j'ai plus rien a te dire. Va voir Jester au secteur 07, il pourra te donner ce qu'il te faut.")
		ENDDIALOG()
		



-----------------------------------------------------
--Jester

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("D�sol�, mais j'ai beaucoup de travail.")
			ENDDIALOG()
		else
			SAY("Ah, te revoil�! Tu savais qu'il y a plein de gens qui te cherchent a Tsunami? Ou est-ce que tu �tais?")
		
			ANSWER("J'ai d�terr� quelques secrets concernant Taylor, je pense que j'ai assez pour lui r�gler son compte.",251)
		end
	NODE(251)
		SAY("Tu penses que tu peux le combattre? Je sais pas... T'as encore l'air un peu fragile, si je peux me permettre.")
		
		ANSWER("J'ai juste besoin de meilleurs armeS. Tu pourrais me rendre ce service?",252)
	NODE(252)
		SAY("Pas vraiment. Sauf si tu as quelque chose qui peut m'aider a travailler. R�cemment, je suis tomb� sur le plan d'une arme tr�s sophistiqu�e, et j'ai pas pu r�sister a l'envie de reprendre quelques aspects int�ressants. Maintenant, j'ai un plan, mais j'ai besoin de Valadium. C'est tr�s difficile a trouver, tu vas avoir du mal. Si tu arrives a mettre la main sur une de ces puces X-OR a nouveau, ou bien si tu me rends celle que je t'ai donn�e il y a quelques temps, alors je pourrai certainement m'en sortir.")
		
		ANSWER("J'ai justement r�cup�r� cette puce, et j'ai aussi du Vanadium. S'il ne te faut rien d'autre, c'est parfait.",253)
	NODE(253)
		TAKEITEM(9251)
		if(result==0)then
			SAY("Je ne peux rien faire si je n'ai pas de puce X-OR.")
			ENDDIALOG()
		else
			TAKEITEM(9253)
			if(result==0)then
				SAY("Il me faut du Vanadium pour terminer cette arme. la plupart du temps, le Valadium n'est m�me pas �tiquet�. C'est dire si on en trouve rarement.")
				ENDDIALOG()
			else
				GIVEITEMWITHSLOTS(9255,255,1)
				SAY("Parfait. Le plan provient d'une arme en d�veloppement secret, et n'a jamais �t� concr�tis�. Ca veut dire qu'il va falloir faire quelques tests dessus avant que tu puisses l'utiliser sur Taylor. (prochaine mission au niveau 45)")
				EPICRUNFINISHED(8,4)
				ACTIVATEDIALOGTRIGGER(3)
				ENDDIALOG()
				
			end
		end


end