function DIALOG()

NODE(0)
   SAY("*grr*")
   ANSWER("T'es un f�tard, toi! Qu'est-ce que tu fiches ici?", 1)
   ANSWER("*grr*", 1)
   ANSWER("Heu... ok.", 2)

NODE(1)
   SAY("Fous moi la paix... Va parler � mon fr�re.")
   ANSWER("Au d'accord, et... euh...", 2)

NODE(2)
   SAY("Ouaip.")
   ENDDIALOG()

end