function DIALOG()

	NODE(0)
		SAY("Qu'est-ce que vous faites ici? C'est une zone interdite!")
		ANSWER("Qu'est-ce que c'est que cette base?",1)
		ANSWER("Je veux seulement savoir ce que vous faites ici!",1)
		
	NODE(1)
		SAY("Sécurité! On a un problème!")		
		ENDDIALOG()
end
