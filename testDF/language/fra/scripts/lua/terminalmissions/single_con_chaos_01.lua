--new
function DIALOG()
	NODE(0)
		SAY("Bonjour, quoi de neuf ?")
		SAY("Oui, runner ? Un problème ?")
		SAY("Quoi ? J'ai plein de trucs à faire, compris ?")
		SAY("Qu'est-ce qu'il y a ?") 
		SAY("Oui, je t'écoute.")
		SAY("Peu importe ce que tu veux, va droit au but.")
		SAY("Je ne t'ai jamais vu avant, toi.")
		SAY("Tu es là pour un job, c'est ça ?")
		SAY("Prends ton temps, runner, la vie est belle.")
		SAY("Tu veux quoi ?")
		
		ANSWER("Je veux un job.",2)
		ANSWER("Je crois que tu as un job pour moi.",2)
		ANSWER("Besoin d'un service ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("J'ai rien dit. Au revoir.",1)
		ANSWER("C'est par à toi que je voulais parler, de toute façon.",1)
		ANSWER("Je voulais parler à quelqu'un d'autre.",1)
		ANSWER("J'ai changé d'avis. Au revoir.",1)
	NODE(1)
		SAY("Fais attention à toi, d'accord ?")
		SAY("A la prochaine, runner.")
		SAY("Tu pense que j'ai que ça à faire, perdre mon temps à t'écouter ? Ben non, t'as rien compris à la vie !")
		SAY("Peut-être que j'aurai quelque chose pour toi la prochaine fois.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft construction device 1505
		SAY("On a besoin de quelques runners pour nous construire des trucs. Surtout, faut rester discret.")
		SAY("On est en retard sur notre planning. Donc, on a besoin de toi pour nous aider à construire des choses.")
		SAY("De bons amis à nous veulent obtenir certaines choses, et malheureusement, on leur a promises. Mais comme on a plus rien pour produire actuellement, on a besoin de toi...")
		
		ANSWER("Et qu'est-ce que vous attendez de moi exactement ?",8)
	NODE(3)
		SAY("Va donner ce que tu as fait à %NPC_NAME(1).")
		SAY("T'en as déjà marre ?")
		SAY("Pas le temps de parler.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Objekt
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("Retourne me voir quand tu as ce qu'il faut.")
			SAY("Qu'est-ce que tu veux ? C'est trop compliqué pour toi, ce job ?")
			ENDDIALOG()
		else
			SAY("Ah, enfin ! Ca nous permettra de tenir le temps que les affaires reprennent vraiment. Tiens, voilà tes %REWARD_MONEY() crédits.")
			SAY("Bien, on va vérifier ça et le leur envoyer. Une promesse est une promesse, voilà tes %REWARD_MONEY() crédits.")
			SAY("Bon travail. Tu pourras revenir quand tu veux. Tiens, voilà tes %REWARD_MONEY() crédits.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		
		SAY("Très bien.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("T'en as de la chance, j'ai un constructeur en réserve. Je l'ai acheté il y a longtemps. Je te le cède pour 4000 creds. Marché conclu ?")
		
		ANSWER("Ca m'intéresse. J'ai déjà perdu trop de temps.",7)
		ANSWER("Ca m'intéresse pas. Je vais me débrouiller par moi-même.",5)
	NODE(7)
		TAKEMONEY(4000)
		if(result==0)then
			SAY("T'as pas assez d'argent pour ça.")
			
			ANSWER("Bon, je vais devoir retourner travailler, alors.",5)
		else
			GIVEITEM(1505)
			SAY("Tiens, prends-le. Je pense que tu le regretteras pas.")
			
			ANSWER("Merci.",5)
		end
	NODE(8)
		SAY("Construis-nous un %ITEMNAME(%TARGET_VALUE(0,2)), et amène-le à %NPC_NAME(1), à %NPC_WORLD(1).")
		SAY("On a besoin d'un %ITEMNAME(%TARGET_VALUE(0,2)). Quand tu l'as, tu l'emmènes chez %NPC_NAME(1), à %NPC_WORLD(1).")
		
		
		ANSWER("J'y vais tout de suite.",5)
		ANSWER("Je vais avoir besoin d'un constructeur. Vous en avez un ?",6)
end
