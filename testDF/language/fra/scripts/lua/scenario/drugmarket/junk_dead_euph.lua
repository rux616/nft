function DIALOG()

	NODE(0)
		SAY("Paix! Il est libre! Il est dans un monde meilleur!")
		ANSWER("*regarde alentour* En effet ça ne peut qu'aller mieux.",1)
				
	NODE(1)
		SAY("Mais c'est vrai! Il est libre! Libre de ce monde de merde!")
		ANSWER("On diraît que tu as l'air content qu'il soit mort...",101)

				
	NODE(101)
		SAY("C'est vrai! Il est libre! Et bientôt, je vais le rejoindre!")
		ENDDIALOG()
		
end