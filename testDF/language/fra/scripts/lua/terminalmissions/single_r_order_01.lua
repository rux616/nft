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
		--Der Auftrag wird erklärt, Blaupause muss Zielperson gebracht werden, verkauft research tool
		SAY("Nous avons beaucoup de travail , c'est pourquoi nous avons besoins de runners comme vous pour créer des plans.")
		SAY("Nous avons tout simplement trop de travail. Il nous faut l'aide de runners pour créer des plans.")
		SAY("Nous avons besoins de plans, parce que nous sommes submergés de travail et nous ne pouvons pas tout faire par nous-mêmes.")
		
		ANSWER("Quel genre de plans ?",8)
		
	NODE(3)
		SAY("Désolé, mais vous devez donner vos plans à %NPC_NAME(1).")
		SAY("J'espère que tout se passe bien ?")
		SAY("Continuez à travailler au lieu de m'importuner.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		GETTARGETVALUE(0,2)
		TAKESPECIALITEMCNT(1507,1,result,3)
		if(result==0)then
			SAY("Pas facile de créer ces plans, n'est-ce pas ? Allez, continuez.")
			SAY("Vous devez créer suffisamment de plans avant de revenir me voir.")
			ENDDIALOG()
		else
			SAY("Parfait, maintenant nous pouvons assurer nos contrats et honorer les commandes de nos clients. Voici %REWARD_MONEY() crédits en récompense ainsi que trois InfoCubes.")
			SAY("C'est du bon travail, vous me surprenez. Voici votre paie, %REWARD_MONEY() crédits, plus 3 InfoCubes en raison de la qualité de votre travail.")
			SAY("Pas mal, et juste à temps. Votre récompense, c'était %REWARD_MONEY() crédits et trois InfoCubes, c'est bien ça ? Voilà, ravi d'avoir travaillé avec vous.")
			GIVEITEM(1501) -- Datacube
			GIVEITEM(1501)
			GIVEITEM(1501)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Bonne chance.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Oui, je peux vous vendre un Chercheur, mais vous allez en avoir pour 2000 crédits. Désolé, ici ce n'est pas un magasin.")
		
		ANSWER("Peu importe, j'achète.",7)
		ANSWER("Je vais continuer mon job sans ça.",5)
	NODE(7)
		TAKEMONEY(2000)
		if(result==0)then
			SAY("Désolé, mais vous n'avez pas assez d'argent.")
			
			ANSWER("Bon, je continuerai mon job comme ça.",5)
		else
			GIVEITEM(1503)
			SAY("le voilà. j'espère que vous en serez content.")
			
			ANSWER("Oui, merci.",5)
		end
	NODE(8)
		SAY("Nous avons grandement besoin de trois plans de %ITEMNAME(%TARGET_VALUE(0,2)). Ce serait bien si on pouvait avoir ces plans rapidement. Donnez-les à %NPC_NAME(1), à %NPC_WORLD(1).")
		SAY("Nous avons besoin de trois plans de %ITEMNAME(%TARGET_VALUE(0,2)) aussi rapidement que possible. Apportez-les à %NPC_NAME(1), à %NPC_WORLD(1)")
		
	
		ANSWER("Bien, je commence tout de suite.",5)
		ANSWER("J'ai besoin d'outils pour ce travail. Avez-vous de quoi m'aider ?",6)
end
