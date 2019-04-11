--new
function Dialog()
	NODE(0)
		TAKEITEMCNT(2301,3)
		if(result==0) then
			SAY("Hé, runner! Vous me rappelez quelqu'un... Non, laissez tomber.")
			SAY("Salut! ...")
			
			ANSWER("Enfin quelqu'un de civilisé!",1)
			ANSWER("Belle journée pour une promenade, n'est-ce pas?",1)
			ANSWER("J'étais justement sur le point de partir.",2)
		Else
			SAY("Montre-moi ça! C'est moi qui t'ai donné toutes ces bagues? Toutes les trois? Impossible, je m'en souviendrais, quand même...")
			
			ANSWER("En effet, c'est exact. Et alors?",3)
		end
	NODE(1)
		SAY("Non, ne t'approche pas de moi. Tu vas ruiner mon expérience.")
		SAY("Non, non. Va-t-en, tu vas ruiner mes expériences. C'est très important pour moi.")
		SAY("Une fois cette expérience réussie, je serai le plus grand scientifique de l'univers... enfin, si tu t'en vas tout de suite.")
		ENDDIALOG()
	NODE(2)
		SAY("Oui, et bonne chance, quoi que tu fasses.")
		SAY("Au revoir, et au plaisir. Peut-être qu'on se reverra un jour...")
		ENDDIALOG()
	NODE(3)
		SAY("Tu m'as beaucoup aidé par le passé, je vais t'offrir quelque chose de spécial. C'est un petit truc que j'ai fait grâce à mes expériences.")
		
		ANSWER("Evidemment, j'accepte tout ce qu'on peut me donner.",4)
		ANSWER("Un cadeau? Pour moi? Qu'est-ce que c'est?",4)
	NODE(4)
		SAY("Je t'offre le choix entre deux petits trucs. Une fabuleuse armure, et une arme de débutant. Que choisis-tu?")
		
		ANSWER("L'armure! Oui, c'est ça, donne-moi l'armure!",5)
		ANSWER("L'arme! Je voudrais l'arme!",6)
	NODE(5)
		GIVEITEM(1851)
		SAY("Voilà, mon ami. Mais c'est tout ce que je peux te donner... Au revoir!")
		
		ANSWER("C'est tout ce qu'il me fallait, merci!",1)
	NODE(6) 
		GIVEITEM(1839)
		SAY("Tiens, prends cette arme et sois heureux.")
		
		ANSWER("Merci du fond du coeur.",1)
		
end