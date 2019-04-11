function DIALOG()

NODE(0)
   SAY("*grr*")
   ANSWER("T'es un fêtard, toi! Qu'est-ce que tu fiches ici?", 1)
   ANSWER("*grr*", 1)
   ANSWER("Heu... ok.", 2)

NODE(1)
   SAY("Fous moi la paix... Va parler à mon frère.")
   ANSWER("Au d'accord, et... euh...", 2)

NODE(2)
   SAY("Ouaip.")
   ENDDIALOG()

end