--new
function DIALOG()
		NODE(0)
			SAY("Vous savez que vous vous apprêtez à poser le pied sur une terre sacrée?")
			
			ANSWER("Non. Qu'est-ce que vous savez là-dessus?",2)
			ANSWER("Occupez-vous de vus affaires, l'ami.",5)
		NODE(1)
			SAY("Cette terre a été bénie par le sang d'une femme. Parce qu'elle est morte en tentant de sauver des innocents.")
			
			ANSWER("Je vois. Mais vous, qu'est-ce que vous faites dans cet endroit perdu?",2)
		NODE(2)
			SAY("Je fais honneur à son sacrifice en vouant ma vie à cet endroit et en accueillant les pèlerins occasionnels.")
			
			ANSWER("Les pèlerins?",3)
		NODE(3)
			SAY("Oui, cette terre est lieu de pèlerinage. Les gens viennent ici se laver des péchés qu'ils ont commis au fil du temps.")
			
			ANSWER("Intéressant. Et où est-ce qu'on commence ce pèlerinage?",4)
			ANSWER("Bon, ça suffit comme ça. Au revoir.",5)
		NODE(4)
			SAY("Vous feriez bien de poser toutes ces questions à Père Gregory. Vous le trouverez dans le village Tawkeen, c'est dans le secteur C 06.")
			ENDDIALOG()
		NODE(5)	
			SAY("Soyez béni.")
			ENDDIALOG()
end