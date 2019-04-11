--new
function DIALOG()
	NODE(0)
		SAY("Bonjour, comment puis-je vous aider ?")
		SAY("Oui, runner ? Un problème ?")
		SAY("Quoi ? J'ai beaucoup à faire.")
		SAY("Quel est le problème ?") 
		SAY("Oui, je vous écoute.")
		SAY("Peu importe ce que vous voulez, soyez bref.")
		SAY("Je ne pense pas vous connaître.")
		SAY("Vous venez pour le job, c'est ça ?")
		SAY("Je vous souhaite une journée profitable, runner.")
		SAY("Si vous avez un problème, demandez-moi.")
		
		ANSWER("Oui, je suis là pour le job...",2)
		ANSWER("Il me semble que vous avez du travail pour moi.",2)
		ANSWER("Vous avez du travail pour moi ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Laissez tomber. Au revoir.",1)
		ANSWER("Ce n'est pas à vous que je voulais parler, de toute façon.",1)
		ANSWER("Je voulais parler à quelqu'un d'autre.",1)
		ANSWER("J'ai fait mon choix. Au revoir.",1)
	NODE(1)
		SAY("Bonne chance... Quoi que vous fassiez.")
		SAY("Revenez nous voir.")
		SAY("Au revoir. Moi aussi, j'ai des affaires qui ne peuvent pas attendre.")
		SAY("Au revoir. Peut-être serez-vous intéressé par quelque chose la prochaine fois.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft recycling device 1500
		SAY("Nous avons besoin de certains matériaux pour concrétiser les derniers développements en date. Et nous avons besoin de vous.")
		SAY("Il se peut que le recyclage soit l'avenir. Même actuellement, il est parfois plus avantageux de recycler que d'acquérir des substances pures. C'est pourquoi nous avons besoin de gens tels que vous.")
		SAY("Les matériaux recyclés sont d'une qualité presque équivalente à ceux qui sont produits purs. Et ce sera votre travail.")
		
		ANSWER("Qu'est-ce que je dois faire exactement ?",8)
	NODE(3)
		SAY("Désolé, mais vous devrez donner votre production à %NPC_NAME(1).")
		SAY("J'espère que vous n'avez rencontré aucune difficulté jusqu'ici ?")
		SAY("Continuez à travailler, ne gaspillez pas mon temps précieux.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt recycletes Objekt
		GETTARGETVALUE(0,2)	
		TAKEITEMCNT(result,5)
		if(result==0)then
			SAY("%NPC_NAME(0) ne vous a pas dit que j'avais vraiment besoin de ces matériaux ? Alors dépêchez-vous de me les apporter.")
			SAY("Quoi ? N'allez pas me dire qu'il n'existe pas assez de choses à recycler dans les rues...")
			ENDDIALOG()
		else
			SAY("Merci ! En plus, la qualité n'est pas trop mauvaise. Voici votre récompense, %REWARD_MONEY() crédits. Vous avez peut-être un avenir dans le recyclage, qui sait.")
			SAY("Bon travail. Ce n'était pas trop difficile, avec toutes ces ordures qui traînent dans la rue, n'est-ce pas ? Voici votre récompense, %REWARD_MONEY() crédits.")
			SAY("Vous avez bien gagné ces %REWARD_MONEY() crédits. J'attends déjà la prochaine occasion que nous aurons de travailler ensemble.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Bonne chance dans votre travail.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Oui, je pourrais vous vendre un recycler, pour la somme de 700 crédits. Mais j'ai bien peut de ne plus en avoir beaucoup en stock.")
		
		ANSWER("Peu importe, je veux tout de même en acheter un.",7)
		ANSWER("Non merci, je vais continuer mon travail.",5)
	NODE(7)
		TAKEMONEY(700)
		if(result==0)then
			SAY("je ne peux pas vous vendre un recycleur pour si peu, j'en suis désolé.")
			
			ANSWER("Très bien, alors je vais continuer mon travail.",5)
		else
			GIVEITEM(1500)
			SAY("Le voilà. J'espère que vous en serez content.")
			
			ANSWER("Oui, j'en suis certain.",5)
		end
	NODE(8)
		SAY("Votre mission est de recycler 5 %ITEMNAME(%TARGET_VALUE(0,2)) à partir d'autres matériaux, puis de donner le résultat de ce recyclage à %NPC_NAME(1), secteur %NPC_WORLD(1).")
		SAY("%NPC_NAME(1)est déjà dans le secteur %NPC_WORLD(1) à attendre vos 5 %ITEMNAME(%TARGET_VALUE(0,2)). Il serait bon que vous puissiez recycler ceci aussi vite que possible pour %NPC_NAME(1)")

		ANSWER("Je commence tout de suite.",5)
		ANSWER("J'ai besoin d'un recycleur pour ce genre de travail. Vous en auriez un ?",6)
end
