function DIALOG()

NODE(0)
   TAKESPECIALITEMCNT(1491, 2, 11114, 1)
   if (result == 0) then
      SAY("Pas le temps!")
      SAY("Je suis occup�!")
      SAY("Pas maintenant!")
      ENDDIALOG()
   else
      GIVESPECIALITEM(1491, 2, 11115)
      SAY("Je dois vous demander de partir, nous avons un gros probl�me � traiter!")
      ANSWER("Un probl�me? Laissez-moi deviner : vous avez �t� hack�s?", 1)
   end

NODE(1)
   SAY("Qui vous a mis au courant? Vous en �tes responsable??!")
   ANSWER("Non, c'est pas moi. Mais �a n'est pas la premi�re fois qu'ils hackent quelque chose.", 2)

NODE(2)
   SAY("Qu'est-ce qu'ils ont hack� d'autre?")
   ANSWER("La base de donn�es Tangent, entre autres. Mais je n'ai pas le temps de vous raconter des histoires. Qu'est-ce qui s'est pass� chez vous?", 3)

NODE(3)
   SAY("On aimerait bien le savoir. Ils ont r�ussi � installer un cheval de Troie, je pense. Nos propres hackers eux-m�mes s'arrachent les cheveux pour comprendre. C'est un programme tr�s agressif. Chaque fois qu'on l'efface, il r�appara�t dans un autre endroit du syst�me, en plus violent.")
   ANSWER("Qu'est-ce qu'il fait exactement?", 4)

NODE(4)
   SAY("Il �crase toutes nos donn�es en les rempla�ant � chaque fois par une phrase : 'Lisez la carte comme un livre, de bas en haut, et IOB vous guidera � votre but. Au bout du chemin, le positionnement de ses mots vous indiquera la direction.'")
   ANSWER("Ca concorde. Je ne peux pas tout vous expliquer maintenant, mais je pense que les hackers nous donnent des indices sur leur emplacement.", 5)

NODE(5)
   SAY("Qu'est-ce qui vous fait penser �a?")
   ANSWER("Comme je vous le disais, j'ai d�j� r�uni plusieurs de leurs indices. Dans une autre base de donn�es, ils ont laiss� un extrait de ce Iob que vous mentionnez, lequel s'appelle aussi Hiob, ou encore Job. Trois noms pour la m�me personne. Je ne sais pas si �a peut vous rassurer, mais je pense qu'ils ne vous ont attaqu�s que pour une raison symbolique.", 6)

NODE(6)
   SAY("Symbolique ou pas, je m'en fiche. Je dois tout remettre sur pied, et je veux capturer ces hackers. Et par-dessus tout, je veux savoir comment ils ont fait!")
   ANSWER("Alors aidez-moi. Plus vite je saurai o� ils sont, plus vite �a s'arr�tera.", 7)

NODE(7)
   SAY("Ca me va. Comment est-ce que je peux vous aider?")
   ANSWER("En r�fl�chissant. Qu'est-ce que vous comprenez par 'Lisez la carte comme un livre, de bas en haut'?", 8)

NODE(8)
   SAY("Je pense qu'il fait r�f�rence aux secteurs. Vous pouvez les lire de gauche � droite, ou bien en colonne. Mais je pense qu'il faut commencer par le bas. Il parle peut-�tre des secteurs qui sont accessibles... Je n'en sais rien du tout.")
   ANSWER("Hmm... Je commence � comprendre... Et IOB...", 9)

NODE(9)
   SAY("Je ne comprends pas...")
   ANSWER("Moi si. L'indice que j'ai eu par le NCPD va m'�tre utile. Additionnez les chiffres correspondant � I, O et B, �a nous fait 26. Et maintenant, je compte les secteurs accessibles, en partant du bas... 1, 2, 3, 4, 5... Tiens tiens, Foster Uplink. Int�ressant.", 10)

NODE(10)
   SAY("Vous voulez vraiment pas m'expliquer � quoi �a rime?")
   ANSWER("Vous ne gagnerez rien � comprendre. Mais si vous voulez vraiment retourner dans les affaires, vous feriez mieux de me donner un coup de main.", 11)

NODE(11)
   SAY("Ok, ok. Qu'est-ce que vous voulez savoir?")
   ANSWER("'Au bout du chemin, le positionnement de ses mots vous indiquera la direction.' Ca vous inspire quelque chose?", 12)

NODE(12)
   SAY("Nan! Qu'est-ce que je pourrais vous apprendre? C'est vous qui avez tous les indices, j'en ai plein le dos de vos �nigmes � la noix!")
   ANSWER("Eh bien, comme je vous l'ai dit, ils ont laiss� une autre phrase dans un endroit diff�rent... Cette phrase provient d'un livre, le Livre de Job, plus pr�cis�ment du chapitre, 3, paragraphe 19.", 13)

NODE(13)
   SAY("3 et 19... Ca ne nous aide pas beaucoup. Ca peut signifier n'importe quoi. Peut-�tre trois pas au nord et 19 � l'ouest... ou � l'est... Ou peut-�tre 319 degr�s, ou 22... J'en sais rien!")
   ANSWER("Int�ressant. Je pense que je vais aller voir �a sur place.", 14)

NODE(14)
   SAY("Comme vous voulez. Mais arr�tez ces types le plus vite possible!")
   ENDDIALOG()

end