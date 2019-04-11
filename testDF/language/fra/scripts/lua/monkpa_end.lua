function DIALOG()

NODE(0)
TAKESPECIALITEMCNT(91,2,11111,1)
if (result == 1) then
GIVESPECIALITEM(91,2,11111)
SAY("Bonjour! Tu viens pour la première Power Cloak?")
ANSWER("Exactement!", 10)
else
TAKESPECIALITEMCNT(91,2,11112,1)
if (result == 1) then
GIVESPECIALITEM(91,2,11112)
SAY("Bonjour! Tu viens pour la deuxième Power Cloak?")
ANSWER("Exactement!", 20)
else
TAKESPECIALITEMCNT(91,2,11113,1)
if (result == 1) then
GIVESPECIALITEM(91,2,11113)
SAY("Bonjour! Tu viens pour la troisième Power Cloak?")
ANSWER("Exactement!", 30)
else
TAKESPECIALITEMCNT(91,2,11114,1)
if (result == 1) then
GIVESPECIALITEM(91,2,11114)
SAY("Bonjour! Tu viens pour la quatrième Power Cloak?")
ANSWER("Exactement!", 40)
else
SAY("Yo!")
ENDDIALOG()
end
end
end
end

NODE(10)
SAY("Excellent. Tu as tout ce qu'il faut?")
ANSWER("Oui!", 11)
ANSWER("Euh... Non, je pense que j'ai oublié quelque chose.", 99)

NODE(11)
SAY("Cool. Quelle version t'intéresse? Agressive ou passive?")
ANSWER("Agressive!", 12)
ANSWER("Passive!", 13)

NODE(12)
SAY("A la bonne heure! Alors donne-moi un Crahn Energy Bolt!")
ANSWER("Voilà!", 14)
ANSWER("Pas de pro... Une minute! Un Energy Bolt?", 98)

NODE(13)
SAY("A la bonne heure! Alors donne-moi un Crahn Heal!")
ANSWER("Voilà!", 15)
ANSWER("Pas de pro... Une minute! Un Crahn Heal?", 98)

NODE(14)
TAKEITEM(100)
if (result == 1) then
TAKEITEM(1900)
if (result == 1) then
TAKEITEM(1860)
if (result == 1) then 
TAKEITEM(2300)
if (result == 1) then
SAY("Excellent! Il ne manque rien!")
ANSWER("Alors c'est bon, je peux avoir ma Power Cloak?", 18)
else
GIVEITEM(100,1)
GIVEITEM(1900,1)
GIVEITEM(1860,1)
SAY("Le sort, l'Armour Suit, la Shelter Vest... où est la Law Enforcer?")
ANSWER("Law En...? Euh... J'ai dû la laisser dans la poche de mon autre pantalon!", 99)
end
else
GIVEITEM(100,1)
GIVEITEM(1900,1)
SAY("J'ai le sort et l'Armour Suit, mais pas la Crahn Shelter Vest!")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(100,1)
SAY("Je vois bien le sort, mais pas l'Armour Suit!")
ANSWER("Ah bon? Désolé...", 99)
end
else
SAY("Espèce de comique, tu n'as même pas le sort!")
ANSWER("Oups...", 99)
end

NODE(18)
TAKESPECIALITEMCNT(91,2,11111,1)
GIVEITEM(1921,255)
SAY("Le compte y est. Une petite minute... voilà! Cadeau! Maintenant amuse-toi bien et laisse-moi en paix, j'ai du travail!")
ENDDIALOG()
 
NODE(15)
TAKEITEM(101)
if (result == 1) then
TAKEITEM(1900)
if (result == 1) then
TAKEITEM(1860)
if (result == 1) then 
TAKEITEM(2300)
if (result == 1) then
SAY("Excellent! Il ne manque rien!")
ANSWER("Alors c'est bon, je peux avoir ma Power Cloak?", 19)
else
GIVEITEM(101,1)
GIVEITEM(1900,1)
GIVEITEM(1860,1)
SAY("Le sort, l'Armour Suit, la Shelter Vest... où est la Law Enforcer?")
ANSWER("Law En...? Euh... J'ai dû la laisser dans la poche de mon autre pantalon!", 99)
end
else
GIVEITEM(101,1)
GIVEITEM(1900,1)
SAY("J'ai le sort et l'Armour Suit, mais pas la Crahn Shelter Vest!")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(101,1)
SAY("Je vois bien le sort, mais pas l'Armour Suit!")
ANSWER("Ah bon? Désolé...", 99)
end
else
SAY("Espèce de comique, tu n'as même pas le sort!")
ANSWER("Oups...", 99)
end

