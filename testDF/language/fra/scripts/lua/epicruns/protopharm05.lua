--new
--ProtoPharm

--
--Trigger
--Triggernumber,Type,Person
--0,D,FINSTERBORG 100
--1,D,GEORGE
--2,KILL,FINSTER 200
--3
--
--Startnode, Person
--0, Human Resource Director
--50, MICHAIL
--100, FINSTERBORG
--150, GEORGE
--200, FINSTERBORG
--250, GEORGE
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("J'ai un message pour vous, de la part de Michail, de la section 13. Il a demand� � vous parler en personne. Vous savez d�j� o� il se trouve, j'imagine?")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Michail, du secteur 13, a demand� � vous parler. Vous le trouverez au labo.")
		ENDDIALOG()


--------------------------------------------------------------------
--MICHAIL
--50
	NODE(50)
		SAY("Ravi que vous ayez pu vous lib�rer. J'ai remarqu� que vous avez explor� quelques pistes pour M. Brandon. Mais quel dommage que vous ne puissiez pas voir l'immense potentiel de notre avenir. C'est la raison pour laquelle j'ai une suggestion � vous faire.")

		ANSWER("Je ne sais pas si je peux vous faire confiance ou pas, mais je vous �coute.",51)
	NODE(51)
		SAY("Parfait. Pourquoi ne pas aller voir Finster et l'interroger au sujet de ses plans? Ainsi, vous pourrez d�terminer si vous agissez bien ou non. Vous le trouvez pr�s de la mine Gabanium, dans les Terres Br�l�es. Faites un essai, vous verrez bien. Ensuite, vous pourrez toujours faire marche arri�re.")

		ANSWER("Alors il faut que je parle � Finster, maintenant? Apr�s tout, pourquoi pas. Mais si c'est un pi�ge...!",52)
	NODE(52)
		SAY("Non, rassurez-vous. Pas de pi�ge, pas d'entourloupes.")
		SETNEXTDIALOGSTATE(53)
		ENDDIALOG()
		
	NODE(53)
		SAY("Vous trouverez Finster � la mine Gabanium. Allez lui parler, ensuite vous pourrez l'estimer � sa juste valeur.")
		ENDDIALOG()
		


