function DIALOG() --The Drugged out Lunatic

	NODE(0)
		SAY("Oooooohhhhhhhhhhh les belles couleurs!!")
		SAY("Le ciel a un go�t de glande � venin. Tu viens go�ter le ciel avec moi?")
		SAY("H�, regarde! Par terre, on dirait une enseigne de Pepper Park! Tu vois?")
		
		ANSWER("Euh... ouais. Il faut que je m'en aille.",1)
		ANSWER("Economise tes synapses, il te reste plus grand chose...",1)
		ANSWER("Encore un drogu�? Mais laissez-moi tranquille!",1)
		
	NODE(1)
		SAY("Ouais, comme si t'avais jamais remarqu�... Allez, d�gage!")
		SAY("Nan, pars pas, reste avec moi...")
		SAY("Attends, j'ai pas compris. Qu'est-ce que tu... t'as dit quelque chose?")
		
		ENDDIALOG()
	

end