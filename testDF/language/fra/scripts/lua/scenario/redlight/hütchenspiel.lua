function DIALOG()

	NODE(0)
		SAY("Tu veux tenter ta chance? Ma main contre ton oeil!")
		SAY("Tu veux gagner un truc? Faut juste �tre observateur!")
		SAY("T'as envie de gagner? T'as frapp� � la bonne porte! Ma main contre ton oeil, qui sera le plus rapide?")
		
		ANSWER("Qu'est-ce que c'est, ton jeu?",1)
		ANSWER("Allez, dis-moi ce que je dois faire!",1)
		ANSWER("J'adore jouer, c'est parti!",1)
		
		ANSWER("Je ne joue jamais, c'est contre mes principes!",100)
		ANSWER("Pas question, je n'ai pas d'argent � perdre!",100)
		
	
	NODE(1)
		SAY("Ah, voil� quelqu'un de s�rieux! J'ai su �a tout de suite! Les r�gles : tu me donnes 1000 creds, et je les mets dans le chapeau du centre. Ensuite, je d�place les trois chapeaux, et si tu trouves celui dans lequel sont les 1000 creds, tu gagnes le double. Pr�t?")
		ANSWER("Voil� ma mise!",2)
		ANSWER("Je suis pas stupide, trouve-toi un autre pigeon.",100)

		
	NODE(2)
		TAKEMONEY(1000)
			if( result==1 ) then
				SAY("C'est parti! Le fric est sous le chapeau du centre...")
				SAY("Le fric est sous le chapeau du centre... T'as vu?")
				SAY("C'est parti! Le fric est sosu le chapeau du centre!")
				ANSWER("Ouais!",3)
				ANSWER("Ouais.",3)
				ANSWER("Ouaip.",3)
			else
				SAY("Pas de fric, pas de jeu!")
				ENDDIALOG()
			end

	NODE(3)
	
		RAND(2)
		if( result==1 ) then
				SAY("Regarde le chapeau, ne le quitte pas des yeux! Et voil�... Alors, o� est le fric?")
				SAY("Ne quitte pas le chapeau des yeux! Et.... voil�! O� est le bon chapeau?")
				ANSWER("Celui-l�! Je sais que c'est celui-l�!",4)
				ANSWER("T'as trich�, je l'ai vu! Rends-moi mon argent ou je t'explose!",101)

			else
				SAY("Regarde le chapeau, ne le quitte pas des yeux! Et voil�... Alors, o� est le fric?")
				SAY("Ne quitte pas le chapeau des yeux! Et.... voil�! O� est le bon chapeau?")
				ANSWER("C'�tait rapide... On peut refaire?",10)
				ANSWER("T'as trich�, je l'ai vu! Rends-moi mon argent ou je t'explose!",101)
			end
			

	NODE(4)
		RAND(3)
		if( result==1 ) then
				GIVEMONEY(2000)
				SAY("Bas les pattes! Touche pas � mes chapeaux! Voyons voir �a... Ouah, t'es dou�! Tiens, voil� ton pognon.")
				ANSWER("Argent facile... merci!",5)
			else
				SAY("Ah d�sol�, t'as perdu.")
				ANSWER("Et merde, je pensais pourtant...",6)
			end

	NODE(5)
		SAY("Un autre? Allez!")
		ANSWER("C'est facile ce jeu, j'en refais une!",2)
		ANSWER("Non, c'est pas pour moi.",102)

	NODE(6)
		SAY("On recommence?")
		ANSWER("Et comment! Allez c'est reparti!",2)
		ANSWER("J'ai pas beaucoup de fric... j'arr�te!",102)

	NODE(10)
		SAY("Pas question, les r�gles sont les r�gles! Je retourne lequel?")
		ANSWER("J'sais pas... Celui-l�?",11)
				
	NODE(11)
		RAND(3)
		if( result==1 ) then
				GIVEMONEY(2000)
				SAY("Ouah, t'es en veine! Voil� ton pognon.")
				ANSWER("Super, mon jour de chance! Merci!",12)
			else
				SAY("Pas de bol!")
				ANSWER("Et merde!",13)
			end

	NODE(12)
		SAY("Un autre? Allez!")
		ANSWER("C'est facile ce jeu, j'en refais une!",2)
		ANSWER("Non, c'est pas pour moi.",102)

	NODE(13)
		SAY("On recommence?")
		ANSWER("Et comment! Allez c'est reparti!",2)
		ANSWER("J'ai pas beaucoup de fric... j'arr�te!",102)



-- Dialog Ausstiege 
	NODE(100)
		SAY("Tu m'�nerves, tire-toi!Y")
		SAY("Si tu veux pas jouer, tire-toi!")
		ENDDIALOG()

	NODE(101)
		GIVEMONEY(1000)
		SAY("Je suis pas un tricheur. Prends ton fric et tire-toi!")
		ENDDIALOG()		

	NODE(102)
		SAY("Reviens quand tu veux.")
		ENDDIALOG()	
		
end