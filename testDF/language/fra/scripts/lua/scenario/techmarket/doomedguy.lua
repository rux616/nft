function DIALOG()

	NODE(0)
		SAY("Oh là là, je me sens pas bien... .")
		ANSWER("Un problème?",1)
				
	NODE(1)
		SAY("Je me suis fait implanter un truc. Ca s'est pas très bien passé. Oh la vache, j'ai mal!")
		ANSWER("C'était quel implant?",2)
		ANSWER("C'est pas mon affaire, je m'en vais.",3)
		
	NODE(2)
		SAY("Un implant neural. Un truc qui devait m'aider pour hacker, mais ça a pas bien marché. Salaud de toubib!")
		ANSWER("Du genre à ne pas nettoyer ses outils, hein?",4)
			
	NODE(3)
		SAY("Vous avez pas honte de me laisser dans cette merde...")
		ENDDIALOG()

	NODE(4)
		SAY("Ouais... En tout cas, j'ai trop mal! Si je retrouve ce type... Arrgh ma tête!")
		ANSWER("J'ai vraiment de la peine pour vous...",5)
		
	NODE(5)
		SAY("Vous savez quoi? Je crois que je vais arracher ce truc tout de suite!")
		ANSWER("Sans gel d'implantation? Ne faites pas ça, ça va vous tuer!! Vous feriez mieux d'aller voir un spécialiste.",6)
		ANSWER("Bonne idée! Allez-y, le spectacle va être intéressant.",7)
	NODE(6)
		SAY("Euh... Ouais, vous avez peut-être raison.")
		ENDDIALOG()
	NODE(7)
		SAY("Allez...... Rahhhhhh! *Schplorp!* Et voilà, arraché!")
		ANSWER("Cool. Mais euh... vous avez comme qui dirait une fuite, ça coule de partout...",8)
	NODE(8)
		SAY("Ahhh! Mon cerveau!! Je vais mourir... Oh la vache, tout ce sang...")
		ANSWER("Euh... Je vais devoir y aller...",9)
	NODE(9)
		SAY("Aaargh....")
		DIE()
		ENDDIALOG()

end