NODE(19)
TAKESPECIALITEMCNT(91,2,11111,1)
GIVEITEM(1925,255)
SAY("Le compte y est. Une petite minute.... voilà! Cadeau! Maintenant amuse-toi bien et laisse-moi en paix, j'ai du travail!")
ENDDIALOG()
 
NODE(20)
SAY("Excellent. Tu as tout ce qu'il faut?")
ANSWER("Oui!", 21)
ANSWER("Euh... Non, je pense que j'ai oublié quelque chose.", 99)

NODE(21)
SAY("Cool. Quelle version t'intéresse? Agressive ou passive?")
ANSWER("Aggressive!", 22)
ANSWER("Passive!", 23)

NODE(22)
SAY("A la bonne heure! Alors donne-moi un Crahn Holy Energy Bolt!")
ANSWER("Voilà!", 24)
ANSWER("Pas de pro... Une minute! Un Energy Holy Energy Bolt?", 98)

NODE(23)
SAY("A la bonne heure! Alors donne-moi un Crahn Group Heal!")
ANSWER("Voilà!", 25)
ANSWER("Pas de pro... Une minute! Un Crahn Group Heal?", 98)

NODE(24)
TAKEITEM(135)
if (result == 1) then
TAKEITEM(1901)
if (result == 1) then
TAKEITEM(1865)
if (result == 1) then 
TAKEITEM(2300)
if (result == 1) then
TAKEITEMCNT(1000,20)
if (result == 1) then
SAY("Excellent! Il ne manque rien!")
ANSWER("Alors c'est bon, je peux avoir ma Power Cloak?", 28)
else
GIVEITEM(135,1)
GIVEITEM(1901,1)
GIVEITEM(1865,1)
GIVEITEM(2300,1)
SAY("Ecoute, je sais que c'est pas très reluisant de trouver 20 Chitines, mais c'est indispensable!")
ANSWER("Mais j'ai déjà tout le reste! D'accord, j'ai compris, j'y vais...", 99)
end
else
GIVEITEM(135,1)
GIVEITEM(1901,1)
GIVEITEM(1865,1)
SAY("Le sort, l'Armour Suit, la Shelter Vest... où est la Law Enforcer?")
ANSWER("Law En...? Euh... J'ai dû la laisser dans la poche de mon autre pantalon!", 99)
end
else
GIVEITEM(135,1)
GIVEITEM(1901,1)
SAY("J'ai le sort et l'Armour Suit, mais pas la Crahn Holy Shelter Vest!")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(135,1)
SAY("Je vois bien le sort, mais pas l'Armour Suit!")
ANSWER("Ah bon? Désolé...", 99)
end
else
SAY("Espèce de comique, tu n'as même pas le sort!")
ANSWER("Oups...", 99)
end

NODE(28)
TAKESPECIALITEMCNT(91,2,11112,1)
GIVEITEM(1922,255)
SAY("Exactement. Une petite minute... voilà! Cadeau! Maintenant amuse-toi bien et laisse-moi en paix, j'ai du travail!")
ENDDIALOG()
 
NODE(25)
TAKEITEM(111)
if (result == 1) then
TAKEITEM(1901)
if (result == 1) then
TAKEITEM(1865)
if (result == 1) then 
TAKEITEM(2300)
if (result == 1) then
TAKEITEMCNT(1000,20)
if (result == 1) then
SAY("Excellent! Il ne manque rien!")
ANSWER("Alors c'est bon, je peux avoir ma Power Cloak?", 29)
else
GIVEITEM(111,1)
GIVEITEM(1901,1)
GIVEITEM(1865,1)
GIVEITEM(2300,1)
SAY("Ecoute, je sais que c'est pas très reluisant de trouver 20 Chitines, mais c'est indispensable!")
ANSWER("Mais j'ai déjà tout le reste! D'accord, j'ai compris, j'y vais...", 99)
end
else
GIVEITEM(111,1)
GIVEITEM(1901,1)
GIVEITEM(1865,1)
SAY("Le sort, l'Armour Suit, la Shelter Vest... où est la Law Enforcer?")
ANSWER("Law En...? Euh... J'ai dû la laisser dans la poche de mon autre pantalon!", 99)
end
else
GIVEITEM(111,1)
GIVEITEM(1901,1)
SAY("J'ai le sort et l'Armour Suit, mais pas la Crahn Holy Shelter Vest!")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(111,1)
SAY("Je vois bien le sort, mais pas l'Armour Suit!")
ANSWER("Ah bon? Désolé...", 99)
end
else
SAY("Espèce de comique, tu n'as même pas le sort!")
ANSWER("Oups...", 99)
end

