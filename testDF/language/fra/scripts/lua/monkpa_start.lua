function DIALOG()



NODE(0)

  GETFACTIONSYMPATHY(10)

  if (result > 29) then

    SAY("Hep, toi! Oui, toi!")

    SAY("Tss! Par ici!")

    SAY("Approche une seconde!")

    ANSWER("Hmm? Qu'est-ce que tu veux?", 1)

    ANSWER("Fiche-moi la paix!", 2)

  else

    GETFACTIONSYMPATHY(6)

    if (result > 49) then

    SAY("Hep, toi! Oui, toi!")

    SAY("Tss! Par ici!")

    SAY("Approche une seconde!")

    ANSWER("Hmm? Qu'est-ce que tu veux?", 1)

    ANSWER("Fiche-moi la paix!", 2)

    else

      GETFACTIONSYMPATHY(9)

      if (result > 49) then

    SAY("Hep, toi! Oui, toi!")

    SAY("Tss! Par ici!")

    SAY("Approche une seconde!")

    ANSWER("Hmm? Qu'est-ce que tu veux?", 1)

    ANSWER("Fiche-moi la paix!", 2)

      else

        GETFACTIONSYMPATHY(15)

        if (result > 49) then

    SAY("Hep, toi! Oui, toi!")

    SAY("Tss! Par ici!")

    SAY("Approche une seconde!")

    ANSWER("Hmm? Qu'est-ce que tu veux?", 1)

    ANSWER("Fiche-moi la paix!", 2)

        else

          SAY("Salut!")

          SAY("Salut...")

          SAY("Salut toi...")

          ENDDIALOG()

        end

      end

    end

  end



NODE(1)

  SAY("Ca va de pire en pire! Reza devient de plus en plus violent, on nous traque partout o� on va... Je sens qu'on va devoir quitter la ville!")

  ANSWER("Je sais, c'est affreux. Mais qu'est-ce qu'on peut faire?", 2)

  ANSWER("Oui je sais, �a me fait de la peine, mais il faut que j'y aille!", 98)

  ANSWER("Mais je me fiche de tes petits probl�mes, moi!", 99)



NODE(2)

  SAY("Pas grand chose. Il nous faut de nouveaux alli�s pour nous aider. On a de bonnes relations avec le D�me d'York, et un jour on pourra peut-�tre s'en faire des alli�s. Ou bien les contr�ler, comme on l'a fait ici il y a des ann�es.")

  ANSWER("D'accord, mais �a m'a l'air un peu lointain, tout �a. Qu'est-ce qu'on peut faire MAINTENANT?", 3)

  ANSWER("Encore avec vos r�ves de domination du monde? Le pass� ne vous a donc rien appris?!", 99)



NODE(3)

  SAY("Euh... Attendre et esp�rer, je pense. Et se pr�parer pour le combat qui approche.")

  ANSWER("Et comment? C'est pas les moyens qui nous manquent...", 4)



NODE(4)

  SAY("C'est vrai, mais �a pourrait �tre mieux. C'est pour �a qu'on a d�velopp� les Power Cloaks.")

  ANSWER("Qu'est-ce que c'est que ce truc?", 5)



NODE(5)

  SAY("Des combinaisons sp�ciales, d�velopp�es par nos chercheurs. Elles nous aident � nous concentrer, et en m�me temps elles nous offrent une bonne protection en combat.")

  ANSWER("Ca m'a l'air tr�s int�ressant, tout �a. Je peux en avoir une?", 6)



NODE(6)

  SAY("Il faut demander � notre sp�cialiste. Il tra�ne souvent du c�t� de l'�glise des Terres Br�l�es. Il pourra t'en faire une. Mais je pense qu'il aura besoin de certains composants pour �a.")

  ANSWER("Je vois. Quel genre de composants?", 10)



NODE(10)

  SAY("Ca d�pend de ce que tu veux. Il y en a quatre versions en tout. La premi�re est assez facile � construire, mais les avantages ne sont pas �normes. La quatri�me, c'est la plus difficile, mais les avantages sont fabuleux.")

  ANSWER("Ah. Admettons que je veuille la premi�re, qu'est-ce qu'il me faut?", 11)

  ANSWER("Compris. Et si je veux la deuxi�me?", 12)

  ANSWER("D'accord. Je pense que je vais essayer la troisi�me. De quoi j'ai besoin?", 13)

  ANSWER("Allez, la quatri�me pourrait m'int�resser. Il faut quoi pour la fabriquer?", 14)

  ANSWER("Et tu t'imagines que je vais te ramener tout �a? Des clous, ouais!", 98)



NODE(11)

  SAY("La base, c'est une Armour Suit Tangent v X-13. Il faudra aussi une Crahn Shelter Vest. Et le troisi�me �l�ment est une puce Law Enforcer.")

  ANSWER("Une Law Enforcer? Une Armour Suit? Et o� est-ce que je peux trouver �a, dis-moi?", 15)



