function DIALOG()

NODE(0)
   SAY("Fais attention! Monte pas l�-haut!")
   ANSWER("Pourquoi? Y a quoi l�-haut?", 1)
   ANSWER("Du calme mec, si je monte l�-haut c'est que je sais ce qu'il y a. 2carte-toi de ma route.", 2)

NODE(1)
   SAY("C'est la prison de l'Outzone, elle est contr�l�e par un gang de violents criminels. Et leur chef... il est si cruel que chaque fois que je le vois je fais dans mon froc!")
   ANSWER("Ca m'a l'air funky. laisse-moi passer!", 2)
   ANSWER("T'as �t� voir?", 3)

NODE(2)
   SAY("Tu sais pas dans quoi tu t'embarques!")
   ENDDIALOG()

NODE(3)
   SAY("Ouais, j'y suis all�. J'ai vu ces barbares �clater quelques Dragons Noirs qui les faisaient chier. Et je peux te dire, les cadavres qui sont rest�s derri�re, on savait plus si c'�tait humain ou pas...")
   ANSWER("Oh mon dieu, c'est affreux! Merci du conseil, je vais �viter de tra�ner dans le coin.", 4)

NODE(4)
   SAY("File vite avant qu'ils te tombent dessus!")
   ENDDIALOG()

end