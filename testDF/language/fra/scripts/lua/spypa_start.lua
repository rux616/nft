function DIALOG()

NODE(0)
   TAKESPECIALITEMCNT(1491, 2, 11111, 1)
   if (result == 0) then
      SAY("C'est impossible!")
      ANSWER("Oui, j'ai entendu parler de �a... C'est moche! Vous savez qui c'est?", 2)
      ANSWER("Quoi?", 1)
   else
      GIVESPECIALITEM(1491, 2, 11111)
      SAY("Vous �tiez pas l� il y a deux minutes? Je pense que si. Et je vous ai dit de partir, il me semble.")
      ENDDIALOG()
   end

NODE(1)
   SAY("Vous lisez pas les journaux? On a �t� hack�s!")
   ANSWER("Hack�s? Par qui?", 2)

NODE(2)
   SAY("Aucune id�e. On n'a pas pu remonter le signal. Mais ils ont laiss� un texte dans la base de donn�es juste avant de partir.")
   ANSWER("Un texte? Quel genre de texte?", 3)

NODE(3)
   SAY("Un texte �trange. 'Petit et grand, l�, c'est tout un, et l'esclave y est affranchi de son ma�tre.'")
   ANSWER("Et vous savez ce que �a signifie?", 4)

NODE(4)
   SAY("Non, absolument pas! Si on le savait, �a nous aiderait pas mal. Mais qu'est-ce qu'on peut faire de ce truc... �a me fait penser � une sorte de machin religieux.")
   ANSWER("Alors il faudrait peut-�tre demander � ceux qui sont dans le domaine...?", 5)

NODE(5)
   SAY("Ecoutez, si vous voulez vraiment perdre votre temps, allez-y, et amusez-vous! Mais je vous en prie, ne commencez pas � me taper sur les nerfs avec �a!")
   ANSWER("Comme vous voulez... Je vais y aller moi-m�me! C'est juste que...", 6)

NODE(6)
   SAY("Quoi encore?!")
   ANSWER("Vous ne pourriez pas me donner une copie des logs? Ca pourrait me servir...", 7)

NODE(7)
   GIVESPECIALITEM(1491, 2, 11111)
   SAY("Comme vous voulez. Tenez, voil�. Maintenant, fichez-moi le camp!")
   ENDDIALOG()

end