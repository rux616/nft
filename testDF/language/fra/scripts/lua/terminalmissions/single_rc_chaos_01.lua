--new
function DIALOG()
	NODE(0)
		SAY("Salut, ça va ?")
		SAY("Oui, runner ? Un problème ?")
		SAY("Quoi ? J'ai plein de choses à faire.")
		SAY("Qu'est-ce qu'il y a ?") 
		SAY("Oui, je t'écoute.")
		SAY("Qu'est-ce que tu veux ? Ne tourne pas autour du pot, sois direct.")
		SAY("Je t'ai jamais vu auparavant, toi.")
		SAY("T'es là parce que tu veux un job, hein ?")
		SAY("Reste calme, sois cool, runner.")
		SAY("Kess'tu veux ?")
		
		ANSWER("Je veux un job.",2)
		ANSWER("Je pense que tu as un job pour moi.",2)
		ANSWER("Besoin de mes services ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Laisse tomber. Bye.",1)
		ANSWER("C'est pas à toi que je voulais parler.",1)
		ANSWER("Je voulais parler à quelqu'un d'autre.",1)
		ANSWER("J'ai changé d'avis, bye.",1)
	NODE(1)
		SAY("Hé, commence pas à me chercher, d'accord ?")
		SAY("A plus tard, runner.")
		SAY("Tu t'imagines que j'ai rien d'autre à faire que de t'écouter parler ? Eh ben c'est faux.")
		SAY("j'aurai peut-être quelque chose pour toi la prochaine fois.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft recycling device 1500
		SAY("Nous avons besoin de plus de matériaux pour créer nos meilleurs produits. C'est pourquoi nous avons besoin de tes services.")
		SAY("Laisse-moi te dire une chose : le recyclage, c'est l'avenir. C'est bien plus économique que d'acheter toute cette merde. C'est pour ça qu'on recherche des runners.")
		SAY("Les matériaux recyclés sont pratiquement aussi bien que le reste. Ce sera ton job : recycler. Compris ?")
		
		ANSWER("Et qu'est-ce que je dois faire exactement ?",8)
	NODE(3)
		SAY("Amène ce que tu as recyclé à %NPC_NAME(1).")
		SAY("Des problèmes ? Hé, ce job, c'est pas à la portée de tout le monde.")
		SAY("Si tu continues à discuter, t'auras pas de récompense du tout.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt recycletes Objekt
		GETTARGETVALUE(0,2)	
		TAKEITEMCNT(result,5)
		if(result==0)then
			SAY("Mais t'as pas de cervelle, ou quoi ? Oublie pas de m'apporter les matériaux la prochaine fois.")
			SAY("Quoi ? T'as rien trouvé à recycler ?")
			ENDDIALOG()
		else
			SAY("Merci ! En plus, la qualité n'est pas trop pourrie. Tiens, prends ta récompense, %REWARD_MONEY() crédits. Tu as peut-être un avenir dans le recyclage.")
			SAY("Bien joué. C'était pas très compliqué de ramasser les ordures qui traînaient par terre, hein ? Voilà tes %REWARD_MONEY() crédits.")
			SAY("Tu les as bien mérités, tes %REWARD_MONEY() crédits. J'espère qu'on travaillera ensemble bientôt.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Continue ton travail :) .")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Oui, je pourrais te vendre un recycleur, mais ça te fera 700 crédits. Mais je pense qu'il m'en reste plus beaucoup.")
		
		ANSWER("Pas grave. Je veux tout de même en acheter un.",7)
		ANSWER("Non merci, je vais continuer le travail.",5)
	NODE(7)
		TAKEMONEY(700)
		if(result==0)then
			SAY("Tu te fiches de moi ? Mais il te sert à quoi, ton fric ?")
			
			ANSWER("Très bien, je vais continuer à travailler, alors.",5)
		else
			GIVEITEM(1500)
			SAY("Tiens, le voilà. J'espère que t'en seras content.")
			
			ANSWER("Oui, j'en suis certain.",5)
		end
	NODE(8)
		SAY("Votre mission est de recycler 5 %ITEMNAME(%TARGET_VALUE(0,2)) à partir d'autres matériaux, puis de donner le résultat de ce recyclage à %NPC_NAME(1), à %NPC_WORLD(1).")
		SAY("%NPC_NAME(1) est déjà à %NPC_WORLD(1) à attendre tes 5 %ITEMNAME(%TARGET_VALUE(0,2)). Tu ferais mieux de terminer ça le plus vite possible.")

		ANSWER("Je commence tout de suite.",5)
		ANSWER("Il me faut des outils pour ça, ou bien je suis censé fouiller les ordures avec mes dents ?",6)
end
