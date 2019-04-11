function DIALOG()

NODE(0)
  SAY("Je suis le Roi des Egouts! HAHAHAHAHAHAHA!")
  ANSWER("O grand Roi des Egouts, auriez-vous l'oblig...", 1)
  ANSWER("Tout doux l'ami. Je viens pour de la chitine!", 2)
  ANSWER("Oh non, encore un débile...", 3)

NODE(1)
  SAY("JE VEUX UNE COURBETTE QUAND TU ME PARLES!!!")
  ANSWER("*courbette* O grand Roi des Egouts, auriez-vous l'obligeance de me vendre 20 chitines?", 4)
  ANSWER("Laisse tomber, je viens pour acheter de la chitine, pas pour me ridiculiser devant tout le monde!", 2)

NODE(2)
  SAY("Ma chitine est de bien trop bonne qualité pour les pouacres de ton genre. Du vent, scorie!")
  ENDDIALOG()

NODE(3)
  SAY("HORS DE MA VUE, POUACRE!!! Avant que j'appelle mes armées pour t'empaler!")
  ENDDIALOG()

NODE(4)
  SAY("20 chitines? Hmm. Si tu me promets de les traiter avec respect, soit! Pour toi, ce sera... 500 crédits!")
  ANSWER("C'est parfait, O grand...", 5)
  ANSWER("Laisse tomber...", 2)

NODE(5)
  SAY("HE LA! On n'oublie pas ma courbette!")
  ANSWER("Mille excuses! *courbette* C'est parfait, O grand Roi des Egouts!", 6)
  ANSWER("Toi, tu me tapes sur les nerfs. Mets-toi ta chitine où je pense, je vais me débrouiller sans toi!", 3)

NODE(6)
  TAKEMONEY(500)
  if (result == 1) then
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    GIVEITEM(1000)
    SAY("Bien. Fais-en bon usage, fidèle sujet!")
    ENDDIALOG()
  else
    SAY("Comment oses-tu? A moi, le Roi des Egouts?! Hors de ma vue, et reviens quand tu auras accumulé espèces sonnantes et trébuchantes, ventrebleu!")
    ENDDIALOG()
  end

end