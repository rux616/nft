-- Scenario "The Juggernaut Facility"
-- **********************************

-- non mission script Frank McCoy - The guy that decrypts the diary if mission on

function DIALOG()

	NODE(0)
		SAY("Je n'ach�te rien. D�gagez!")
		ANSWER("Je n'ai rien � vendre, par contre j'ai un service � vous demander.", 1)
		ANSWER("Attention � ce que tu dis, l'ami!", 5)
		
	NODE(1)
		SAY("Ah ah! Qui vous a dit que j'�tais quelqu'un de serviable?")
		ANSWER("Un ami m'a parl� de vous.", 2)
	
	NODE(2)
		SAY("En effet, je suis dans le domaine de l'�lectronique et du cryptage de donn�es. Mais l�, je suis occup�, alors si vous pouviez repasser plus tard, �a m'arrangerait.")
		ENDDIALOG()
	
	NODE(5)
		SAY("Ok, d�sol�. Je suis tr�s occup� en ce moment, veuillez me laisser travailler. Merci.")
		ANSWER("Voil� qui est mieux.", 6)
			
	NODE(6)	
		SAY("A une prochaine fois.")
		ENDDIALOG()
		
	
end

