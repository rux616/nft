function DIALOG()
 
NODE(0)
      SAY("Whaaa !! Ils viennent me faire la peau!!!")
      SAY("Oh putain!! Dis � personne que tu m'as vu!!!")
      SAY("Ils me collent au cul!! Je suis foutu!!!")
      ANSWER("C'est quoi ton probl�me?",1)
      ANSWER("OK je vois. T'as pris la dose de trop, c'est �a?",2)
      ANSWER("Ca faire chier quelqu'un d'autre, sale drogu�!",3)
NODE(1)
      SAY("Tu les vois pas? L�, derri�re toi!!")
      ANSWER("Quoi? O�?",4)
NODE(2)
      SAY("Une dose de trop? J'ai l'air d'un drogu�? LA!!! DERRIERE TOI ILS APPROCHENT!!!!")
      ANSWER("Ah oui quand m�me... Dis, j'ai une question, pendant que tu es l�...",5)
NODE(3)
      SAY("ILS VONT VENIR TE CHERCHER AUSSI TU VAS VOIR!!")
      ENDDIALOG()
NODE(4)
      SAY("L�, juste derri�re toi! Dis-leur que tu m'as pas vu!")
      ANSWER("Je vois rien du tout. Tu serais pas en train de te moquer de moi? J'ai pas le temps pour tes jeux idiots.",6)
NODE(5)
      SAY("Une question? OK, mais seulement si tu leur dis que tu m'as pas vu.")
      ANSWER("Promis jur�!",7)
      ANSWER("OK, mec, c'est d'accord, je leur dirai rien.",8)
NODE(6)
      SAY("Tu crois que je te racontes des salades? Oh mec, il me faut une dose, vite!")
      ANSWER("Fais en sorte de pas rater ton overdose cette fois! Bye!",12)
NODE(7)
      SAY("OK, je te crois. Qu'est-ce que tu veux savoir?")
      ANSWER("Comment �a se fait que dans la pi�ce d'� c�t� on n'entende que la musique des PSI, et pas du tout la techno? Je comprends pas.",9)
NODE(8)
      SAY("Nan, mieux que �a. Promets-moi!")
      ANSWER("Ok, ok. Promis.",7)
NODE(9)
      SAY("Oh. C'est simple. C'est une sorte d'enchantement. Ils font comme une isolation dans la pi�ce, on entend plus que leurs dr�les de sons. Ces types sont compl�tement frapp�s, crois-moi.")
      ANSWER("Un enchantement? Ah tiens. Bon, je pense que je vais te laisser tranquille en compagnie de tes amis timbr�s. A plus.",11)
NODE(11)
      SAY("MAIS LEUR DIS PAS QUE TU M'AS VU!!!")
      ANSWER("Mais ouaiiiis te fais pas de bile, mec.",12)
NODE(12)
      SAY("Bye")
      SAY("Bye, et fais attention � toi, ils r�dent!!!")
      SAY("ILS VONT TOUS NOUS BOUFFER!!")
      ENDDIALOG()
end