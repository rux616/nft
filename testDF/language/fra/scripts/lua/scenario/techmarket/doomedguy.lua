function DIALOG()

	NODE(0)
		SAY("Oh l� l�, je me sens pas bien... .")
		ANSWER("Un probl�me?",1)
				
	NODE(1)
		SAY("Je me suis fait implanter un truc. Ca s'est pas tr�s bien pass�. Oh la vache, j'ai mal!")
		ANSWER("C'�tait quel implant?",2)
		ANSWER("C'est pas mon affaire, je m'en vais.",3)
		
	NODE(2)
		SAY("Un implant neural. Un truc qui devait m'aider pour hacker, mais �a a pas bien march�. Salaud de toubib!")
		ANSWER("Du genre � ne pas nettoyer ses outils, hein?",4)
			
	NODE(3)
		SAY("Vous avez pas honte de me laisser dans cette merde...")
		ENDDIALOG()

	NODE(4)
		SAY("Ouais... En tout cas, j'ai trop mal! Si je retrouve ce type... Arrgh ma t�te!")
		ANSWER("J'ai vraiment de la peine pour vous...",5)
		
	NODE(5)
		SAY("Vous savez quoi? Je crois que je vais arracher ce truc tout de suite!")
		ANSWER("Sans gel d'implantation? Ne faites pas �a, �a va vous tuer!! Vous feriez mieux d'aller voir un sp�cialiste.",6)
		ANSWER("Bonne id�e! Allez-y, le spectacle va �tre int�ressant.",7)
	NODE(6)
		SAY("Euh... Ouais, vous avez peut-�tre raison.")
		ENDDIALOG()
	NODE(7)
		SAY("Allez...... Rahhhhhh! *Schplorp!* Et voil�, arrach�!")
		ANSWER("Cool. Mais euh... vous avez comme qui dirait une fuite, �a coule de partout...",8)
	NODE(8)
		SAY("Ahhh! Mon cerveau!! Je vais mourir... Oh la vache, tout ce sang...")
		ANSWER("Euh... Je vais devoir y aller...",9)
	NODE(9)
		SAY("Aaargh....")
		DIE()
		ENDDIALOG()

end