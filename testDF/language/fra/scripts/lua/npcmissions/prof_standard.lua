--new
function Dialog()
	NODE(0)
		TAKEITEMCNT(2301,3)
		if(result==0) then
			SAY("H�, runner! Vous me rappelez quelqu'un... Non, laissez tomber.")
			SAY("Salut! ...")
			
			ANSWER("Enfin quelqu'un de civilis�!",1)
			ANSWER("Belle journ�e pour une promenade, n'est-ce pas?",1)
			ANSWER("J'�tais justement sur le point de partir.",2)
		Else
			SAY("Montre-moi �a! C'est moi qui t'ai donn� toutes ces bagues? Toutes les trois? Impossible, je m'en souviendrais, quand m�me...")
			
			ANSWER("En effet, c'est exact. Et alors?",3)
		end
	NODE(1)
		SAY("Non, ne t'approche pas de moi. Tu vas ruiner mon exp�rience.")
		SAY("Non, non. Va-t-en, tu vas ruiner mes exp�riences. C'est tr�s important pour moi.")
		SAY("Une fois cette exp�rience r�ussie, je serai le plus grand scientifique de l'univers... enfin, si tu t'en vas tout de suite.")
		ENDDIALOG()
	NODE(2)
		SAY("Oui, et bonne chance, quoi que tu fasses.")
		SAY("Au revoir, et au plaisir. Peut-�tre qu'on se reverra un jour...")
		ENDDIALOG()
	NODE(3)
		SAY("Tu m'as beaucoup aid� par le pass�, je vais t'offrir quelque chose de sp�cial. C'est un petit truc que j'ai fait gr�ce � mes exp�riences.")
		
		ANSWER("Evidemment, j'accepte tout ce qu'on peut me donner.",4)
		ANSWER("Un cadeau? Pour moi? Qu'est-ce que c'est?",4)
	NODE(4)
		SAY("Je t'offre le choix entre deux petits trucs. Une fabuleuse armure, et une arme de d�butant. Que choisis-tu?")
		
		ANSWER("L'armure! Oui, c'est �a, donne-moi l'armure!",5)
		ANSWER("L'arme! Je voudrais l'arme!",6)
	NODE(5)
		GIVEITEM(1851)
		SAY("Voil�, mon ami. Mais c'est tout ce que je peux te donner... Au revoir!")
		
		ANSWER("C'est tout ce qu'il me fallait, merci!",1)
	NODE(6) 
		GIVEITEM(1839)
		SAY("Tiens, prends cette arme et sois heureux.")
		
		ANSWER("Merci du fond du coeur.",1)
		
end