--new
function DIALOG()
	NODE(0)
		SAY("Salut, �a va ?")
		SAY("Oui, runner ? Un probl�me ?")
		SAY("Quoi ? J'ai plein de choses � faire.")
		SAY("Qu'est-ce qu'il y a ?") 
		SAY("Oui, je t'�coute.")
		SAY("Qu'est-ce que tu veux ? Ne tourne pas autour du pot, sois direct.")
		SAY("Je t'ai jamais vu auparavant, toi.")
		SAY("T'es l� parce que tu veux un job, hein ?")
		SAY("Reste calme, sois cool, runner.")
		SAY("Kess'tu veux ?")
		
		ANSWER("Je veux un job.",2)
		ANSWER("Je pense que tu as un job pour moi.",2)
		ANSWER("Besoin de mes services ?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Laisse tomber. Bye.",1)
		ANSWER("C'est pas � toi que je voulais parler.",1)
		ANSWER("Je voulais parler � quelqu'un d'autre.",1)
		ANSWER("J'ai chang� d'avis, bye.",1)
	NODE(1)
		SAY("H�, commence pas � me chercher, d'accord ?")
		SAY("A plus tard, runner.")
		SAY("Tu t'imagines que j'ai rien d'autre � faire que de t'�couter parler ? Eh ben c'est faux.")
		SAY("j'aurai peut-�tre quelque chose pour toi la prochaine fois.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erkl�rt, fertiges Objekt muss zum Zielobjekt, verkauft recycling device 1500
		SAY("Nous avons besoin de plus de mat�riaux pour cr�er nos meilleurs produits. C'est pourquoi nous avons besoin de tes services.")
		SAY("Laisse-moi te dire une chose : le recyclage, c'est l'avenir. C'est bien plus �conomique que d'acheter toute cette merde. C'est pour �a qu'on recherche des runners.")
		SAY("Les mat�riaux recycl�s sont pratiquement aussi bien que le reste. Ce sera ton job : recycler. Compris ?")
		
		ANSWER("Et qu'est-ce que je dois faire exactement ?",8)
	NODE(3)
		SAY("Am�ne ce que tu as recycl� � %NPC_NAME(1).")
		SAY("Des probl�mes ? H�, ce job, c'est pas � la port�e de tout le monde.")
		SAY("Si tu continues � discuter, t'auras pas de r�compense du tout.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt recycletes Objekt
		GETTARGETVALUE(0,2)	
		TAKEITEMCNT(result,5)
		if(result==0)then
			SAY("Mais t'as pas de cervelle, ou quoi ? Oublie pas de m'apporter les mat�riaux la prochaine fois.")
			SAY("Quoi ? T'as rien trouv� � recycler ?")
			ENDDIALOG()
		else
			SAY("Merci ! En plus, la qualit� n'est pas trop pourrie. Tiens, prends ta r�compense, %REWARD_MONEY() cr�dits. Tu as peut-�tre un avenir dans le recyclage.")
			SAY("Bien jou�. C'�tait pas tr�s compliqu� de ramasser les ordures qui tra�naient par terre, hein ? Voil� tes %REWARD_MONEY() cr�dits.")
			SAY("Tu les as bien m�rit�s, tes %REWARD_MONEY() cr�dits. J'esp�re qu'on travaillera ensemble bient�t.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Continue ton travail :) .")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Oui, je pourrais te vendre un recycleur, mais �a te fera 700 cr�dits. Mais je pense qu'il m'en reste plus beaucoup.")
		
		ANSWER("Pas grave. Je veux tout de m�me en acheter un.",7)
		ANSWER("Non merci, je vais continuer le travail.",5)
	NODE(7)
		TAKEMONEY(700)
		if(result==0)then
			SAY("Tu te fiches de moi ? Mais il te sert � quoi, ton fric ?")
			
			ANSWER("Tr�s bien, je vais continuer � travailler, alors.",5)
		else
			GIVEITEM(1500)
			SAY("Tiens, le voil�. J'esp�re que t'en seras content.")
			
			ANSWER("Oui, j'en suis certain.",5)
		end
	NODE(8)
		SAY("Votre mission est de recycler 5 %ITEMNAME(%TARGET_VALUE(0,2)) � partir d'autres mat�riaux, puis de donner le r�sultat de ce recyclage � %NPC_NAME(1), � %NPC_WORLD(1).")
		SAY("%NPC_NAME(1) est d�j� � %NPC_WORLD(1) � attendre tes 5 %ITEMNAME(%TARGET_VALUE(0,2)). Tu ferais mieux de terminer �a le plus vite possible.")

		ANSWER("Je commence tout de suite.",5)
		ANSWER("Il me faut des outils pour �a, ou bien je suis cens� fouiller les ordures avec mes dents ?",6)
end