--------------------------------------------------------------------
--FINSTERBORG
--100
	NODE(100)
		SAY("Bienvenue. On m'a pr�venu de votre arriv�e. Je pense que cette rencontre va nous faire �voluer dans le bon sens.")

		ANSWER("Je m'attendais � un pi�ge, � vrai dire.",101)
	NODE(101)
		SAY("Je vais vous parler de mes plans, et je vais vous expliquer �a en d�tail.")

		ANSWER("Alors, qu'est-ce que vous voulez vraiment?",102)
		ANSWER("Qui est le vrai Finster? Celui du CryoVault, ou bien vous?",105)
		ANSWER("Mais qui �tes-vous vraiment?",107)
		ANSWER("J'en ai assez entendu.",109)
	NODE(102)
		SAY("Ce que je veux? Oh, pas grand chose. Je veux juste voir la compagnie qui m'appartient l�galement conna�tre un avenir radieux.")

		ANSWER("Mais vous ne croyez tout de m�me pas que votre plan va fonctionner?",103)
	NODE(103)
		SAY("Mes plans ont 62% de chances de r�ussir. Evidemment, ce chiffre varie de jour en jour, mais j'affine chaque jour mes calculs.")

		ANSWER("Laissez tomber. Vous avez fini votre temps. Arr�tez tout imm�diatement, ou bien vous allez ruiner la compagnie que vous aimez.",104)
	NODE(104)
		SAY("C'est inutile de chercher � m'emp�cher d'accomplir ma destin�e. Ma derni�re volont� n'a pas �t� exauc�e. J'aurais d� �tre d�congel� il y a vingt ans, mais au lieu de �a j'ai pass� ce temps congel� dans un CryoVault. Et j'y serais probablement rest� jusqu'� la fin des temps si je n'avais pas anticip� les �v�nements. C'est pour �a que j'ai inclus un syst�me de s�curit�. Mais assez parl� de �a.")

		ANSWER("Tr�s bien, alors parlons d'autre chose.",101)
	NODE(105)
		SAY("Les deux. Finster est encore dans son CryoVault, mais celui que vous voyez est le m�me. Mais ce qui peut �tre consid�r� comme l'essence de Jakob Finster est bel et bien dans le CryoVault. Vous comprendrez ais�ment que j'ai d� venir chercher le CryoVault pour pouvoir pleinement me reconstituer. Les choses ont plusieurs facettes, et moi j'en ai une dizaine.")

		ANSWER("Donc vous �tes un clone?",101)
	NODE(106)
		SAY("Oui et non, �a d�pend du point de vue. Mais parlons d'autre chose.")

		ANSWER("Soit.",101)
	NODE(107)
		SAY("Je suis ce que je semble �tre. Je suis le reflet de Jakob Finster, une de ses cr�ations. Mais � l'int�rieur, je ressemble plus � une machine.")

		ANSWER("Donc vous �tes un robot? Mais alors, �a veut dire que tout �tait convenu d'avance? Finster savait que sa derni�re volont� ne serait jamais exauc�e.",108)
	NODE(108)
		SAY("Non, il n'en savait rien. Mais un manager qui r�ussit est un manager qui couvre ses arri�res.")

		ANSWER("Merci, je pense que j'en ai assez entendu.",101)
	NODE(109)
		SAY("Je vous assure que je n'ai pas l'intention de d�truire ProtoPharm. Je n'ai pas l'intention de tuer si cela n'est pas strictement n�cessaire. Qu'est-ce que vous pensez de tout �a, vous? Vous voulez travailler avec moi? Votre opinion est importante pour moi.")

		ANSWER("Je ne peux pas accepter ce que vous dites. Apr�s tout, vous faites chanter ProtoPharm, et puis je ne vais pas faire confiance � un robot qui prend une apparence trompeuse pour cacher sa nature v�ritable. Je vais en parler � George tout de suite.",110)
	NODE(110)
		SAY("Navr� de l'apprendre. Mais je ne peux pas permettre � quelqu'un de trahir mes secrets.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ATTACK()
		ENDDIALOG()
		

--------------------------------------------------------------------
--GEORGE
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("J'attends une visite importante. Repassez plus tard.")
			ENDDIALOG()
		else
			SAY("ravi de vous voir. Quelque chose � me dire? Quelle est la raison de cette visite inopin�e?")

			ANSWER("J'ai vu Finster.",151)
		end
	NODE(151)
		SAY("Euh... pardon? Pourquoi? J'esp�re que vous n'avez pas l'intention de changer de camp! Je sais que certains ici aimeraient voir Finster revenir � la t�te de la compagnie, mais �a n'est pas une raison pour prendre des mesures aussi radicales.")

		ANSWER("Calmez-vous, je n'ai pas l'intention de changer de camp. Et puis, Finster a d�clar� qu'il n'�tait qu'un robot.",152)
	NODE(152)
		SAY("Surprenant. Un robot? Oui, �a permettrait d'expliquer la pr�sence de doubles. Mais a d� passer beaucoup de temps pour les construire. Je vois la situation d'un autre oeil maintenant.")

		ANSWER("De quoi est-ce que vous parlez? Finster a toujours ses plans en t�te, et il veut peut-�tre se lib�rer du CryoVault. Au moins, il n'a pas l'air de vouloir employer la violence si �a n'est pas absolument n�cessaire. Mais pourtant, il m'a attaqu� avant que je m'en aille.",153)
	NODE(153)
		SAY("Je comprends. Pendant que vous �tiez parti, j'ai r�ussi � acqu�rir des autorisations suppl�mentaires. Certaines sign�es directement de Sandra Frasier. Maintenant, c'est � moi de d�cider des mesures � prendre. Je pense que nous devons mettre fin sans plus tarder � la menace que repr�sente Finster. Il est inacceptable que la compagnie soit tenue en �chec par un simple robot.")

		ANSWER("Alors qu'est-ce que vous sugg�rez?",154)
	NODE(154)
		SAY("Comme vous savez d�j� o� Finster se cache, je pense que vous devriez vous en d�barrasser. Apr�s tout, �a n'est qu'une machine.")

		ANSWER("Ca ne changera rien. Si on l'abat, il reviendra rapidement. C'est un robot, et pas un des plus faciles � descendre.",155)
	NODE(155)
		SAY("Exactement. C'est pour cela qu'on ne va pas utiliser d'arme conventionnelle, mais un virus. Mais �a ne sera possible que si vous le descendez d'abord. On aura alors une courte p�riode pendant laquelle on pourra injecter le virus avant que son syst�me red�marre. Nous pourrons injecter ce virus � distance, en utilisant le r�seau. Mais parlez-lui d'abord, vous aurez peut-�tre la possibilit� d'en apprendre davantage, peut-�tre sur quelque chose qui vous a �chapp� la premi�re fois. Quelque chose qui nous permettrait de localiser son CryoVault.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()


--------------------------------------------------------------------
--FINSTER
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je ne sais pas comment vous avez r�ussi � m'�chapper la premi�re fois, mais cela ne se reproduira plus.")
			ATTACK()
			ENDDIALOG()
		else
			SAY("Encore vous! Je vais vous d�truire une bonne fois pour toutes. Je n'ai rien contre vous personnellement, croyez-moi mais je ne peux pas vous laisser en vie, c'est trop risqu�.")

			ANSWER("C'est exactement pour �a que je suis l�. Je vais vous r�duire � l'�tat de bo�te de conserves.",201)
		end
	NODE(201)
		SAY("Quel dommage qu'il faille en finir ainsi. Mais je ne vais pas changer mes plans. Tout a �t� pr�par�. Allez-y, tirez-moi dessus, mais vous ne pourrez pas m'arr�ter.")
		SETNEXTDIALOGSTATE(202)
		
		ATTACK()
		ENDDIALOG()
	NODE(202)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous finirez par en avoir assez.")
			ENDDIALOG()	
		else
			SAY("Module de parole... fonctionnalit� 2%... Syst�me en �tat de veille... Veuillez recommencer ult�rieurement.")
			ENDDIALOG()

		end

--------------------------------------------------------------------
--GEORGE
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Occupez-vous de Finster. C'est notre plus haute priorit� actuellement.")
			ENDDIALOG()
		else
			SAY("J'esp�re que vous apportez de bonnes nouvelles.")
	
			ANSWER("Je l'ai abattu, et le virus a �t� inject�. C'est la fin de Finster le robot.",251)
		end
	NODE(251)
		GIVEMONEY(40000)
		SAY("Beau travail. Vous avez bien m�rit� votre r�compense. Mais il y a autre chose. Nous allons maintenant devoir stopper les plans de ce maudit robot. (prochaine mission au niveau 45)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(6,4)
		ENDDIALOG()
		
	

end