NODE(12)

  SAY("D'abord, il faut une Heavy Armour Suit Tangent x X-13a et une Crahn Holy Shelter Vest. Ensuite, il faut une puce Law Enforcer et 20 Chitin.")

  ANSWER("A la bonne heure... Heu, attendez... 20 Chitin? Une Law Enforcer? Une Armour Suit? Ca va pas la t�te?", 16)



NODE(13)

  SAY("Ca va �tre assez compliqu�. Il faut une Power Suit Tangent v X-256, une Crahn Spirit Vest, une puce Law Enforcer, 20 Chitin, et des Tech Parts provenant du D�me d'York!")

  ANSWER("Esp�ce d'enf... Et o� est-ce que je trouve �a, moi? Et puis les 20 Chitin, �a te servira � quoi, d'abord?", 17)



NODE(14)

  SAY("Si tu veux celle-l�, tu vas avoir quelques difficult�s � tout r�unir. Il va te falloir une Ultimate Power Suit Tangent v X-256a, une Crahn Holy Spirit Vest, une puce Law Enforcer, 20 Chitin, des tech parts du D�me d'York, et 10 Defunct Copbot Ethic Chips!")

  ANSWER("Mais ouais, bien s�r. 20 Chitin? 10 Ethic Chips? Pour une combinaison? Ca se trouve o�, toutes ces merveilles?", 18)



NODE(15)

  SAY("La puce Law Enforcer contient des dispositifs tr�s importants pour fabriquer cette Power Cloak. Tu devras trouver quelqu'un qui veut bien te vendre la sienne... Si tu n'as plus la tienne, �videmment. Pour l'Armour Suit, tu trouveras ce que tu cherches � la Base Militaire.")

  ANSWER("Je vais bien m'amuser...", 20)



NODE(16)

  SAY("La Power Cloak est bas�e sur une Armour Suit... Tu devrais trouver �a � la Base Militaire. Si tu n'as pas conserv� a Law Enforcer, trouve quelqu'un qui te la vendra. Pour les chitines, le Roi des Egouts de Plaza 4 devrait pouvoir t'en vendre un peu.")

  ANSWER("Le Roi des Egouts... J'aurai vraiment tout vu.", 21)



NODE(17)

  SAY("La chitine est un mat�riau r�sistant contre les attaques �nerg�tiques. Il en faut pour fabriquer cette combinaison. Tu trouveras certainement quelqu'un qui acceptera de te vendre sa Law Enforcer. Pour la chitine, c'est pas un probl�me, le Roi des Egouts de Plaza 4 en aura certainement � te vendre. Il y a aussi quelqu'un du D�me d'York qui t'attend aux portes, en K 14, et qui devrait avoir des composants pour toi.")

  ANSWER("Longue journ�e en perspective... Bien, je m'y mets.", 22)



NODE(18)

  SAY("La chitine, tu la trouveras aupr�s du Roi des Egouts de Plaza 4, il en vend. Pour la Law Enforcer... Trouve quelqu'un qui accepte de te vendre la sienne. On sait jamais. Pour les Tech parts, tu peux en trouver aupr�s d'un contact aux portes du D�me, en K 14. Et pour les Ethic Chips, il y a un type qui les r�cup�re pr�s de Gaya Mine, va faire un tour l�-bas.")

  ANSWER("Bon, je vais aller tenter ma chance.", 23)



NODE(20)

  GIVESPECIALITEM(91,2,11111)

  SAY("J'ai jamais dit que �a serait facile. Tiens, voil� les documents. Si quelqu'un te pose des questions, tu lui montres �a. Notre sp�cialiste va te les r�clamer.")

  ANSWER("Ok merci. C'est parti!", 97)



NODE(21)

  GIVESPECIALITEM(91,2,11112)

  SAY("J'ai jamais dit que �a serait facile. Tiens, voil� les documents. Si quelqu'un te pose des questions, tu lui montres �a. Notre sp�cialiste va te les r�clamer.")

  ANSWER("Ok merci. C'est parti!", 97)



NODE(22)

  GIVESPECIALITEM(91,2,11113)

  SAY("J'ai jamais dit que �a serait facile. Tiens, voil� les documents. Si quelqu'un te pose des questions, tu lui montres �a. Notre sp�cialiste va te les r�clamer.")

  ANSWER("Ok merci. C'est parti!", 97)



NODE(23)

  GIVESPECIALITEM(91,2,11114)

  SAY("J'ai jamais dit que �a serait facile. Tiens, voil� les documents. Si quelqu'un te pose des questions, tu lui montres �a. Notre sp�cialiste va te les r�clamer.")

  ANSWER("Ok merci. C'est parti!", 97)



NODE(97)

  SAY("Bonne chance!")

  ENDDIALOG()



NODE(98)

  SAY("Si tu le dis...")

  SAY("Tant pis pour toi...")

  SAY("Alors casse-toi...")

  ENDDIALOG()



NODE(99)

  SAY("Offense! H�r�sie! Crahn va t'�craser comme un cafard!")

  SAY("Hors de ma vue, m�cr�ant...")

  ENDDIALOG()



end