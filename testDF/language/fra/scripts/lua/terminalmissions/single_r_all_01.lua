--************************
--name   : Research_Template
--ver    : 0.1
--author : Lupus
--date   : 2004/09/30
--lang   : fra
--desc   : terminal research mission template
--npc    : 
--************************
--changelog:
--2004/09/30(0.1): Created new Template for research missions based on new mission only items.
--************************

function DIALOG()
	NODE(0)
		SAY("Bonjour, comment puis-je vous aider?")
		SAY("Oui runner? Un problème?")
		SAY("Quoi? Je suis très occupé.")
		SAY("Vous avez un problème?") 
		SAY("Je vous écoute.")
		SAY("Je vous écoute, faites vite.")
		SAY("On se connaît.")
		SAY("Vous venez pour du travail?")
		SAY("Bonjour, runner.")
		SAY("Un problème? J'écoute.")
		
		ANSWER("Oui; je viens pour un job...",2)
		ANSWER("Vous avez du travail pour moi je crois.",2)
		ANSWER("Vous avez du travail pour moi?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Rien du tout, au revoir.",1)
		ANSWER("Je me suis trompé de personne.",1)
		ANSWER("Il y a erreur sur la personne.",1)
		ANSWER("J'ai changé d'avis.",1)
	NODE(1)
		SAY("Bonne continuation.")
		SAY("A la prochaine.")
		SAY("Au revoir, à la prochaine fois.")
		SAY("Au revoir, on se reverra bientôt.")
		ENDDIALOG()
	NODE(2)
		SAY("Nous avons beaucoup de travail à faire. Et nous recherchons des runners qui pourraient nous faire quelques plans.")
		SAY("Nous avons énormément de travail, nous sommes à court de plans, et nous en avons un besoin pressant.")
		SAY("Nous avons besoin de certains plans, mais nous sommes submergés de travail et nous ne pouvons pas nous en occuper.")
		
		ANSWER("Quel genre de plans?",6)
		
	NODE(3)
		SAY("Donnez ces plans à %NPC_NAME(1).")
		SAY("J'espère que tout se passe comme vous voulez...?")
		SAY("Continuez de travaillez, cesser de me déranger.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		if(node==state)then
			GETTARGETVALUE(0,2)
			TVal = result
			TAKESPECIALITEMCNT(1507,1,TVal,3) -- Take 3 Blueprints of the item
				if(result==0)then
					SAY("Pas trop difficile comme travail? Continuez.")
					SAY("Vous devez avoir assez de plans avant de venir me voir.")
					ENDDIALOG()
				else
					TAKEITEM(Tval) -- Take Original Item
						if(result==0)then
							GIVESPECIALITEM(1507,1,TVal) -- Give Back blueprints of item due to no original given
							GIVESPECIALITEM(1507,1,TVal)
							GIVESPECIALITEM(1507,1,TVal)
							SAY("Il me faut aussi l'original")
							ENDDIALOG()
						else
							SAY("Bien, nous allons pouvoir honorer notre commande. Voici %REWARD_MONEY() crédits, ainsi que 3 datacubes.")
							SAY("Bon travail, ça fait plaisir à voir. Tenez, %REWARD_MONEY() crédits pour cet excellent service.")
							SAY("Pas mal, et juste à temps! %REWARD_MONEY() crédits de récompense, c'est bien ça? Tenez. C'était un plaisir de travailler avec vous.")
							GIVEITEM(1501) -- Datacube
							GIVEITEM(1501)
							GIVEITEM(1501)
							ACTIVATEDIALOGTRIGGER(1)
							ENDDIALOG()
						end
				end
		end
	NODE(5)
		if(node==state)then
			GETTARGETVALUE(0,2)
			GIVEITEM(result)
			SAY("Voilà un original, vous pourrez en créer des copies.\nBonne chance.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		end
	NODE(6)
		SAY("Nous avons un besoin pressant de 3 plans de %ITEMNAME(%TARGET_VALUE(0,2)). Si vous pouviez nous faire ça rapidement, ça serait très apprécié. Donnez-les à %NPC_NAME(1), qui vous attend à  %NPC_WORLD(1).")
		SAY("Nous avons besoin de 3 plans de %ITEMNAME(%TARGET_VALUE(0,2)) aussi vite que possible. Allez les porter à %NPC_NAME(1), secteur %NPC_WORLD(1).")
		
		ANSWER("Bien, je commence tout de suite.",5)
end