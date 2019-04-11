function DIALOG()

	NODE(0)

		SAY("Salut, vous auriez pas un crédit ou deux à donner à un vieil homme pour qu'il puisse manger?")

		ANSWER("OK, tenez.",2)
		ANSWER("OK, prenez ça.",2)
		ANSWER("Oh, vous avez faim? Voilà cinq crédits, payez-vous un bon repas.",3)
		ANSWER("En voilà cinq.",3)
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
			SAY("Vous avez même pas un crédit?")
		end
		ENDDIALOG();	
	
	NODE(3)

		TAKEMONEY(5)
		if(result == 1)
			SAY("Vous au moins, vous êtes sympathique. Je vais vous donner quelque chose. J'ai trouvé cette trousse de soins dans un hôpital abandonné, je veux bien vous la donner contre trois chitines.")
	
			ANSWER("OK, je prends.",5)
			ANSWER("je n'ai pas de chitine.",4)
			ANSWER("Non merci.",4)
		else
			SAY("Vous avez même pas cinq crédits...")
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

					SAY("OK, voilà la trousse de soins. Vous avez encore de la chitine?")
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