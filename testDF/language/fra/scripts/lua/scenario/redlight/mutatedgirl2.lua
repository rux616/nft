function DIALOG()

--Geschlechterspaltung		
	NODE(0)
		GENDERCHECK()
		if (result==1) then
			SAY("H�, mon mignon, tu aimes les trucs exotiques?")
			
			ANSWER("Euh... t'as l'air... bizarre...",10)
			ANSWER("Faut qu'j'y aille!",100)
		else
			SAY("Salut ma belle. Ca te dit, rien que nous deux?")
			ANSWER("J'aime bien les femmes, mais il y a des limites!",102)
		end

--M�nner
	NODE(10)
		SAY("Et pourtant, si tu savais ce que je peux t'offrir! Tu connais une fille qui a une langue de 50 centim�tres?")
		ANSWER("T'es s�rieuse? Ouah... Combien?",12)
		ANSWER("Le truc de fou... Y a vraiment des mecs qui paient pour �a?",101)

	NODE(12)
		SAY("250.000 pour une passe. Et pour ce prix, je peux m�me demander � deux copines de venir nous tenir compagnie.")
		ANSWER("250.000?! T'es malade?! Tu trouves des clients � ce prix?",13)
	NODE(13)
		SAY("Il y en a qui aiment bien quand �a sort de l'ordinaire...")
		ANSWER("D�sol�, mais c'est pas pour moi. Hors de question!",100)
	

-- Dialog Ausstiege			
	NODE(100)
		SAY("Reviens quand tu auras chang� d'avis, mon mignon.")
		ENDDIALOG()	

	NODE(101)
		SAY("Bien s�r, mon chou, plein de monde! R�fl�chis, et repasse me voir. Je t'attends.")
		ENDDIALOG()

	NODE(102)
		SAY("D'accord, d'accord! Pas la peine de s'�nerver, si tu aimes pas les filles...")
		ENDDIALOG()
		
	NODE(103)
		SAY("Parle � mon mac, il pourra te trouver un plan sympa.")
		ENDDIALOG()
end