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
		SAY("J'ai un message pour vous, de la part de Michail, de la section 13. Il a demandé à vous parler en personne. Vous savez déjà où il se trouve, j'imagine?")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Michail, du secteur 13, a demandé à vous parler. Vous le trouverez au labo.")
		ENDDIALOG()


--------------------------------------------------------------------
--MICHAIL
--50
	NODE(50)
		SAY("Ravi que vous ayez pu vous libérer. J'ai remarqué que vous avez exploré quelques pistes pour M. Brandon. Mais quel dommage que vous ne puissiez pas voir l'immense potentiel de notre avenir. C'est la raison pour laquelle j'ai une suggestion à vous faire.")

		ANSWER("Je ne sais pas si je peux vous faire confiance ou pas, mais je vous écoute.",51)
	NODE(51)
		SAY("Parfait. Pourquoi ne pas aller voir Finster et l'interroger au sujet de ses plans? Ainsi, vous pourrez déterminer si vous agissez bien ou non. Vous le trouvez près de la mine Gabanium, dans les Terres Brûlées. Faites un essai, vous verrez bien. Ensuite, vous pourrez toujours faire marche arrière.")

		ANSWER("Alors il faut que je parle à Finster, maintenant? Après tout, pourquoi pas. Mais si c'est un piège...!",52)
	NODE(52)
		SAY("Non, rassurez-vous. Pas de piège, pas d'entourloupes.")
		SETNEXTDIALOGSTATE(53)
		ENDDIALOG()
		
	NODE(53)
		SAY("Vous trouverez Finster à la mine Gabanium. Allez lui parler, ensuite vous pourrez l'estimer à sa juste valeur.")
		ENDDIALOG()
		


