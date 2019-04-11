function DIALOG() --The Drugged out Lunatic

	NODE(0)
		SAY("Oooooohhhhhhhhhhh les belles couleurs!!")
		SAY("Le ciel a un goût de glande à venin. Tu viens goûter le ciel avec moi?")
		SAY("Hé, regarde! Par terre, on dirait une enseigne de Pepper Park! Tu vois?")
		
		ANSWER("Euh... ouais. Il faut que je m'en aille.",1)
		ANSWER("Economise tes synapses, il te reste plus grand chose...",1)
		ANSWER("Encore un drogué? Mais laissez-moi tranquille!",1)
		
	NODE(1)
		SAY("Ouais, comme si t'avais jamais remarqué... Allez, dégage!")
		SAY("Nan, pars pas, reste avec moi...")
		SAY("Attends, j'ai pas compris. Qu'est-ce que tu... t'as dit quelque chose?")
		
		ENDDIALOG()
	

end