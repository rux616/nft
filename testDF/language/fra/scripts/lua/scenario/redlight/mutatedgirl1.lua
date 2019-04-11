function DIALOG()

--Geschlechterspaltung		
	NODE(0)
		GENDERCHECK()
		if (result==1) then
			SAY("Salut mon beau. Je te plais?")
			
			ANSWER("Hmm... ta collègue là-bas, elle... elle est bizarre. T'es... toi aussi t'es une mutante?",10)
			ANSWER("Faut que j'y aille.",100)
		else
			SAY("Salut ma belle, ça t'intéresse?")
			ANSWER("J'ai besoin d'argent!",103)
			ANSWER("Je suis pas lesbienne!",102)
		end

--Männer
	NODE(10)
		SAY("Disons que chez moi c'est plus discret. Mais je te réserve de belles surprises, moi aussi *tire une belle langue fourchue et se chatouille les seins avec*")
		ANSWER("Génial! Combien?",11)
		ANSWER("Mon dieu... *bondit en arrière* Y a des gens qui aiment ce genre de trucs?",101)
	NODE(11)
		SAY("Le prix passe après, mon mignon. Le plaisir, c'est ça qui compte. Si tu n'as jamais essayé, tu ne peux pas savoir ce que tu rates...")
		ANSWER("Ca me branche trop! Combien?",12)
	NODE(12)
		SAY("200.000 crédits pour une passe. Pour ça, tu as droit à...")
		ANSWER("200.000?! T'es malade!? Qui peut payer une somme pareille?",13)
	NODE(13)
		SAY("Toute personne qui connaît la véritable valeur d'un service première classe, mon chou.")
		ANSWER("Tu m'excuseras, mais je crois que je vais me débrouiller seul.",14)
	NODE(14)
		SAY("Chacun son truc, mon chou. N'oublie pas de penser à moi quand tu le feras, hein? *chatouille le menton du runner avec sa langue*")
		ENDDIALOG()
	

-- Dialog Ausstiege			
	NODE(100)
		SAY("Reviens quand tu auras changé d'avis, mon coeur.")
		ENDDIALOG()	

	NODE(101)
		SAY("Je peux t'apprendre des centaines de trucs! Penses-y!")
		ENDDIALOG()

	NODE(102)
		SAY("Si tu n'aimes pas ça, pas la peine de t'énerver...")
		ENDDIALOG()
		
	NODE(103)
		SAY("Va parler au mec là-bas, il pourra peut-être t'aider.")
		ENDDIALOG()
end