function DIALOG()

	NODE(0)

		SAY("Salut, vous auriez pas un cr�dit ou deux � donner � un vieil homme pour qu'il puisse manger?")

		ANSWER("OK, tenez.",2)
		ANSWER("OK, prenez �a.",2)
		ANSWER("Oh, vous avez faim? Voil� cinq cr�dits, payez-vous un bon repas.",3)
		ANSWER("En voil� cinq.",3)
		ANSWER("Hors de mon chemin, j'ai rien pour vous.",1)
		ANSWER("Laissez-moi tranquille.",1)
		ANSWER("NON!",1)		

	NODE(1)

		SAY("&$%!%$")	
		SAY("%%!&!$")	
		ENDDIALOG();
	

	NODE(2)

		TAKEMONEY(1)
		if(result == 1)
			SAY("Merci.")
		else
			SAY("Vous avez m�me pas un cr�dit?")
		end
		ENDDIALOG();	
	
	NODE(3)

		TAKEMONEY(5)
		if(result == 1)
			SAY("Vous au moins, vous �tes sympathique. Je vais vous donner quelque chose. J'ai trouv� cette trousse de soins dans un h�pital abandonn�, je veux bien vous la donner contre trois chitines.")
	
			ANSWER("OK, je prends.",5)
			ANSWER("je n'ai pas de chitine.",4)
			ANSWER("Non merci.",4)
		else
			SAY("Vous avez m�me pas cinq cr�dits...")
			ENDDIALOG()
		end

	NODE(4)

		SAY("Hmmm.")	
		SAY("OK.")	
		ENDDIALOG();

	NODE(5)

		TAKEITEM(1000)
		if(result == 1)

			TAKEITEM(1000)
			if(result == 1)

				TAKEITEM(1000)
				if(result == 1)

					SAY("OK, voil� la trousse de soins. Vous avez encore de la chitine?")
					GIVEITEM(35)

					ANSWER("OK, je prends.",5)
					ANSWER("je n'ai pas de chitine.",4)
					ANSWER("Non merci.",4)

				else
					SAY("Vous avez pas assez de chitine.")
					ENDIALOG()
				end
	
			else
				SAY("Vous avez pas assez de chitine.")
				ENDIALOG()
			end
		else
			SAY("Vous avez pas assez de chitine.")
			ENDIALOG()
		end
end