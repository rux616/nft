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
		SAY("Oui runner? Un probl�me?")
		SAY("Quoi? Je suis tr�s occup�.")
		SAY("Vous avez un probl�me?") 
		SAY("Je vous �coute.")
		SAY("Je vous �coute, faites vite.")
		SAY("On se conna�t.")
		SAY("Vous venez pour du travail?")
		SAY("Bonjour, runner.")
		SAY("Un probl�me? J'�coute.")
		
		ANSWER("Oui; je viens pour un job...",2)
		ANSWER("Vous avez du travail pour moi je crois.",2)
		ANSWER("Vous avez du travail pour moi?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Rien du tout, au revoir.",1)
		ANSWER("Je me suis tromp� de personne.",1)
		ANSWER("Il y a erreur sur la personne.",1)
		ANSWER("J'ai chang� d'avis.",1)
	NODE(1)
		SAY("Bonne continuation.")
		SAY("A la prochaine.")
		SAY("Au revoir, � la prochaine fois.")
		SAY("Au revoir, on se reverra bient�t.")
		ENDDIALOG()
	NODE(2)
		SAY("Nous avons beaucoup de travail � faire. Et nous recherchons des runners qui pourraient nous faire quelques plans.")
		SAY("Nous avons �norm�ment de travail, nous sommes � court de plans, et nous en avons un besoin pressant.")
		SAY("Nous avons besoin de certains plans, mais nous sommes submerg�s de travail et nous ne pouvons pas nous en occuper.")
		
		ANSWER("Quel genre de plans?",6)
		
	NODE(3)
		SAY("Donnez ces plans � %NPC_NAME(1).")
		SAY("J'esp�re que tout se passe comme vous voulez...?")
		SAY("Continuez de travaillez, cesser de me d�ranger.")
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
							SAY("Bien, nous allons pouvoir honorer notre commande. Voici %REWARD_MONEY() cr�dits, ainsi que 3 datacubes.")
							SAY("Bon travail, �a fait plaisir � voir. Tenez, %REWARD_MONEY() cr�dits pour cet excellent service.")
							SAY("Pas mal, et juste � temps! %REWARD_MONEY() cr�dits de r�compense, c'est bien �a? Tenez. C'�tait un plaisir de travailler avec vous.")
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
			SAY("Voil� un original, vous pourrez en cr�er des copies.\nBonne chance.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		end
	NODE(6)
		SAY("Nous avons un besoin pressant de 3 plans de %ITEMNAME(%TARGET_VALUE(0,2)). Si vous pouviez nous faire �a rapidement, �a serait tr�s appr�ci�. Donnez-les � %NPC_NAME(1), qui vous attend �  %NPC_WORLD(1).")
		SAY("Nous avons besoin de 3 plans de %ITEMNAME(%TARGET_VALUE(0,2)) aussi vite que possible. Allez les porter � %NPC_NAME(1), secteur %NPC_WORLD(1).")
		
		ANSWER("Bien, je commence tout de suite.",5)
end