NODE(29)
TAKESPECIALITEMCNT(91,2,11112,1)
GIVEITEM(1926,255)
SAY("Le compte y est. Une petite minute... voilà! Cadeau! Maintenant amuse-toi bien et laisse-moi en paix, j'ai du travail!")
ENDDIALOG()
 
NODE(30)
SAY("Excellent. Tu as tout ce qu'il faut?")
ANSWER("Oui!", 31)
ANSWER("Euh... Non, je pense que j'ai oublié quelque chose.", 99)

NODE(31)
SAY("Cool. Quelle version t'intéresse? Agressive ou passive?")
ANSWER("Aggressive!", 32)
ANSWER("Passive!", 33)

NODE(32)
SAY("A la bonne heure! Alors donne-moi un Crahn Multi Energy Bolt!")
ANSWER("Voilà!", 34)
ANSWER("Pas de pro... Une minute! Un Crahn Multi Energy Bolt?", 98)

NODE(33)
SAY("A la bonne heure! Alors donne-moi un Crahn Blessed Heal!")
ANSWER("Voilà!", 35)
ANSWER("Pas de pro... Une minute! Un Crahn Blessed Heal?", 98)

NODE(34)
TAKEITEM(113)
if (result == 1) then
TAKEITEM(1902)
if (result == 1) then
TAKEITEM(1870)
if (result == 1) then 
TAKEITEM(2300)
if (result == 1) then
TAKESPECIALITEMCNT(91,2,22222,1)
if (result == 1) then
TAKEITEMCNT(1000,20)
if (result ==1) then
SAY("Excellent! Il ne manque rien!")
ANSWER("Alors c'est bon, je peux avoir ma Power Cloak?", 38)
else
GIVEITEM(113,1)
GIVEITEM(1902,1)
GIVEITEM(1870,1)
GIVEITEM(2300,1)
GIVESPECIALITEM(91,2,22222)
SAY("Ecoute, je sais que c'est pas très reluisant de trouver 20 Chitines, mais c'est indispensable!")
ANSWER("Mais j'ai déjà tout le reste! D'accord, j'ai compris, j'y vais...", 99)
end
else
GIVEITEM(113,1)
GIVEITEM(1902,1)
GIVEITEM(1870,1)
GIVEITEM(2300,1)
SAY("Et les Tech Parts du Dôme d'York? Tu pensais que c'était pour décorer?")
ANSWER("Du calme, je vais les chercher.", 99)
end
else
GIVEITEM(113,1)
GIVEITEM(1902,1)
GIVEITEM(1870,1)
SAY("J'ai le sort, l'Armour Suit, la Shelter Vest... Où est la Law Enforcer?")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(113,1)
GIVEITEM(1902,1)
SAY("Je vois le sort, l'Armour Suit, mais pas la Crahn Spirit Vest!")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(113,1)
SAY("Je vois bien le sort, mais pas l'Armour Suit!")
ANSWER("Ah bon? Désolé...", 99)
end
else
SAY("Espèce de comique, tu n'as même pas le sort!")
ANSWER("Oups...", 99)
end

NODE(38)
TAKESPECIALITEMCNT(91,2,11113,1)
GIVEITEM(1923,255)
SAY("Le compte y est. Une petite minute... voilà! Cadeau! Maintenant amuse-toi bien et laisse-moi en paix, j'ai du travail!")
ENDDIALOG()
 
