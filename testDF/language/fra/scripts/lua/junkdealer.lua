function DIALOG()

NODE(0)
  SAY("Ouais?!")
  ANSWER("C'est la d�charge Blackmist ici?", 1)
  ANSWER("Rien, rien! Vous m'avez pas vu! Allez ciao!", 13)

NODE(1)
  SAY("Ouais c'est bien �a. Qu'ess'tu veux?")
  ANSWER("Je cherche des composants pas tr�s courants � recycler.", 2)
  ANSWER("Heu... J'ai oubli�. Laissez tomber, c'est pas grave.", 13)

NODE(2)
  SAY("Je vois le genre. Ouais, on pourrait se faire un petit �change, s'tu vois c'que j'veux dire?")
  ANSWER("Ca me va. Allons-y!", 3)
  ANSWER("Quoi, �changer des d�chets? Pour qui tu me prends! Bas les pattes!", 13)

NODE(3)
  SAY("Ok, qu'est-ce que t'as pour moi?")
  ANSWER("10 Mechanical Joint Parts", 4)
  ANSWER("10 Hardware Scraps", 5)
  ANSWER("10 Hardware based OS", 6)
  ANSWER("5 Energy Generator", 7)
  ANSWER("3 Large Hydraulic Parts", 8)

NODE(4)
  TAKEITEMCNT(4034,10)
  if (result == 1) then
    SAY("Super, ca devrait suffire!")
    ANSWER("Cool! Qu'est-ce que j'ai pour �a?", 9)
  else
    SAY("Et si pour commencer tu me proposais quelque chose que tu as vraiment!")
    ENDDIALOG()
  end

NODE(5)
  TAKEITEMCNT(4035,10)
  if (result == 1) then
    SAY("Super, �a devrait suffire!")
    ANSWER("Cool! Qu'est-ce que j'ai pour �a?", 9)
  else
    SAY("Et si pour commencer tu me proposais quelque chose que tu as vraiment!")
    ENDDIALOG()
  end

NODE(6)
  TAKEITEMCNT(4036,10)
  if (result == 1) then
    SAY("Super, �a devrait suffire!")
    ANSWER("Cool! Qu'est-ce que j'ai pour �a?", 9)
  else
    SAY("Et si pour commencer tu me proposais quelque chose que tu as vraiment!")
    ENDDIALOG()
  end

NODE(7)
  TAKEITEMCNT(4037, 5)
  if (result == 1) then
    SAY("Super, �a devrait suffire!")
    ANSWER("Cool! Qu'est-ce que j'ai pour �a?", 9)
  else
    SAY("Et si pour commencer tu me proposais quelque chose que tu as vraiment!")
    ENDDIALOG()
  end

NODE(8)
  TAKEITEMCNT(4038, 3)
  if (result == 1) then
    SAY("Super, �a devrait suffire!")
    ANSWER("Cool! Qu'est-ce que j'ai pour �a?", 9)
  else
    SAY("Et si pour commencer tu me proposais quelque chose que tu as vraiment!")
    ENDDIALOG()
  end

NODE(9)
  SAY("Ben... j'ai des Defunct Copbot Ethic Chips, des Ancient Launcher Connectors et m�me des Tronik Parts...C'est super rare, ces trucs-l�.")
  ANSWER("Hmm... Une Defunct Copbot Ethic Chip!", 10)
  ANSWER("Des Ancient Launcher Connectors! Pas d'h�sitation!", 11)
  ANSWER("Des Tronik Parts? Ca m'int�resse!", 12)

NODE(10)
  GIVEITEM(8101)
  SAY("Tiens, repasse me voir s'il te faut autre chose!")
  ENDDIALOG()

NODE(11)
  GIVEITEM(8301)
  SAY("Tiens, repasse me voir s'il te faut autre chose!")
  ENDDIALOG()

NODE(12)
  GIVEITEM(4028)
  SAY("Tiens, repasse me voir s'il te faut autre chose!")
  ENDDIALOG()

NODE(13)
  SAY("Alors arr�te de me pomper l'air!")
  ENDDIALOG()

end