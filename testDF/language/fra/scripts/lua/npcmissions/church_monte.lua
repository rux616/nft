--new
function DIALOG()
		NODE(0)
			SAY("Vous savez que vous vous appr�tez � poser le pied sur une terre sacr�e?")
			
			ANSWER("Non. Qu'est-ce que vous savez l�-dessus?",2)
			ANSWER("Occupez-vous de vus affaires, l'ami.",5)
		NODE(1)
			SAY("Cette terre a �t� b�nie par le sang d'une femme. Parce qu'elle est morte en tentant de sauver des innocents.")
			
			ANSWER("Je vois. Mais vous, qu'est-ce que vous faites dans cet endroit perdu?",2)
		NODE(2)
			SAY("Je fais honneur � son sacrifice en vouant ma vie � cet endroit et en accueillant les p�lerins occasionnels.")
			
			ANSWER("Les p�lerins?",3)
		NODE(3)
			SAY("Oui, cette terre est lieu de p�lerinage. Les gens viennent ici se laver des p�ch�s qu'ils ont commis au fil du temps.")
			
			ANSWER("Int�ressant. Et o� est-ce qu'on commence ce p�lerinage?",4)
			ANSWER("Bon, �a suffit comme �a. Au revoir.",5)
		NODE(4)
			SAY("Vous feriez bien de poser toutes ces questions � P�re Gregory. Vous le trouverez dans le village Tawkeen, c'est dans le secteur C 06.")
			ENDDIALOG()
		NODE(5)	
			SAY("Soyez b�ni.")
			ENDDIALOG()
end