NODE(35)
TAKEITEM(136)
if (result == 1) then
TAKEITEM(1902)
if (result == 1) then
TAKEITEM(1870)
if (result == 1) then 
TAKEITEM(2300)
if (result == 1) then
TAKESPECIALITEMCNT(91,2,22222,1)
if (result == 1) then
TAKEITEMCNT(1000,20)
if (result == 1) then
SAY("Excellent! Il ne manque rien!")
ANSWER("Alors c'est bon, je peux avoir ma Power Cloak?", 39)
else
GIVEITEM(136,1)
GIVEITEM(1902,1)
GIVEITEM(1870,1)
GIVEITEM(2300,1)
GIVESPECIALITEMCNT(91,2,22222)
SAY("Ecoute, je sais que c'est pas très reluisant de trouver 20 Chitines, mais c'est indispensable!")
ANSWER("Mais j'ai déjà tout le reste! D'accord, j'ai compris, j'y vais...", 99)
end
else
GIVEITEM(136,1)
GIVEITEM(1902,1)
GIVEITEM(1870,1)
GIVEITEM(2300,1)
SAY("Et les Tech Parts du Dôme d'York? Tu pensais que c'était pour décorer?")
ANSWER("Du calme, je vais les chercher.", 99)
end
else
GIVEITEM(136,1)
GIVEITEM(1902,1)
GIVEITEM(1870,1)
SAY("J'ai le sort, l'Armour Suit, la Shelter Vest... Où est la Law Enforcer?")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(136,1)
GIVEITEM(1902,1)
SAY("Je vois le sort, l'Armour Suit, mais pas la Crahn Spirit Vest!")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(136,1)
SAY("Je vois bien le sort, mais pas l'Armour Suit!")
ANSWER("Ah bon? Désolé...", 99)
end
else
SAY("Espèce de comique, tu n'as même pas le sort!")
ANSWER("Oups...", 99)
end

NODE(39)
TAKESPECIALITEMCNT(91,2,11113,1)
GIVEITEM(1927,255)
SAY("Le compte y est. Une petite minute... voilà! Cadeau! Maintenant amuse-toi bien et laisse-moi en paix, j'ai du travail!")
ENDDIALOG()
 
NODE(40)
SAY("Excellent. Tu as tout ce qu'il faut?")
ANSWER("Oui!", 41)
ANSWER("Euh... Non, je pense que j'ai oublié quelque chose.", 99)

NODE(41)
SAY("Cool. Quelle version t'intéresse? Agressive ou passive?")
ANSWER("Aggressive!", 42)
ANSWER("Passive!", 43)

NODE(42)
SAY("A la bonne heure! Alors donne-moi un Crahn Holy Multi Energy Bolt!")
ANSWER("Voilà!", 44)
ANSWER("Pas de pro... Une minute! Un Crahn Holy Multi Energy Bolt?", 98)

NODE(43)
SAY("A la bonne heure! Alors donne-moi un Crahn Blessed Heal!")
ANSWER("Voilà!", 45)
ANSWER("Pas de pro... Une minute! Un Blessed Heal?", 98)

NODE(44)
TAKEITEM(148)
if (result == 1) then
TAKEITEM(1903)
if (result == 1) then
TAKEITEM(1875)
if (result == 1) then 
TAKEITEM(2300)
if (result == 1) then
TAKESPECIALITEMCNT(91,2,22222,1)
if (result == 1) then
TAKEITEMCNT(8101,10)
if (result ==1) then
TAKEITEMCNT(1000,20)
if (result == 1) then
SAY("Excellent! Il ne manque rien!")
ANSWER("Alors c'est bon, je peux avoir ma Power Cloak?", 38)
else
GIVEITEM(148,1)
GIVEITEM(1903,1)
GIVEITEM(1875,1)
GIVEITEM(2300,1)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVESPECIALITEM(91,2,22222)
SAY("Ecoute, je sais que c'est pas très reluisant de trouver 20 Chitines, mais c'est indispensable!")
ANSWER("Mais j'ai déjà tout le reste! D'accord, j'ai compris, j'y vais...", 99)
end
else
GIVEITEM(148,1)
GIVEITEM(1903,1)
GIVEITEM(1875,1)
GIVEITEM(2300,1)
GIVESPECIALITEM(91,2,22222)
SAY("Tu as oublié les Defunct Copbot Ethic Chips, l'artiste!")
ANSWER("Et merde...", 99)
end
else
GIVEITEM(148,1)
GIVEITEM(1903,1)
GIVEITEM(1875,1)
GIVEITEM(2300,1)
SAY("Et les Tech Parts du Dôme d'York? Tu pensais que c'était pour décorer?")
ANSWER("Du calme, je vais les chercher.", 99)
end
else
GIVEITEM(148,1)
GIVEITEM(1903,1)
GIVEITEM(1875,1)
SAY("J'ai le sort, l'Armour Suit, la Shelter Vest... Où est la Law Enforcer?")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(148,1)
GIVEITEM(1903,1)
SAY("Je vois le sort, l'Armour Suit, mais pas la Crahn Holy Spirit Vest!")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(148,1)
SAY("Je vois bien le sort, mais pas l'Armour Suit!")
ANSWER("Ah bon? Désolé...", 99)
end
else
SAY("Espèce de comique, tu n'as même pas le sort!")
ANSWER("Oups...", 99)
end

