function DIALOG()

--Geschlechterspaltung		
	NODE(0)
		GENDERCHECK()
		if (result==1) then
			SAY("Salut mon beau. Je te plais?")
			
			ANSWER("Hmm... ta coll�gue l�-bas, elle... elle est bizarre. T'es... toi aussi t'es une mutante?",10)
			ANSWER("Faut que j'y aille.",100)
		else
			SAY("Salut ma belle, �a t'int�resse?")
			ANSWER("J'ai besoin d'argent!",103)
			ANSWER("Je suis pas lesbienne!",102)
		end

--M�nner
	NODE(10)
		SAY("Disons que chez moi c'est plus discret. Mais je te r�serve de belles surprises, moi aussi *tire une belle langue fourchue et se chatouille les seins avec*")
		ANSWER("G�nial! Combien?",11)
		ANSWER("Mon dieu... *bondit en arri�re* Y a des gens qui aiment ce genre de trucs?",101)
	NODE(11)
		SAY("Le prix passe apr�s, mon mignon. Le plaisir, c'est �a qui compte. Si tu n'as jamais essay�, tu ne peux pas savoir ce que tu rates...")
		ANSWER("Ca me branche trop! Combien?",12)
	NODE(12)
		SAY("200.000 cr�dits pour une passe. Pour �a, tu as droit �...")
		ANSWER("200.000?! T'es malade!? Qui peut payer une somme pareille?",13)
	NODE(13)
		SAY("Toute personne qui conna�t la v�ritable valeur d'un service premi�re classe, mon chou.")
		ANSWER("Tu m'excuseras, mais je crois que je vais me d�brouiller seul.",14)
	NODE(14)
		SAY("Chacun son truc, mon chou. N'oublie pas de penser � moi quand tu le feras, hein? *chatouille le menton du runner avec sa langue*")
		ENDDIALOG()
	

-- Dialog Ausstiege			
	NODE(100)
		SAY("Reviens quand tu auras chang� d'avis, mon coeur.")
		ENDDIALOG()	

	NODE(101)
		SAY("Je peux t'apprendre des centaines de trucs! Penses-y!")
		ENDDIALOG()

	NODE(102)
		SAY("Si tu n'aimes pas �a, pas la peine de t'�nerver...")
		ENDDIALOG()
		
	NODE(103)
		SAY("Va parler au mec l�-bas, il pourra peut-�tre t'aider.")
		ENDDIALOG()
end