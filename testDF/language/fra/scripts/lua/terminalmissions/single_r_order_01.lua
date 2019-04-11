--new
function DIALOG()
	NODE(0)
		SAY("Bonjour, comment puis-je vous aider ?")
		SAY("Oui, runner ? Un probl�me ?")
		SAY("Quoi ? J'ai beaucoup � faire.")
		SAY("Quel est le probl�me ?") 
		SAY("Oui, je vous �coute.")
		SAY("Peu importe ce que vous voulez, soyez bref.")
		SAY("Je ne pense pas vous conna�tre.")
		SAY("Vous venez pour le job, c'est �a ?")
		SAY("Je vous souhaite une journ�e profitable, runner.")
		SAY("Si vous avez un probl�me, demandez-moi.")
		
		ANSWER("Oui, je suis l� pour le job...",2)
		ANSWER("Il me semble que vous avez du travail pour moi.",2)
		ANSWER("Vous avez du travail pour moi ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Laissez tomber. Au revoir.",1)
		ANSWER("Ce n'est pas � vous que je voulais parler, de toute fa�on.",1)
		ANSWER("Je voulais parler � quelqu'un d'autre.",1)
		ANSWER("J'ai fait mon choix. Au revoir.",1)
	NODE(1)
		SAY("Bonne chance... Quoi que vous fassiez.")
		SAY("Revenez nous voir.")
		SAY("Au revoir. Moi aussi, j'ai des affaires qui ne peuvent pas attendre.")
		SAY("Au revoir. Peut-�tre serez-vous int�ress� par quelque chose la prochaine fois.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erkl�rt, Blaupause muss Zielperson gebracht werden, verkauft research tool
		SAY("Nous avons beaucoup de travail , c'est pourquoi nous avons besoins de runners comme vous pour cr�er des plans.")
		SAY("Nous avons tout simplement trop de travail. Il nous faut l'aide de runners pour cr�er des plans.")
		SAY("Nous avons besoins de plans, parce que nous sommes submerg�s de travail et nous ne pouvons pas tout faire par nous-m�mes.")
		
		ANSWER("Quel genre de plans ?",8)
		
	NODE(3)
		SAY("D�sol�, mais vous devez donner vos plans � %NPC_NAME(1).")
		SAY("J'esp�re que tout se passe bien ?")
		SAY("Continuez � travailler au lieu de m'importuner.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		GETTARGETVALUE(0,2)
		TAKESPECIALITEMCNT(1507,1,result,3)
		if(result==0)then
			SAY("Pas facile de cr�er ces plans, n'est-ce pas ? Allez, continuez.")
			SAY("Vous devez cr�er suffisamment de plans avant de revenir me voir.")
			ENDDIALOG()
		else
			SAY("Parfait, maintenant nous pouvons assurer nos contrats et honorer les commandes de nos clients. Voici %REWARD_MONEY() cr�dits en r�compense ainsi que trois InfoCubes.")
			SAY("C'est du bon travail, vous me surprenez. Voici votre paie, %REWARD_MONEY() cr�dits, plus 3 InfoCubes en raison de la qualit� de votre travail.")
			SAY("Pas mal, et juste � temps. Votre r�compense, c'�tait %REWARD_MONEY() cr�dits et trois InfoCubes, c'est bien �a ? Voil�, ravi d'avoir travaill� avec vous.")
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
		SAY("Oui, je peux vous vendre un Chercheur, mais vous allez en avoir pour 2000 cr�dits. D�sol�, ici ce n'est pas un magasin.")
		
		ANSWER("Peu importe, j'ach�te.",7)
		ANSWER("Je vais continuer mon job sans �a.",5)
	NODE(7)
		TAKEMONEY(2000)
		if(result==0)then
			SAY("D�sol�, mais vous n'avez pas assez d'argent.")
			
			ANSWER("Bon, je continuerai mon job comme �a.",5)
		else
			GIVEITEM(1503)
			SAY("le voil�. j'esp�re que vous en serez content.")
			
			ANSWER("Oui, merci.",5)
		end
	NODE(8)
		SAY("Nous avons grandement besoin de trois plans de %ITEMNAME(%TARGET_VALUE(0,2)). Ce serait bien si on pouvait avoir ces plans rapidement. Donnez-les � %NPC_NAME(1), � %NPC_WORLD(1).")
		SAY("Nous avons besoin de trois plans de %ITEMNAME(%TARGET_VALUE(0,2)) aussi rapidement que possible. Apportez-les � %NPC_NAME(1), � %NPC_WORLD(1)")
		
	
		ANSWER("Bien, je commence tout de suite.",5)
		ANSWER("J'ai besoin d'outils pour ce travail. Avez-vous de quoi m'aider ?",6)
end
