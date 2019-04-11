function DIALOG()

	NODE(0)

		SAY("Hé, vous! Une mission secrète, ça t'intéresse?")
		
		ANSWER("Oui.", 1)
		ANSWER("Non.",20)
		ANSWER("Laisse-moi tranquille!",20)
		ANSWER("Hors de mon chemin!",20)

	NODE(1)
		ACCEPTMISSION()

		SAY("OK, j'ai une mission Top Secret pour toi. Il faut que tu transmettes le message suivant à %NPC_NAME(0), qui travaille pour %FRACTION_NAME(%NPC_TYPE(0)) :  'Tango Uniform Alpha Delta'. Dis-lui que c'est de la part du Gros. Tu toucheras une récompense quand tu reviendras me voir.")

		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	NODE(2)

		SAY("Laisse-moi tranquille, j'ai beaucoup à faire.")

		ANSWER("J'ai un message pour toi de la part du Gros.",3)
		ANSWER("Je vends de belles vestes en cuir.",21)
		ANSWER("Bouh.",21)
		
	NODE(3)

		SAY("Un message pour moi? Qu'est-ce que c'est?")

		ANSWER("'Tango Uniform Beta Delta'",22)
		ANSWER("'Tango Uniform Delta Beta'",22)
		ANSWER("'Tango Uniform Alpha Delta'",4)
		ANSWER("J'ai oublié.",20)
		
	NODE(4)
	
		SAY("Ahhh, merci. Bonnes nouvelles. Retourne voir %NPC_NAME(4) de %FRACTION_NAME(%NPC_TYPE(4)) pour toucher ta récompense.")

		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
	
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Va lui transmettre ce message, c'est urgent!")

			GIVESPECIALITEM( 1507, 1, 1);
			GIVESPECIALITEM( 1507, 1, 1);

			GETTARGETVALUE(0, 0);
			TAKESPECIALITEMCNT( 1507, 1, 1, 3);

			ENDDIALOG()

		else			

			SAY("Merci pour le travail. Mais je n'ai plus d'argent, donc pas de récompense. Désolé.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("Alors dégagez, parasite!")
		
		ENDDIALOG()

	NODE(21)

		SAY("Allez, fais-moi de la place, j'ai plein de choses à faire.")
		
		ENDDIALOG()
	
	NODE(22)

		SAY("Quoi? Ca veut rien dire. Allez, dehors.")
		
		ENDDIALOG()

end