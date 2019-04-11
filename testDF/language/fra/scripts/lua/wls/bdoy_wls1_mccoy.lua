-- Scenario "The Juggernaut Facility"
-- **********************************

-- non mission script Frank McCoy - The guy that decrypts the diary if mission on

function DIALOG()

	NODE(0)
		SAY("Je n'achète rien. Dégagez!")
		ANSWER("Je n'ai rien à vendre, par contre j'ai un service à vous demander.", 1)
		ANSWER("Attention à ce que tu dis, l'ami!", 5)
		
	NODE(1)
		SAY("Ah ah! Qui vous a dit que j'étais quelqu'un de serviable?")
		ANSWER("Un ami m'a parlé de vous.", 2)
	
	NODE(2)
		SAY("En effet, je suis dans le domaine de l'électronique et du cryptage de données. Mais là, je suis occupé, alors si vous pouviez repasser plus tard, ça m'arrangerait.")
		ENDDIALOG()
	
	NODE(5)
		SAY("Ok, désolé. Je suis très occupé en ce moment, veuillez me laisser travailler. Merci.")
		ANSWER("Voilà qui est mieux.", 6)
			
	NODE(6)	
		SAY("A une prochaine fois.")
		ENDDIALOG()
		
	
end

