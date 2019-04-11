function DIALOG()

NODE(0)
   SAY("Salut mon beau...")
   ANSWER("Hmm, tu m'as l'air très accueillante... Tu coûtes combien?", 1)
   ANSWER("Tu travailles ici?", 2)
   ANSWER("A l'aide!!!", 3)

NODE(1)
   SAY("Je coûte combien? Toi tu es nouveau, ça se voit. Tout est compris!")
   ANSWER("QUOI?! Génial! Prête à faire trembler les murs, poulette?", 4)

NODE(2)
   SAY("Ca n'est pas vraiment du travail, je m'amuse tellement! J'en ai jamais assez!")
   ANSWER("Whoa, tu m'excites! Faut que tu fasses quelque chose pour moi, là!", 4)

NODE(3)
   SAY("J'ai dit quelque chose de mal?")
   ENDDIALOG()

NODE(4)
   SAY("Sans problème. Mais tu veux bien repasser dans une minute. Je viens d'avoir un client, il faut que je me fasse un brin de toilette avant.")
   ANSWER("J'ai jamais de chance... OK, je vais attendre!", 5)

NODE(5)
   SAY("Excellent! J'en ai pour cinq minutes...")
   ENDDIALOG()

end