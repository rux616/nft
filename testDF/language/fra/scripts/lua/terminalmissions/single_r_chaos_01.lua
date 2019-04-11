--new
function DIALOG()
	NODE(0)
		SAY("Salut, quoi de neuf ?")
		SAY("Oui, runner ? T'as l'air d'avoir un problème.")
		SAY("Quoi ? J'ai plein de choses à faire, moi.")
		SAY("Qu'est-ce qu'il y a ?") 
		SAY("Oui, j'écoute.")
		SAY("Qu'est-ce que tu veux ? Dépêche-toi, j'ai pas toute la journée.")
		SAY("Ta tête me dit rien, à moi.")
		SAY("T'es là parce que tu veux un job, pas vrai ?")
		SAY("Du calme, runner, respire.")
		SAY("Tu veux quoi ?")
		
		ANSWER("Je sais que tu as un job qui m'intéresse.",2)
		ANSWER("Je sais que tu as un job pour moi.",2)
		ANSWER("Besoin de quelqu'un pour quelque chose ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("J'ai rien dit. Bye.",1)
		ANSWER("C'est pas à toi que je voulais parler, de toute façon.",1)
		ANSWER("Je voulais parler à quelqu'un d'autre.",1)
		ANSWER("J'ai changé d'avis. Bye.",1)
	NODE(1)
		SAY("Hé, fais attention à toi, hein ?")
		SAY("A plus tard, runner.")
		SAY("Tu t'imagines que j'ai rien de mieux à faire que rester là à t'écouter parler ? Eh ben tu te trompes !")
		SAY("J'aurai peut-être quelque chose pour toi la prochaine fois.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erklärt, Blaupause muss Zielperson gebracht werden, verkauft research tool
		SAY("On a des tonnes de travail à faire. Il nous faut des runners pour nous faire des plans.")
		SAY("On a beaucoup de travail, beaucoup trop. Pour dire les choses simplement, on a besoin de toi pour nous faire des plans.")
		SAY("On a pas les moyens de faire assez de plans, on a besoin de ton aide.")
		
		ANSWER("Quel genre de plans ?",8)
		
	NODE(3)
		SAY("Va donner les plans à %NPC_NAME(1).")
		SAY("Des problèmes ? Abandonne, si tu veux. Je verserai pas de larmes si tu t'en vas, c'est promis.")
		SAY("Runner, tu as un gros problème d'organisation, je t'assure. Travaille plus, tu perdras moins ton temps.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		GETTARGETVALUE(0,2)
		TAKESPECIALITEMCNT(1507,1,result,3)
		if(result==0)then
			SAY("Pas facile de faire ces plans, hein ? Allez, continue.")
			SAY("Reviens avec plus de plans, parce que là tu me déranges.")
			ENDDIALOG()
		else
			SAY("Bien, moi aussi je vais tenir ma promesse. Voilà ta paye, %REWARD_MONEY() crédits, et trois InfoCubes.")
			SAY("C'est de la bonne qualité, j'aurais pas cru ça de toi. Tiens, prends ta paye, %REWARD_MONEY() crédits, et aussi ces trois InfoCubes parce que t'as bien travaillé.")
			SAY("Pas mal, et juste à temps. Tiens, voilà %REWARD_MONEY() crédits et trois InfoCubes en récompense. C'était bien ça ? Allez, à la prochaine.")
			GIVEITEM(1501) -- Datacube
			GIVEITEM(1501)
			GIVEITEM(1501)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Très bien.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Oui, j'ai un chercheur en réserve. J'accepterai de m'en séparer contre 2000 creds.")
		
		ANSWER("Peu importe, j'achète.",7)
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
		SAY("Il nous faut absolument 3 plans de %ITEMNAME(%TARGET_VALUE(0,2)). Occupe-toi de ça en vitesse, et va les donner à %NPC_NAME(1), à %NPC_WORLD(1).")
		SAY("Il nous faut 3 plans de %ITEMNAME(%TARGET_VALUE(0,2)) dans les plus brefs délais. Apporte-les à %NPC_NAME(1), à %NPC_WORLD(1).")
		
	
		ANSWER("Bien. Je commence tout de suite.",5)
		ANSWER("Hmm, j'ai besoin d'outils pour faire ça, vous avez quelque chose en stock ?",6)
end
