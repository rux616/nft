function DIALOG()

NODE(0)
   SAY("Fais attention! Monte pas là-haut!")
   ANSWER("Pourquoi? Y a quoi là-haut?", 1)
   ANSWER("Du calme mec, si je monte là-haut c'est que je sais ce qu'il y a. 2carte-toi de ma route.", 2)

NODE(1)
   SAY("C'est la prison de l'Outzone, elle est contrôlée par un gang de violents criminels. Et leur chef... il est si cruel que chaque fois que je le vois je fais dans mon froc!")
   ANSWER("Ca m'a l'air funky. laisse-moi passer!", 2)
   ANSWER("T'as été voir?", 3)

NODE(2)
   SAY("Tu sais pas dans quoi tu t'embarques!")
   ENDDIALOG()

NODE(3)
   SAY("Ouais, j'y suis allé. J'ai vu ces barbares éclater quelques Dragons Noirs qui les faisaient chier. Et je peux te dire, les cadavres qui sont restés derrière, on savait plus si c'était humain ou pas...")
   ANSWER("Oh mon dieu, c'est affreux! Merci du conseil, je vais éviter de traîner dans le coin.", 4)

NODE(4)
   SAY("File vite avant qu'ils te tombent dessus!")
   ENDDIALOG()

end