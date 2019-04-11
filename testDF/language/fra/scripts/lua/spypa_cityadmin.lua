function DIALOG()

NODE(0)
   TAKESPECIALITEMCNT(1491, 2, 11113, 1)
   if (result == 0) then
      SAY("Salut!")
      SAY("Bonjour!")
      SAY("Salut � vous!")
      ENDDIALOG()
   else
      GIVESPECIALITEM(1491, 2, 11113)
      SAY("Qu'est-ce que je peux faire pour vous?")
      ANSWER("J'ai quelques questions.", 1)
   end

NODE(1)
   SAY("Sans rire, je m'en serais pas dout�. Ok, je vous �coute.")
   ANSWER("Vous avez bien une base de donn�es qui contient les archives de toutes notre connaissance, n'est-ce pas?", 2)

NODE(2)
   SAY("Evidemment, toutes les connaissances des disques de C�r�s, plus les d�couvertes qui ont �t� faites apr�s cous.")
   ANSWER("Parfait! Et je peux y acc�der?", 3)

NODE(3)
   SAY("Ah non, d�sol�. Les archives sont restreintes aux employ�s du NCPD.")
   ANSWER("Et si je vous le demande gentiment?", 4)

NODE(4)
   SAY("Je pense que vous ne m'avez pas compris! L'acc�s est interdit aux civils, �a n'est pas la peine d'insister.")
   ANSWER("Je comprends... Dites, vous ne vous ennuyez pas � faire le pied de grue comme �a toute la journ�e?", 5)

NODE(5)
   SAY("Je ne vous suis pas...")
   ANSWER("Je veux dire que... J'esp�re qu'on vous paie bien, au moins?", 6)

NODE(6)
   SAY("Tentative de corruption!")
   ANSWER("Corruption? Oh le vilain mot... Non... Je vois plut�t les choses comme �a : Vous me faites une faveur, je vous fais une faveur!", 7)

NODE(7)
   SAY("Dites, vous savez dans quel endroit vous vous trouvez, non?")
   ANSWER("Oui, mais honn�tement je m'en fiche. Alors, �a vous int�resse?", 8)

NODE(8)
   SAY("Mille creds.")
   ANSWER("Dites, vous ne pensez pas que c'est un peu...", 9)

NODE(9)
   SAY("Vous pr�f�rez que j'appelle les CopBots?")
   ANSWER("Esp�ce d'enflure! Bon, d'accord. Tenez, voil� votre fric.", 10)

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
   SAY("Pas de probl�me! Qu'est-ce que vous voulez savoir?")
   ANSWER("Faites une recherche sur le mot 'job', en limitant les r�sultats aux contexte mythologiques.", 12)

NODE(12)
   SAY("Ok, �a va prendr un peu de temps... Ca progresse... Voil�, c'est bon.")
   ANSWER("Alors, �a dit quoi?", 13)

NODE(13)
   SAY("Ceci : 'Job, �galement Hiob, du lat. Iob, personnage principal du Livre de Job dans l'Ancien Testament de la Bible. Po�me sur le maintien de la foi et de la vertu en temps difficiles. Pi�ce ma�tresse de la litt�rature de l'ancien monde. Origine de l'expression 'Pauvre comme Job'' Voil�, c'est tout.") 
   ANSWER("Hmm... Pauvre comme Job... Ca commence � se mettre en place, mon affaire.", 14)

NODE(14)
   SAY("Autre chose?")
   ANSWER("Oui. Qu'est-ce que c'est que 'lat. Iob', qu'est-ce que �a veut dire?", 15)

NODE(15)
   SAY("Aux �poques o� la Bible a �t� �crite, les gens parlaient des langues qui n'�taient m�me plus parl�es lorsque les disques de C�r�s ont �t� cr��s. La langue des disques de C�r�s n'est pas tout � fait la m�me que la n�tre aujourd'hui, pour vous donner une id�e. La Bible a �t� �crite en plusieurs langues � travers les �ges, principalement dans une langue qui s'appelait 'Latin'. Et dans cette langue, le nom de ce type, c'�tait 'Iob'.")
   ANSWER("Je comprends. Vous pouvez faire une recherche sur 'mots latins' en g�n�ral?", 16)

NODE(16)
   SAY("Une seconde... Oui, j'ai quelque chose, mais c'est courts. 'Mots de la langue latine, dont le trait caract�ristique est d'utiliser des caract�res parfois diff�rents, comme V � la place de U, ou encore I � la place de J.'")
   ANSWER("Donc si je comprends bien, 'Hiob' et 'Job' sont le m�me mot, mais � l'�poque ils �crivaient �a 'Iob', c'est bien �a?", 17)

NODE(17)
   SAY("Oui... Attendez, j'ai autre chose. 'En certaines occasions, les mots latins utilisaient une sorte de code, souvent par jeux de mots ou calculs savants.'")
   ANSWER("Int�ressant, �a. Quel genre de calculs, par exemple?", 18)

NODE(18)
   SAY("'La somme des positions associ�es aux lettres dans l'alphabet.' H�h�, c'est g�nial, cet ordinateur a vraiment r�ponse � tous.")
   ANSWER("Hmm... Des jeux de mots... Quel genre de jeux de mots?", 19)

NODE(19)
   SAY("Qu'est-ce que j'en sais? Vous avez trois mots qui sont �quivalents, Hiob, Iob et Job...")
   ANSWER("Iob et Job... Job... Job?! J'ai quelque chose!", 20)

NODE(20)
   TAKESPECIALITEMCNT(1491, 2, 11113, 1)
   GIVESPECIALITEM(1491, 2, 11114)
   SAY("Huh?")
   ANSWER("Job! Un job! Le JobCenter! C'est le m�me mot! J'ai trouv�!!", 21)

NODE(21)
   SAY("Eh bien vous m'en voyez ravi... Allez, c'est pas tout �a, faudrait peut-�tre commencer � penser � plier bagages, d'accord?")
   ANSWER("Je disparais! J'ai mon indice!", 22)

NODE(22)
   SAY("Mais pourquoi est-ce qu'il faut toujours que je tombe toujours sur des cas sociaux...")  
   ENDDIALOG()

end