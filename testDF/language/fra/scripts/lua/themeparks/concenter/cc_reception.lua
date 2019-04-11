function DIALOG()

NODE(0)
   SAY("Bienvenue au ConCenter, citoyen. Comment puis-je vous aider?")
   ANSWER("Qu'est-ce que je peux trouver ici?",1)
   ANSWER("Laissez tomber...",2)

NODE(1)
   SAY("Au rez-de-chaussée, vous trouverez les bureaux des factions CityAdmin, BioTech, ProtoPharm, Diamond Immobilier, Tangent Technologies et NExT Systems. Chacun de ces bureaux possède une salle de conférence à l'étage, où vous trouverez également le bureau des NEMA et une succursale CityMercs. Vous pourrez profiter d'un restaurant Garriot's Diner pour vous détendre entre deux réunions.")
   ANSWER ("Merci beaucoup, je n'ai pas d'autre question. Bonne journée.",3)

NODE(2)
   SAY("Bonne journée à vous, citoyen.")
   ENDDIALOG()

NODE(3)
   SAY("Je vous en prie, citoyen, bonne journée à vous.")
   ENDDIALOG()

end