--------------------------------------------------------------------
--FINSTERBORG
--100
	NODE(100)
		SAY("Bienvenue. On m'a prévenu de votre arrivée. Je pense que cette rencontre va nous faire évoluer dans le bon sens.")

		ANSWER("Je m'attendais à un piège, à vrai dire.",101)
	NODE(101)
		SAY("Je vais vous parler de mes plans, et je vais vous expliquer ça en détail.")

		ANSWER("Alors, qu'est-ce que vous voulez vraiment?",102)
		ANSWER("Qui est le vrai Finster? Celui du CryoVault, ou bien vous?",105)
		ANSWER("Mais qui êtes-vous vraiment?",107)
		ANSWER("J'en ai assez entendu.",109)
	NODE(102)
		SAY("Ce que je veux? Oh, pas grand chose. Je veux juste voir la compagnie qui m'appartient légalement connaître un avenir radieux.")

		ANSWER("Mais vous ne croyez tout de même pas que votre plan va fonctionner?",103)
	NODE(103)
		SAY("Mes plans ont 62% de chances de réussir. Evidemment, ce chiffre varie de jour en jour, mais j'affine chaque jour mes calculs.")

		ANSWER("Laissez tomber. Vous avez fini votre temps. Arrêtez tout immédiatement, ou bien vous allez ruiner la compagnie que vous aimez.",104)
	NODE(104)
		SAY("C'est inutile de chercher à m'empêcher d'accomplir ma destinée. Ma dernière volonté n'a pas été exaucée. J'aurais dû être décongelé il y a vingt ans, mais au lieu de ça j'ai passé ce temps congelé dans un CryoVault. Et j'y serais probablement resté jusqu'à la fin des temps si je n'avais pas anticipé les événements. C'est pour ça que j'ai inclus un système de sécurité. Mais assez parlé de ça.")

		ANSWER("Très bien, alors parlons d'autre chose.",101)
	NODE(105)
		SAY("Les deux. Finster est encore dans son CryoVault, mais celui que vous voyez est le même. Mais ce qui peut être considéré comme l'essence de Jakob Finster est bel et bien dans le CryoVault. Vous comprendrez aisément que j'ai dû venir chercher le CryoVault pour pouvoir pleinement me reconstituer. Les choses ont plusieurs facettes, et moi j'en ai une dizaine.")

		ANSWER("Donc vous êtes un clone?",101)
	NODE(106)
		SAY("Oui et non, ça dépend du point de vue. Mais parlons d'autre chose.")

		ANSWER("Soit.",101)
	NODE(107)
		SAY("Je suis ce que je semble être. Je suis le reflet de Jakob Finster, une de ses créations. Mais à l'intérieur, je ressemble plus à une machine.")

		ANSWER("Donc vous êtes un robot? Mais alors, ça veut dire que tout était convenu d'avance? Finster savait que sa dernière volonté ne serait jamais exaucée.",108)
	NODE(108)
		SAY("Non, il n'en savait rien. Mais un manager qui réussit est un manager qui couvre ses arrières.")

		ANSWER("Merci, je pense que j'en ai assez entendu.",101)
	NODE(109)
		SAY("Je vous assure que je n'ai pas l'intention de détruire ProtoPharm. Je n'ai pas l'intention de tuer si cela n'est pas strictement nécessaire. Qu'est-ce que vous pensez de tout ça, vous? Vous voulez travailler avec moi? Votre opinion est importante pour moi.")

		ANSWER("Je ne peux pas accepter ce que vous dites. Après tout, vous faites chanter ProtoPharm, et puis je ne vais pas faire confiance à un robot qui prend une apparence trompeuse pour cacher sa nature véritable. Je vais en parler à George tout de suite.",110)
	NODE(110)
		SAY("Navré de l'apprendre. Mais je ne peux pas permettre à quelqu'un de trahir mes secrets.")
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
			SAY("ravi de vous voir. Quelque chose à me dire? Quelle est la raison de cette visite inopinée?")

			ANSWER("J'ai vu Finster.",151)
		end
	NODE(151)
		SAY("Euh... pardon? Pourquoi? J'espère que vous n'avez pas l'intention de changer de camp! Je sais que certains ici aimeraient voir Finster revenir à la tête de la compagnie, mais ça n'est pas une raison pour prendre des mesures aussi radicales.")

		ANSWER("Calmez-vous, je n'ai pas l'intention de changer de camp. Et puis, Finster a déclaré qu'il n'était qu'un robot.",152)
	NODE(152)
		SAY("Surprenant. Un robot? Oui, ça permettrait d'expliquer la présence de doubles. Mais a dû passer beaucoup de temps pour les construire. Je vois la situation d'un autre oeil maintenant.")

		ANSWER("De quoi est-ce que vous parlez? Finster a toujours ses plans en tête, et il veut peut-être se libérer du CryoVault. Au moins, il n'a pas l'air de vouloir employer la violence si ça n'est pas absolument nécessaire. Mais pourtant, il m'a attaqué avant que je m'en aille.",153)
	NODE(153)
		SAY("Je comprends. Pendant que vous étiez parti, j'ai réussi à acquérir des autorisations supplémentaires. Certaines signées directement de Sandra Frasier. Maintenant, c'est à moi de décider des mesures à prendre. Je pense que nous devons mettre fin sans plus tarder à la menace que représente Finster. Il est inacceptable que la compagnie soit tenue en échec par un simple robot.")

		ANSWER("Alors qu'est-ce que vous suggérez?",154)
	NODE(154)
		SAY("Comme vous savez déjà où Finster se cache, je pense que vous devriez vous en débarrasser. Après tout, ça n'est qu'une machine.")

		ANSWER("Ca ne changera rien. Si on l'abat, il reviendra rapidement. C'est un robot, et pas un des plus faciles à descendre.",155)
	NODE(155)
		SAY("Exactement. C'est pour cela qu'on ne va pas utiliser d'arme conventionnelle, mais un virus. Mais ça ne sera possible que si vous le descendez d'abord. On aura alors une courte période pendant laquelle on pourra injecter le virus avant que son système redémarre. Nous pourrons injecter ce virus à distance, en utilisant le réseau. Mais parlez-lui d'abord, vous aurez peut-être la possibilité d'en apprendre davantage, peut-être sur quelque chose qui vous a échappé la première fois. Quelque chose qui nous permettrait de localiser son CryoVault.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()


--------------------------------------------------------------------
--FINSTER
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je ne sais pas comment vous avez réussi à m'échapper la première fois, mais cela ne se reproduira plus.")
			ATTACK()
			ENDDIALOG()
		else
			SAY("Encore vous! Je vais vous détruire une bonne fois pour toutes. Je n'ai rien contre vous personnellement, croyez-moi mais je ne peux pas vous laisser en vie, c'est trop risqué.")

			ANSWER("C'est exactement pour ça que je suis là. Je vais vous réduire à l'état de boîte de conserves.",201)
		end
	NODE(201)
		SAY("Quel dommage qu'il faille en finir ainsi. Mais je ne vais pas changer mes plans. Tout a été préparé. Allez-y, tirez-moi dessus, mais vous ne pourrez pas m'arrêter.")
		SETNEXTDIALOGSTATE(202)
		
		ATTACK()
		ENDDIALOG()
	NODE(202)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous finirez par en avoir assez.")
			ENDDIALOG()	
		else
			SAY("Module de parole... fonctionnalité 2%... Système en état de veille... Veuillez recommencer ultérieurement.")
			ENDDIALOG()

		end

--------------------------------------------------------------------
--GEORGE
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Occupez-vous de Finster. C'est notre plus haute priorité actuellement.")
			ENDDIALOG()
		else
			SAY("J'espère que vous apportez de bonnes nouvelles.")
	
			ANSWER("Je l'ai abattu, et le virus a été injecté. C'est la fin de Finster le robot.",251)
		end
	NODE(251)
		GIVEMONEY(40000)
		SAY("Beau travail. Vous avez bien mérité votre récompense. Mais il y a autre chose. Nous allons maintenant devoir stopper les plans de ce maudit robot. (prochaine mission au niveau 45)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(6,4)
		ENDDIALOG()
		
	

end