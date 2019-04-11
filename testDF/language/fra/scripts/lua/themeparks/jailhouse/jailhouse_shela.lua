function DIALOG()

NODE(0)
   SAY("Hep toi, approche!")
   ANSWER("Oui?", 1)
   ANSWER("Fais attention à ce que tu dis!", 2)
   ANSWER("Merci, mais non merci!", 3)

NODE(1)
   SAY("Je t'ordonne de te déshabiller de passer des heures d'extase continue en ma compagnie!")
   ANSWER("Hein? Qu'est-ce que tu me racontes...", 4)

NODE(2)
   SAY("Ah pardon, tu n'aimes pas ça? La plupart des gens qui passent ne viennent que pour le cul. Mais si tu veux, je peux ronronner au lieu de siffler!")
   ANSWER("C'est très mignon, mais non merci. Je vais peut-être revenir plus tard!", 3)

NODE(3)
   SAY("Comme tu veux. Je reste dans le coin.")
   ENDDIALOG()

NODE(4)
   SAY("Oui, tu sais très bien ce que je veux dire! Maintenant fais ce que je te demande, que je prenne mon pied avec toi!")
   ANSWER("*gloup*", 5)

NODE(5)
   SAY("Hé, reviens!")
   ENDDIALOG()

end