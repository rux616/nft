function DIALOG()

NODE(0)
   TAKESPECIALITEMCNT(1491, 2, 11111, 1)
   if (result == 0) then
      SAY("C'est impossible!")
      ANSWER("Oui, j'ai entendu parler de ça... C'est moche! Vous savez qui c'est?", 2)
      ANSWER("Quoi?", 1)
   else
      GIVESPECIALITEM(1491, 2, 11111)
      SAY("Vous étiez pas là il y a deux minutes? Je pense que si. Et je vous ai dit de partir, il me semble.")
      ENDDIALOG()
   end

NODE(1)
   SAY("Vous lisez pas les journaux? On a été hackés!")
   ANSWER("Hackés? Par qui?", 2)

NODE(2)
   SAY("Aucune idée. On n'a pas pu remonter le signal. Mais ils ont laissé un texte dans la base de données juste avant de partir.")
   ANSWER("Un texte? Quel genre de texte?", 3)

NODE(3)
   SAY("Un texte étrange. 'Petit et grand, là, c'est tout un, et l'esclave y est affranchi de son maître.'")
   ANSWER("Et vous savez ce que ça signifie?", 4)

NODE(4)
   SAY("Non, absolument pas! Si on le savait, ça nous aiderait pas mal. Mais qu'est-ce qu'on peut faire de ce truc... ça me fait penser à une sorte de machin religieux.")
   ANSWER("Alors il faudrait peut-être demander à ceux qui sont dans le domaine...?", 5)

NODE(5)
   SAY("Ecoutez, si vous voulez vraiment perdre votre temps, allez-y, et amusez-vous! Mais je vous en prie, ne commencez pas à me taper sur les nerfs avec ça!")
   ANSWER("Comme vous voulez... Je vais y aller moi-même! C'est juste que...", 6)

NODE(6)
   SAY("Quoi encore?!")
   ANSWER("Vous ne pourriez pas me donner une copie des logs? Ca pourrait me servir...", 7)

NODE(7)
   GIVESPECIALITEM(1491, 2, 11111)
   SAY("Comme vous voulez. Tenez, voilà. Maintenant, fichez-moi le camp!")
   ENDDIALOG()

end