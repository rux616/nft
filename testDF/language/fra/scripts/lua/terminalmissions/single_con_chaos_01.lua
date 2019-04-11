--new
function DIALOG()
	NODE(0)
		SAY("Bonjour, quoi de neuf ?")
		SAY("Oui, runner ? Un probl�me ?")
		SAY("Quoi ? J'ai plein de trucs � faire, compris ?")
		SAY("Qu'est-ce qu'il y a ?") 
		SAY("Oui, je t'�coute.")
		SAY("Peu importe ce que tu veux, va droit au but.")
		SAY("Je ne t'ai jamais vu avant, toi.")
		SAY("Tu es l� pour un job, c'est �a ?")
		SAY("Prends ton temps, runner, la vie est belle.")
		SAY("Tu veux quoi ?")
		
		ANSWER("Je veux un job.",2)
		ANSWER("Je crois que tu as un job pour moi.",2)
		ANSWER("Besoin d'un service ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("J'ai rien dit. Au revoir.",1)
		ANSWER("C'est par � toi que je voulais parler, de toute fa�on.",1)
		ANSWER("Je voulais parler � quelqu'un d'autre.",1)
		ANSWER("J'ai chang� d'avis. Au revoir.",1)
	NODE(1)
		SAY("Fais attention � toi, d'accord ?")
		SAY("A la prochaine, runner.")
		SAY("Tu pense que j'ai que �a � faire, perdre mon temps � t'�couter ? Ben non, t'as rien compris � la vie !")
		SAY("Peut-�tre que j'aurai quelque chose pour toi la prochaine fois.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erkl�rt, fertiges Objekt muss zum Zielobjekt, verkauft construction device 1505
		SAY("On a besoin de quelques runners pour nous construire des trucs. Surtout, faut rester discret.")
		SAY("On est en retard sur notre planning. Donc, on a besoin de toi pour nous aider � construire des choses.")
		SAY("De bons amis � nous veulent obtenir certaines choses, et malheureusement, on leur a promises. Mais comme on a plus rien pour produire actuellement, on a besoin de toi...")
		
		ANSWER("Et qu'est-ce que vous attendez de moi exactement ?",8)
	NODE(3)
		SAY("Va donner ce que tu as fait � %NPC_NAME(1).")
		SAY("T'en as d�j� marre ?")
		SAY("Pas le temps de parler.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Objekt
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("Retourne me voir quand tu as ce qu'il faut.")
			SAY("Qu'est-ce que tu veux ? C'est trop compliqu� pour toi, ce job ?")
			ENDDIALOG()
		else
			SAY("Ah, enfin ! Ca nous permettra de tenir le temps que les affaires reprennent vraiment. Tiens, voil� tes %REWARD_MONEY() cr�dits.")
			SAY("Bien, on va v�rifier �a et le leur envoyer. Une promesse est une promesse, voil� tes %REWARD_MONEY() cr�dits.")
			SAY("Bon travail. Tu pourras revenir quand tu veux. Tiens, voil� tes %REWARD_MONEY() cr�dits.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		
		SAY("Tr�s bien.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("T'en as de la chance, j'ai un constructeur en r�serve. Je l'ai achet� il y a longtemps. Je te le c�de pour 4000 creds. March� conclu ?")
		
		ANSWER("Ca m'int�resse. J'ai d�j� perdu trop de temps.",7)
		ANSWER("Ca m'int�resse pas. Je vais me d�brouiller par moi-m�me.",5)
	NODE(7)
		TAKEMONEY(4000)
		if(result==0)then
			SAY("T'as pas assez d'argent pour �a.")
			
			ANSWER("Bon, je vais devoir retourner travailler, alors.",5)
		else
			GIVEITEM(1505)
			SAY("Tiens, prends-le. Je pense que tu le regretteras pas.")
			
			ANSWER("Merci.",5)
		end
	NODE(8)
		SAY("Construis-nous un %ITEMNAME(%TARGET_VALUE(0,2)), et am�ne-le � %NPC_NAME(1), � %NPC_WORLD(1).")
		SAY("On a besoin d'un %ITEMNAME(%TARGET_VALUE(0,2)). Quand tu l'as, tu l'emm�nes chez %NPC_NAME(1), � %NPC_WORLD(1).")
		
		
		ANSWER("J'y vais tout de suite.",5)
		ANSWER("Je vais avoir besoin d'un constructeur. Vous en avez un ?",6)
end
