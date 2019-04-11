function DIALOG()

NODE(0)
   TAKESPECIALITEMCNT(1491, 2, 11113, 1)
   if (result == 0) then
      SAY("Salut!")
      SAY("Bonjour!")
      SAY("Salut à vous!")
      ENDDIALOG()
   else
      GIVESPECIALITEM(1491, 2, 11113)
      SAY("Qu'est-ce que je peux faire pour vous?")
      ANSWER("J'ai quelques questions.", 1)
   end

NODE(1)
   SAY("Sans rire, je m'en serais pas douté. Ok, je vous écoute.")
   ANSWER("Vous avez bien une base de données qui contient les archives de toutes notre connaissance, n'est-ce pas?", 2)

NODE(2)
   SAY("Evidemment, toutes les connaissances des disques de Cérès, plus les découvertes qui ont été faites après cous.")
   ANSWER("Parfait! Et je peux y accéder?", 3)

NODE(3)
   SAY("Ah non, désolé. Les archives sont restreintes aux employés du NCPD.")
   ANSWER("Et si je vous le demande gentiment?", 4)

NODE(4)
   SAY("Je pense que vous ne m'avez pas compris! L'accès est interdit aux civils, ça n'est pas la peine d'insister.")
   ANSWER("Je comprends... Dites, vous ne vous ennuyez pas à faire le pied de grue comme ça toute la journée?", 5)

NODE(5)
   SAY("Je ne vous suis pas...")
   ANSWER("Je veux dire que... J'espère qu'on vous paie bien, au moins?", 6)

NODE(6)
   SAY("Tentative de corruption!")
   ANSWER("Corruption? Oh le vilain mot... Non... Je vois plutôt les choses comme ça : Vous me faites une faveur, je vous fais une faveur!", 7)

NODE(7)
   SAY("Dites, vous savez dans quel endroit vous vous trouvez, non?")
   ANSWER("Oui, mais honnêtement je m'en fiche. Alors, ça vous intéresse?", 8)

NODE(8)
   SAY("Mille creds.")
   ANSWER("Dites, vous ne pensez pas que c'est un peu...", 9)

NODE(9)
   SAY("Vous préférez que j'appelle les CopBots?")
   ANSWER("Espèce d'enflure! Bon, d'accord. Tenez, voilà votre fric.", 10)

NODE(10)
   TAKEMONEY(1000)
   if (result == 1) then
      SAY("Merci. C'est un plaisir de faire des affaires avec vous.")
      ANSWER("Alors, vous allez m'aider maintenant?", 11)
   else
      SAY("Bien, allez chercher l'argent, je vous attends ici.")
      ENDDIALOG()
   end

NODE(11)
   SAY("Pas de problème! Qu'est-ce que vous voulez savoir?")
   ANSWER("Faites une recherche sur le mot 'job', en limitant les résultats aux contexte mythologiques.", 12)

NODE(12)
   SAY("Ok, ça va prendr un peu de temps... Ca progresse... Voilà, c'est bon.")
   ANSWER("Alors, ça dit quoi?", 13)

NODE(13)
   SAY("Ceci : 'Job, également Hiob, du lat. Iob, personnage principal du Livre de Job dans l'Ancien Testament de la Bible. Poème sur le maintien de la foi et de la vertu en temps difficiles. Pièce maîtresse de la littérature de l'ancien monde. Origine de l'expression 'Pauvre comme Job'' Voilà, c'est tout.") 
   ANSWER("Hmm... Pauvre comme Job... Ca commence à se mettre en place, mon affaire.", 14)

NODE(14)
   SAY("Autre chose?")
   ANSWER("Oui. Qu'est-ce que c'est que 'lat. Iob', qu'est-ce que ça veut dire?", 15)

NODE(15)
   SAY("Aux époques où la Bible a été écrite, les gens parlaient des langues qui n'étaient même plus parlées lorsque les disques de Cérès ont été créés. La langue des disques de Cérès n'est pas tout à fait la même que la nôtre aujourd'hui, pour vous donner une idée. La Bible a été écrite en plusieurs langues à travers les âges, principalement dans une langue qui s'appelait 'Latin'. Et dans cette langue, le nom de ce type, c'était 'Iob'.")
   ANSWER("Je comprends. Vous pouvez faire une recherche sur 'mots latins' en général?", 16)

NODE(16)
   SAY("Une seconde... Oui, j'ai quelque chose, mais c'est courts. 'Mots de la langue latine, dont le trait caractéristique est d'utiliser des caractères parfois différents, comme V à la place de U, ou encore I à la place de J.'")
   ANSWER("Donc si je comprends bien, 'Hiob' et 'Job' sont le même mot, mais à l'époque ils écrivaient ça 'Iob', c'est bien ça?", 17)

NODE(17)
   SAY("Oui... Attendez, j'ai autre chose. 'En certaines occasions, les mots latins utilisaient une sorte de code, souvent par jeux de mots ou calculs savants.'")
   ANSWER("Intéressant, ça. Quel genre de calculs, par exemple?", 18)

NODE(18)
   SAY("'La somme des positions associées aux lettres dans l'alphabet.' Héhé, c'est génial, cet ordinateur a vraiment réponse à tous.")
   ANSWER("Hmm... Des jeux de mots... Quel genre de jeux de mots?", 19)

NODE(19)
   SAY("Qu'est-ce que j'en sais? Vous avez trois mots qui sont équivalents, Hiob, Iob et Job...")
   ANSWER("Iob et Job... Job... Job?! J'ai quelque chose!", 20)

NODE(20)
   TAKESPECIALITEMCNT(1491, 2, 11113, 1)
   GIVESPECIALITEM(1491, 2, 11114)
   SAY("Huh?")
   ANSWER("Job! Un job! Le JobCenter! C'est le même mot! J'ai trouvé!!", 21)

NODE(21)
   SAY("Eh bien vous m'en voyez ravi... Allez, c'est pas tout ça, faudrait peut-être commencer à penser à plier bagages, d'accord?")
   ANSWER("Je disparais! J'ai mon indice!", 22)

NODE(22)
   SAY("Mais pourquoi est-ce qu'il faut toujours que je tombe toujours sur des cas sociaux...")  
   ENDDIALOG()

end