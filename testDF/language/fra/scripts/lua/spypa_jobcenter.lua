function DIALOG()

NODE(0)
   TAKESPECIALITEMCNT(1491, 2, 11114, 1)
   if (result == 0) then
      SAY("Pas le temps!")
      SAY("Je suis occupé!")
      SAY("Pas maintenant!")
      ENDDIALOG()
   else
      GIVESPECIALITEM(1491, 2, 11115)
      SAY("Je dois vous demander de partir, nous avons un gros problème à traiter!")
      ANSWER("Un problème? Laissez-moi deviner : vous avez été hackés?", 1)
   end

NODE(1)
   SAY("Qui vous a mis au courant? Vous en êtes responsable??!")
   ANSWER("Non, c'est pas moi. Mais ça n'est pas la première fois qu'ils hackent quelque chose.", 2)

NODE(2)
   SAY("Qu'est-ce qu'ils ont hacké d'autre?")
   ANSWER("La base de données Tangent, entre autres. Mais je n'ai pas le temps de vous raconter des histoires. Qu'est-ce qui s'est passé chez vous?", 3)

NODE(3)
   SAY("On aimerait bien le savoir. Ils ont réussi à installer un cheval de Troie, je pense. Nos propres hackers eux-mêmes s'arrachent les cheveux pour comprendre. C'est un programme très agressif. Chaque fois qu'on l'efface, il réapparaît dans un autre endroit du système, en plus violent.")
   ANSWER("Qu'est-ce qu'il fait exactement?", 4)

NODE(4)
   SAY("Il écrase toutes nos données en les remplaçant à chaque fois par une phrase : 'Lisez la carte comme un livre, de bas en haut, et IOB vous guidera à votre but. Au bout du chemin, le positionnement de ses mots vous indiquera la direction.'")
   ANSWER("Ca concorde. Je ne peux pas tout vous expliquer maintenant, mais je pense que les hackers nous donnent des indices sur leur emplacement.", 5)

NODE(5)
   SAY("Qu'est-ce qui vous fait penser ça?")
   ANSWER("Comme je vous le disais, j'ai déjà réuni plusieurs de leurs indices. Dans une autre base de données, ils ont laissé un extrait de ce Iob que vous mentionnez, lequel s'appelle aussi Hiob, ou encore Job. Trois noms pour la même personne. Je ne sais pas si ça peut vous rassurer, mais je pense qu'ils ne vous ont attaqués que pour une raison symbolique.", 6)

NODE(6)
   SAY("Symbolique ou pas, je m'en fiche. Je dois tout remettre sur pied, et je veux capturer ces hackers. Et par-dessus tout, je veux savoir comment ils ont fait!")
   ANSWER("Alors aidez-moi. Plus vite je saurai où ils sont, plus vite ça s'arrêtera.", 7)

NODE(7)
   SAY("Ca me va. Comment est-ce que je peux vous aider?")
   ANSWER("En réfléchissant. Qu'est-ce que vous comprenez par 'Lisez la carte comme un livre, de bas en haut'?", 8)

NODE(8)
   SAY("Je pense qu'il fait référence aux secteurs. Vous pouvez les lire de gauche à droite, ou bien en colonne. Mais je pense qu'il faut commencer par le bas. Il parle peut-être des secteurs qui sont accessibles... Je n'en sais rien du tout.")
   ANSWER("Hmm... Je commence à comprendre... Et IOB...", 9)

NODE(9)
   SAY("Je ne comprends pas...")
   ANSWER("Moi si. L'indice que j'ai eu par le NCPD va m'être utile. Additionnez les chiffres correspondant à I, O et B, ça nous fait 26. Et maintenant, je compte les secteurs accessibles, en partant du bas... 1, 2, 3, 4, 5... Tiens tiens, Foster Uplink. Intéressant.", 10)

NODE(10)
   SAY("Vous voulez vraiment pas m'expliquer à quoi ça rime?")
   ANSWER("Vous ne gagnerez rien à comprendre. Mais si vous voulez vraiment retourner dans les affaires, vous feriez mieux de me donner un coup de main.", 11)

NODE(11)
   SAY("Ok, ok. Qu'est-ce que vous voulez savoir?")
   ANSWER("'Au bout du chemin, le positionnement de ses mots vous indiquera la direction.' Ca vous inspire quelque chose?", 12)

NODE(12)
   SAY("Nan! Qu'est-ce que je pourrais vous apprendre? C'est vous qui avez tous les indices, j'en ai plein le dos de vos énigmes à la noix!")
   ANSWER("Eh bien, comme je vous l'ai dit, ils ont laissé une autre phrase dans un endroit différent... Cette phrase provient d'un livre, le Livre de Job, plus précisément du chapitre, 3, paragraphe 19.", 13)

NODE(13)
   SAY("3 et 19... Ca ne nous aide pas beaucoup. Ca peut signifier n'importe quoi. Peut-être trois pas au nord et 19 à l'ouest... ou à l'est... Ou peut-être 319 degrés, ou 22... J'en sais rien!")
   ANSWER("Intéressant. Je pense que je vais aller voir ça sur place.", 14)

NODE(14)
   SAY("Comme vous voulez. Mais arrêtez ces types le plus vite possible!")
   ENDDIALOG()

end