function DIALOG()

	NODE(0)	
		SAY("Viens mon ch�ri, tu vas oublier tous tes malheurs. Jette un oeil � mon �quipement...")
		SAY("Tu cherches de la compagnie pour la soir�e? Avec moi, tu auras tout ce que tu cherches.")
		SAY("Bonjour mon mignon. J'ai les tout derniers implants aphrodisiaques, juste pour toi.")
		SAY("Si tu veux, je vais te montrer mes techniques sp�ciales de massage oral...")
		SAY("Si tu payes un petit suppl�ment, j'appelle une copine et on se fait quelque chose � trois, qu'est-ce que tu en dis?")
		SAY("Viens mon beau, je vais te faire plein de trucs dont t'as jamais entendu parler, on va s'amuser tu vas voir...")
		SAY("T'as l'air d'avoir froid. Maman va te r�chauffer. Toute la nuit...")
		SAY("Toi, tu les aimes chaudes, mouill�es et cochonnes. Je me trompe?")
 	
		ANSWER("Et combien est-ce que �a va me co�ter?",1)
		ANSWER("Ca commence � me plaire. C'est combien?",1)
		ANSWER("C'est combien?",1)

		ANSWER("Hors de mon chemin, esp�ce de pute!",2)
		ANSWER("Va-t-en, esp�ce de mutante d�g�n�r�e!",2)
		ANSWER("D�gage! C'est pas dans la rue que je cherche �a.",2)
		ANSWER("J'ai l'air de devoir payer pour �a? Moi?",2)
		ANSWER("Ca ne m'int�resse pas. Laisse-moi tranquille.",2)

	NODE(1)
		SAY("On va d'abord s'amuser, on parlera du prix apr�s.")
		SAY("T'emb�te pas pour �a. Avec moi, tu oublieras tous tes probl�mes d'argent.")
		SAY("Ca d�pend de ce que tu veux. Allons chez toi, on discutera de tout �a l�-haut.")
		SAY("Regarde-moi, tu comprendras que je vaux tous les cr�dits du monde. Tu m'emm�nes chez toi, alors?")

		ANSWER("Hors de mon chemin, esp�ce de pute!",2)
		ANSWER("Va-t-en, esp�ce de mutante d�g�n�r�e!",2)
		ANSWER("D�gage! C'est pas dans la rue que je cherche �a.",2)
		ANSWER("J'ai l'air de devoir payer pour �a? Moi?",2)
		ANSWER("Ca ne m'int�resse pas. Laisse-moi tranquille.",2)

	NODE(2)
		SAY("T'aimes les mutantes, c'est �a?")
		SAY("Peut-�tre une autre fois, mon mignon.")
		SAY("Alors va baiser des rats!")
		SAY("De toute fa�on je parie que t'as m�me pas les moyens de me faire jouir!")

		ENDDIALOG()



end