NODE(48)
TAKESPECIALITEMCNT(91,2,11114,1)
GIVEITEM(1924,255)
SAY("Le compte y est. Une petite minute... voilà! Cadeau! Maintenant amuse-toi bien et laisse-moi en paix, j'ai du travail!")
ENDDIALOG()
 
NODE(45)
TAKEITEM(140)
if (result == 1) then
TAKEITEM(1903)
if (result == 1) then
TAKEITEM(1875)
if (result == 1) then 
TAKEITEM(2300)
if (result == 1) then
TAKESPECIALITEMCNT(91,2,22222,1)
if (result == 1) then
TAKEITEMCNT(8101,10)
if (result ==1) then
TAKEITEMCNT(1000,20)
if (result == 1) then
SAY("Excellent! Il ne manque rien!")
ANSWER("Alors c'est bon, je peux avoir ma Power Cloak?", 49)
else
GIVEITEM(140,1)
GIVEITEM(1903,1)
GIVEITEM(1875,1)
GIVEITEM(2300,1)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVEITEM(8101)
GIVESPECIALITEM(91,2,22222)
SAY("Ecoute, je sais que c'est pas très reluisant de trouver 20 Chitines, mais c'est indispensable!")
ANSWER("Mais j'ai déjà tout le reste! D'accord, j'ai compris, j'y vais...", 99)
end
else
GIVEITEM(140,1)
GIVEITEM(1903,1)
GIVEITEM(1875,1)
GIVEITEM(2300,1)
GIVESPECIALITEM(91,2,22222)
SAY("Hé l'artiste! Et les Defunct Copbot Ethic Chips!")
ANSWER("Et merde...", 99)
end
else
GIVEITEM(140,1)
GIVEITEM(1903,1)
GIVEITEM(1875,1)
GIVEITEM(2300,1)
SAY("Et les Tech Parts du Dôme d'York? Tu pensais que c'était pour décorer?")
ANSWER("Du calme, je vais les chercher.", 99)
end
else
GIVEITEM(140,1)
GIVEITEM(1903,1)
GIVEITEM(1875,1)
SAY("J'ai le sort, l'Armour Suit, la Shelter Vest... Où est la Law Enforcer?")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(140,1)
GIVEITEM(1903,1)
SAY("Je vois le sort, l'Armour Suit, mais pas la Crahn Holy Spirit Vest!")
ANSWER("Ah bon? Pourtant je l'avais il y a une minute à peine...", 99)
end
else
GIVEITEM(140,1)
SAY("Je vois bien le sort, mais pas l'Armour Suit!")
ANSWER("Ah bon? Désolé...", 99)
end
else
SAY("Espèce de comique, tu n'as même pas le sort!")
ANSWER("Oups...", 99)
end

NODE(49)
TAKESPECIALITEMCNT(91,2,11114,1)
GIVEITEM(1928,255)
SAY("Exactement. Une petite minute... voilà! Cadeau! Maintenant amuse-toi bien et laisse-moi en paix, j'ai du travail!")
ENDDIALOG()
 
NODE(98)
SAY("On t'a pas expliqué? Le sort sert aux propriétés offensives ou défensives de l'armure!")
ANSWER("Sale fils de...", 99)

NODE(99)
SAY("Revient quand tu as tout ce qu'il faut!")
ENDDIALOG()

end