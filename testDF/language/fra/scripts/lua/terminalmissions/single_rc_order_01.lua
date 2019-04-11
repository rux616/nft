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
		--Der Auftrag wird erkl�rt, fertiges Objekt muss zum Zielobjekt, verkauft recycling device 1500
		SAY("Nous avons besoin de certains mat�riaux pour concr�tiser les derniers d�veloppements en date. Et nous avons besoin de vous.")
		SAY("Il se peut que le recyclage soit l'avenir. M�me actuellement, il est parfois plus avantageux de recycler que d'acqu�rir des substances pures. C'est pourquoi nous avons besoin de gens tels que vous.")
		SAY("Les mat�riaux recycl�s sont d'une qualit� presque �quivalente � ceux qui sont produits purs. Et ce sera votre travail.")
		
		ANSWER("Qu'est-ce que je dois faire exactement ?",8)
	NODE(3)
		SAY("D�sol�, mais vous devrez donner votre production � %NPC_NAME(1).")
		SAY("J'esp�re que vous n'avez rencontr� aucune difficult� jusqu'ici ?")
		SAY("Continuez � travailler, ne gaspillez pas mon temps pr�cieux.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt recycletes Objekt
		GETTARGETVALUE(0,2)	
		TAKEITEMCNT(result,5)
		if(result==0)then
			SAY("%NPC_NAME(0) ne vous a pas dit que j'avais vraiment besoin de ces mat�riaux ? Alors d�p�chez-vous de me les apporter.")
			SAY("Quoi ? N'allez pas me dire qu'il n'existe pas assez de choses � recycler dans les rues...")
			ENDDIALOG()
		else
			SAY("Merci ! En plus, la qualit� n'est pas trop mauvaise. Voici votre r�compense, %REWARD_MONEY() cr�dits. Vous avez peut-�tre un avenir dans le recyclage, qui sait.")
			SAY("Bon travail. Ce n'�tait pas trop difficile, avec toutes ces ordures qui tra�nent dans la rue, n'est-ce pas ? Voici votre r�compense, %REWARD_MONEY() cr�dits.")
			SAY("Vous avez bien gagn� ces %REWARD_MONEY() cr�dits. J'attends d�j� la prochaine occasion que nous aurons de travailler ensemble.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Bonne chance dans votre travail.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Oui, je pourrais vous vendre un recycler, pour la somme de 700 cr�dits. Mais j'ai bien peut de ne plus en avoir beaucoup en stock.")
		
		ANSWER("Peu importe, je veux tout de m�me en acheter un.",7)
		ANSWER("Non merci, je vais continuer mon travail.",5)
	NODE(7)
		TAKEMONEY(700)
		if(result==0)then
			SAY("je ne peux pas vous vendre un recycleur pour si peu, j'en suis d�sol�.")
			
			ANSWER("Tr�s bien, alors je vais continuer mon travail.",5)
		else
			GIVEITEM(1500)
			SAY("Le voil�. J'esp�re que vous en serez content.")
			
			ANSWER("Oui, j'en suis certain.",5)
		end
	NODE(8)
		SAY("Votre mission est de recycler 5 %ITEMNAME(%TARGET_VALUE(0,2)) � partir d'autres mat�riaux, puis de donner le r�sultat de ce recyclage � %NPC_NAME(1), secteur %NPC_WORLD(1).")
		SAY("%NPC_NAME(1)est d�j� dans le secteur %NPC_WORLD(1) � attendre vos 5 %ITEMNAME(%TARGET_VALUE(0,2)). Il serait bon que vous puissiez recycler ceci aussi vite que possible pour %NPC_NAME(1)")

		ANSWER("Je commence tout de suite.",5)
		ANSWER("J'ai besoin d'un recycleur pour ce genre de travail. Vous en auriez un ?",6)
end
