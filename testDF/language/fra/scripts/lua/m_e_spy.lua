function DIALOG()

	NODE(0)

		SAY("H� vous! Vous voulez une mission secr�te?")
		
		ANSWER("Oui.", 1)
		ANSWER("Non.",20)
		ANSWER("Laissez-moi tranquille!",20)
		ANSWER("Allez-vous en!",20)

	NODE(1)
		ACCEPTMISSION()

		SAY("Bien, j'ai une mission Top Secret pour vous. Transf�rer le message suivant � %NPC_NAME(0), de la faction %FRACTION_NAME(%NPC_TYPE(0)) :  'Tango Uniform Alpha Delta'. Dites que c'est de la part du Gros. Et revenez me voir ensuite.")

		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	NODE(2)

		SAY("Partez, maintenant. J'ai plein de choses � faire.")

		ANSWER("J'ai un message pour vous de la part du Gros.",3)
		ANSWER("Je vends de belles vestes en cuir.",21)
		ANSWER("Bouh!",21)
		
	NODE(3)

		SAY("Un message pour moi? Qu'est-ce que c'est?")

		ANSWER("'Tango Uniform Beta Delta'",22)
		ANSWER("'Uniform Tango Delta Beta'",22)
		ANSWER("'Tango Uniform Alpha Delta'",4)
		ANSWER("J'ai oubli�.",20)
		
	NODE(4)
	
		SAY("Ahhh, merci. Bonne nouvelle. Retournez voir %NPC_NAME(4), faction %FRACTION_NAME(%NPC_TYPE(4)), pour toucher votre r�compense.")

		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
	
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allez donner ce message imm�diatement!")
			ENDDIALOG()

		else			

			SAY("Merci pour le travail. Mais malheureusement, je n'ai plus d'argent, donc pas de r�compense. D�sol�.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("Alors va crever, abruti!")
		
		ENDDIALOG()

	NODE(21)

		SAY("Arr�tez �a. Vous me d�rangez.")
		
		ENDDIALOG()
	
	NODE(22)

		SAY("Quoi? Ca veut rien dire du tout, �a! Allez, hors de ma vue!")
		
		ENDDIALOG()

end