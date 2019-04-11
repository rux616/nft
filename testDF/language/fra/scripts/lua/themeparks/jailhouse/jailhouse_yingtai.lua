function DIALOG()

NODE(0)
   SAY("Konichiwa! Tu veux t'amuser?")
   ANSWER("Ouais! Heu... C'est quoi tout ce truc que tu as sur la figure?", 1)
   ANSWER("Non merci, les asiatiques c'est pas trop mon trip!", 2)

NODE(1)
   SAY("Est-ce que le mot 'bukkake' te dit quelque chose?")
   ANSWER("Ah oui je vois... Qu'est-ce que tu proposes?", 3)

NODE(2)
   SAY("Dommage... Tu t'imagines pas ce que tu rates!")
   ENDDIALOG()

NODE(3)
   SAY("Tout ce que tu veux! Mon corps entier t'appartient!")
   ANSWER("Ah c'est cool ça! On peut s'y mettre quand?", 4)

NODE(4)
   SAY("Tout de suite si tu veux. Juste une minute que je me débarbouille, j'en ai partout...")
   ANSWER("OK, je vais repasser!", 5)

NODE(5)
   SAY("A bientôt!")
   ENDDIALOG()

end