--new
function DIALOG()
	NODE(0)
		SAY("Salut, quoi de neuf ?")
		SAY("Oui, runner ? T'as l'air d'avoir un probl�me.")
		SAY("Quoi ? J'ai plein de choses � faire, moi.")
		SAY("Qu'est-ce qu'il y a ?") 
		SAY("Oui, j'�coute.")
		SAY("Qu'est-ce que tu veux ? D�p�che-toi, j'ai pas toute la journ�e.")
		SAY("Ta t�te me dit rien, � moi.")
		SAY("T'es l� parce que tu veux un job, pas vrai ?")
		SAY("Du calme, runner, respire.")
		SAY("Tu veux quoi ?")
		
		ANSWER("Je sais que tu as un job qui m'int�resse.",2)
		ANSWER("Je sais que tu as un job pour moi.",2)
		ANSWER("Besoin de quelqu'un pour quelque chose ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("J'ai rien dit. Bye.",1)
		ANSWER("C'est pas � toi que je voulais parler, de toute fa�on.",1)
		ANSWER("Je voulais parler � quelqu'un d'autre.",1)
		ANSWER("J'ai chang� d'avis. Bye.",1)
	NODE(1)
		SAY("H�, fais attention � toi, hein ?")
		SAY("A plus tard, runner.")
		SAY("Tu t'imagines que j'ai rien de mieux � faire que rester l� � t'�couter parler ? Eh ben tu te trompes !")
		SAY("J'aurai peut-�tre quelque chose pour toi la prochaine fois.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erkl�rt, Blaupause muss Zielperson gebracht werden, verkauft research tool
		SAY("On a des tonnes de travail � faire. Il nous faut des runners pour nous faire des plans.")
		SAY("On a beaucoup de travail, beaucoup trop. Pour dire les choses simplement, on a besoin de toi pour nous faire des plans.")
		SAY("On a pas les moyens de faire assez de plans, on a besoin de ton aide.")
		
		ANSWER("Quel genre de plans ?",8)
		
	NODE(3)
		SAY("Va donner les plans � %NPC_NAME(1).")
		SAY("Des probl�mes ? Abandonne, si tu veux. Je verserai pas de larmes si tu t'en vas, c'est promis.")
		SAY("Runner, tu as un gros probl�me d'organisation, je t'assure. Travaille plus, tu perdras moins ton temps.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		GETTARGETVALUE(0,2)
		TAKESPECIALITEMCNT(1507,1,result,3)
		if(result==0)then
			SAY("Pas facile de faire ces plans, hein ? Allez, continue.")
			SAY("Reviens avec plus de plans, parce que l� tu me d�ranges.")
			ENDDIALOG()
		else
			SAY("Bien, moi aussi je vais tenir ma promesse. Voil� ta paye, %REWARD_MONEY() cr�dits, et trois InfoCubes.")
			SAY("C'est de la bonne qualit�, j'aurais pas cru �a de toi. Tiens, prends ta paye, %REWARD_MONEY() cr�dits, et aussi ces trois InfoCubes parce que t'as bien travaill�.")
			SAY("Pas mal, et juste � temps. Tiens, voil� %REWARD_MONEY() cr�dits et trois InfoCubes en r�compense. C'�tait bien �a ? Allez, � la prochaine.")
			GIVEITEM(1501) -- Datacube
			GIVEITEM(1501)
			GIVEITEM(1501)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Tr�s bien.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Oui, j'ai un chercheur en r�serve. J'accepterai de m'en s�parer contre 2000 creds.")
		
		ANSWER("Peu importe, j'ach�te.",7)
		ANSWER("Je vais continuer mon travail.",5)
	NODE(7)
		TAKEMONEY(2000)
		if(result==0)then
			SAY("Tu te fous de moi ? T'as pas assez !")
			
			ANSWER("Bon, je retourne travailler alors.",5)
		else
			GIVEITEM(1503)
			SAY("Le casse pas, hein !")
			
			ANSWER("Oui, et merci.",5)
		end
	NODE(8)
		SAY("Il nous faut absolument 3 plans de %ITEMNAME(%TARGET_VALUE(0,2)). Occupe-toi de �a en vitesse, et va les donner � %NPC_NAME(1), � %NPC_WORLD(1).")
		SAY("Il nous faut 3 plans de %ITEMNAME(%TARGET_VALUE(0,2)) dans les plus brefs d�lais. Apporte-les � %NPC_NAME(1), � %NPC_WORLD(1).")
		
	
		ANSWER("Bien. Je commence tout de suite.",5)
		ANSWER("Hmm, j'ai besoin d'outils pour faire �a, vous avez quelque chose en stock ?",6)
end
