function DIALOG()

NODE(0)
   SAY("Bienvenue au ConCenter, citoyen. Comment puis-je vous aider?")
   ANSWER("Qu'est-ce que je peux trouver ici?",1)
   ANSWER("Laissez tomber...",2)

NODE(1)
   SAY("Au rez-de-chauss�e, vous trouverez les bureaux des factions CityAdmin, BioTech, ProtoPharm, Diamond Immobilier, Tangent Technologies et NExT Systems. Chacun de ces bureaux poss�de une salle de conf�rence � l'�tage, o� vous trouverez �galement le bureau des NEMA et une succursale CityMercs. Vous pourrez profiter d'un restaurant Garriot's Diner pour vous d�tendre entre deux r�unions.")
   ANSWER ("Merci beaucoup, je n'ai pas d'autre question. Bonne journ�e.",3)

NODE(2)
   SAY("Bonne journ�e � vous, citoyen.")
   ENDDIALOG()

NODE(3)
   SAY("Je vous en prie, citoyen, bonne journ�e � vous.")
   ENDDIALOG()

end