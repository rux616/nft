function DIALOG()

NODE(0)
   SAY("Salut mon beau...")
   ANSWER("Hmm, tu m'as l'air tr�s accueillante... Tu co�tes combien?", 1)
   ANSWER("Tu travailles ici?", 2)
   ANSWER("A l'aide!!!", 3)

NODE(1)
   SAY("Je co�te combien? Toi tu es nouveau, �a se voit. Tout est compris!")
   ANSWER("QUOI?! G�nial! Pr�te � faire trembler les murs, poulette?", 4)

NODE(2)
   SAY("Ca n'est pas vraiment du travail, je m'amuse tellement! J'en ai jamais assez!")
   ANSWER("Whoa, tu m'excites! Faut que tu fasses quelque chose pour moi, l�!", 4)

NODE(3)
   SAY("J'ai dit quelque chose de mal?")
   ENDDIALOG()

NODE(4)
   SAY("Sans probl�me. Mais tu veux bien repasser dans une minute. Je viens d'avoir un client, il faut que je me fasse un brin de toilette avant.")
   ANSWER("J'ai jamais de chance... OK, je vais attendre!", 5)

NODE(5)
   SAY("Excellent! J'en ai pour cinq minutes...")
   ENDDIALOG()

end