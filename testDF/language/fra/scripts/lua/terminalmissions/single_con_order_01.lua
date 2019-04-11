--new
function DIALOG()
	NODE(0)
		SAY("Bonjour, qu'est-ce que je peux faire pour vous ?")
		SAY("Oui, runner ? Un problème ?")
		SAY("Quoi ? J'ai beaucoup à faire.")
		SAY("Oui, quoi ?") 
		SAY("J'écoute.")
		SAY("Soyez bref.")
		SAY("Je ne pense pas qu'on se connaisse.")
		SAY("Vous venez pour le job, c'est ça ?")
		SAY("Je vous souhaite une journée profitable, runner.")
		SAY("Si vous avez un problème, demandez-moi.")
		
		ANSWER("Je viens pour ce job...",2)
		ANSWER("Je pense que vous avez un job pour moi.",2)
		ANSWER("Vous avez du travail pour moi ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Laissez tomber. Au revoir.",1)
		ANSWER("Ce n'est pas à vous que je voulais parler.",1)
		ANSWER("Je voulais parler à quelqu'un d'autre.",1)
		ANSWER("J'ai changé d'avis. Au revoir.",1)
	NODE(1)
		SAY("Bonne chance pour... la suite.")
		SAY(Repassez nous voir quand vous voulez.")
		SAY("Au revoir. J'ai des choses urgentes à faire.")
		SAY("Au revoir. Vous voudrez peut-être quelque chose la prochaine fois.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft construction device 1505
		SAY("Nous avons besoin de quelqu'un pour nous construire certaines choses. Evidemment, ce serait mieux s'il n'y avait pas de numéros de série, c'est un projet top secret.")
		SAY("Nous rencontrons quelques difficulté avec la production de certains objets. Nous cherchons des runners qui pourraient nous fournir des solutions de remplacement.")
		SAY("Des clients importants attendent une livraison spéciale. Le problème, c'est que notre structure de production est momentanément indisponible, et que nous ne pouvons pas construire les éléments demandés. On a donc besoin de votre aide.")
		
		ANSWER("Qu'est-ce que je dois faire, exactement ?",8)
	NODE(3)
		SAY("Il va falloir amener ce que vous avez construit à %NPC_NAME(1).")
		SAY("J'espère que vous n'en avez pas déjà marre ?")
		SAY("Je n'ai pas le temps de vous parler. Contentez-vous de faire ce que je vous ai demandé.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Objekt
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("Mais vous n'avez encore rien fait ! Revenez me voir uniquement quand vous avez tout.")
			SAY("Qu'est-ce que vous voulez ? C'est trop compliqué pour vous ?")
			ENDDIALOG()
		else
			SAY("Ah, enfin ! Cela va bien nous aider, en attendant qu'on puisse assurer nous-mêmes la production à nouveau. Tenez, voici les %REWARD_MONEY() crédits promis.")
			SAY("Bien. Nous allons procéder à une vérification avant de les envoyer. Voici la somme promise, %REWARD_MONEY() crédits.")
			SAY("Beau travail. S'il vous reste du temps, n'hésitez pas à revenir travailler pour nous. Voici vos %REWARD_MONEY() crédits.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		
		SAY("Très bien.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Il se trouve que j'ai justement un constructeur sous la main. Je pourrais vous le vendre, mais comme c'est le mien je ne peux pas descendre en dessous de 4000 crédits.")
		
ANSWER("Je le veux quand même. Je n'ai pas de temps à perdre.",7)
		ANSWER("Ca ne m'intéresse pas. Je vais continuer comme ça.",5)
	NODE(7)
		TAKEMONEY(4000)
		if(result==0)then
			SAY("Vous n'avez pas assez. Pas d'argent, pas de constructeur.")
			
			ANSWER("Alors je vais retourner travailler.",5)
		else
			GIVEITEM(1505)
			SAY("Le voilà. Je pense que vous ne le regretterez pas.")
			
			ANSWER("Merci.",5)
		end
	NODE(8)
		SAY("Nous voulons que vous construisiez un %ITEMNAME(%TARGET_VALUE(0,2)), et que vous le transmettiez à %NPC_NAME(1), dans %NPC_WORLD(1).")
		SAY("Vous devez construire un %ITEMNAME(%TARGET_VALUE(0,2)). Lorsque vous avez fini, portez-le à %NPC_NAME(1), à %NPC_WORLD(1).")
		
		ANSWER("Je commence tout de suite.",5)
		ANSWER("Je n'ai pas de constructeur. Est-ce que vous en auriez un à me vendre ?",6)
end
