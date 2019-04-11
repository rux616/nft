function DIALOG()
	NODE(0)
		SAY("Traitement des données... Vérification des tâches ...")
		ANSWER("Liste \"\",15,2",1)
	NODE(1)
		SAY("Tâches prévues :\n- aucune donnée -")
		ENDDIALOG()
end