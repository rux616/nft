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

  SAY("Ca va de pire en pire! Reza devient de plus en plus violent, on nous traque partout où on va... Je sens qu'on va devoir quitter la ville!")

  ANSWER("Je sais, c'est affreux. Mais qu'est-ce qu'on peut faire?", 2)

  ANSWER("Oui je sais, ça me fait de la peine, mais il faut que j'y aille!", 98)

  ANSWER("Mais je me fiche de tes petits problèmes, moi!", 99)



NODE(2)

  SAY("Pas grand chose. Il nous faut de nouveaux alliés pour nous aider. On a de bonnes relations avec le Dôme d'York, et un jour on pourra peut-être s'en faire des alliés. Ou bien les contrôler, comme on l'a fait ici il y a des années.")

  ANSWER("D'accord, mais ça m'a l'air un peu lointain, tout ça. Qu'est-ce qu'on peut faire MAINTENANT?", 3)

  ANSWER("Encore avec vos rêves de domination du monde? Le passé ne vous a donc rien appris?!", 99)



NODE(3)

  SAY("Euh... Attendre et espérer, je pense. Et se préparer pour le combat qui approche.")

  ANSWER("Et comment? C'est pas les moyens qui nous manquent...", 4)



NODE(4)

  SAY("C'est vrai, mais ça pourrait être mieux. C'est pour ça qu'on a développé les Power Cloaks.")

  ANSWER("Qu'est-ce que c'est que ce truc?", 5)



NODE(5)

  SAY("Des combinaisons spéciales, développées par nos chercheurs. Elles nous aident à nous concentrer, et en même temps elles nous offrent une bonne protection en combat.")

  ANSWER("Ca m'a l'air très intéressant, tout ça. Je peux en avoir une?", 6)



NODE(6)

  SAY("Il faut demander à notre spécialiste. Il traîne souvent du côté de l'église des Terres Brûlées. Il pourra t'en faire une. Mais je pense qu'il aura besoin de certains composants pour ça.")

  ANSWER("Je vois. Quel genre de composants?", 10)



NODE(10)

  SAY("Ca dépend de ce que tu veux. Il y en a quatre versions en tout. La première est assez facile à construire, mais les avantages ne sont pas énormes. La quatrième, c'est la plus difficile, mais les avantages sont fabuleux.")

  ANSWER("Ah. Admettons que je veuille la première, qu'est-ce qu'il me faut?", 11)

  ANSWER("Compris. Et si je veux la deuxième?", 12)

  ANSWER("D'accord. Je pense que je vais essayer la troisième. De quoi j'ai besoin?", 13)

  ANSWER("Allez, la quatrième pourrait m'intéresser. Il faut quoi pour la fabriquer?", 14)

  ANSWER("Et tu t'imagines que je vais te ramener tout ça? Des clous, ouais!", 98)



NODE(11)

  SAY("La base, c'est une Armour Suit Tangent v X-13. Il faudra aussi une Crahn Shelter Vest. Et le troisième élément est une puce Law Enforcer.")

  ANSWER("Une Law Enforcer? Une Armour Suit? Et où est-ce que je peux trouver ça, dis-moi?", 15)



NODE(12)

  SAY("D'abord, il faut une Heavy Armour Suit Tangent x X-13a et une Crahn Holy Shelter Vest. Ensuite, il faut une puce Law Enforcer et 20 Chitin.")

  ANSWER("A la bonne heure... Heu, attendez... 20 Chitin? Une Law Enforcer? Une Armour Suit? Ca va pas la tête?", 16)



NODE(13)

  SAY("Ca va être assez compliqué. Il faut une Power Suit Tangent v X-256, une Crahn Spirit Vest, une puce Law Enforcer, 20 Chitin, et des Tech Parts provenant du Dôme d'York!")

  ANSWER("Espèce d'enf... Et où est-ce que je trouve ça, moi? Et puis les 20 Chitin, ça te servira à quoi, d'abord?", 17)



NODE(14)

  SAY("Si tu veux celle-là, tu vas avoir quelques difficultés à tout réunir. Il va te falloir une Ultimate Power Suit Tangent v X-256a, une Crahn Holy Spirit Vest, une puce Law Enforcer, 20 Chitin, des tech parts du Dôme d'York, et 10 Defunct Copbot Ethic Chips!")

  ANSWER("Mais ouais, bien sûr. 20 Chitin? 10 Ethic Chips? Pour une combinaison? Ca se trouve où, toutes ces merveilles?", 18)



NODE(15)

  SAY("La puce Law Enforcer contient des dispositifs très importants pour fabriquer cette Power Cloak. Tu devras trouver quelqu'un qui veut bien te vendre la sienne... Si tu n'as plus la tienne, évidemment. Pour l'Armour Suit, tu trouveras ce que tu cherches à la Base Militaire.")

  ANSWER("Je vais bien m'amuser...", 20)



NODE(16)

  SAY("La Power Cloak est basée sur une Armour Suit... Tu devrais trouver ça à la Base Militaire. Si tu n'as pas conservé a Law Enforcer, trouve quelqu'un qui te la vendra. Pour les chitines, le Roi des Egouts de Plaza 4 devrait pouvoir t'en vendre un peu.")

  ANSWER("Le Roi des Egouts... J'aurai vraiment tout vu.", 21)



NODE(17)

  SAY("La chitine est un matériau résistant contre les attaques énergétiques. Il en faut pour fabriquer cette combinaison. Tu trouveras certainement quelqu'un qui acceptera de te vendre sa Law Enforcer. Pour la chitine, c'est pas un problème, le Roi des Egouts de Plaza 4 en aura certainement à te vendre. Il y a aussi quelqu'un du Dôme d'York qui t'attend aux portes, en K 14, et qui devrait avoir des composants pour toi.")

  ANSWER("Longue journée en perspective... Bien, je m'y mets.", 22)



NODE(18)

  SAY("La chitine, tu la trouveras auprès du Roi des Egouts de Plaza 4, il en vend. Pour la Law Enforcer... Trouve quelqu'un qui accepte de te vendre la sienne. On sait jamais. Pour les Tech parts, tu peux en trouver auprès d'un contact aux portes du Dôme, en K 14. Et pour les Ethic Chips, il y a un type qui les récupère près de Gaya Mine, va faire un tour là-bas.")

  ANSWER("Bon, je vais aller tenter ma chance.", 23)



NODE(20)

  GIVESPECIALITEM(91,2,11111)

  SAY("J'ai jamais dit que ça serait facile. Tiens, voilà les documents. Si quelqu'un te pose des questions, tu lui montres ça. Notre spécialiste va te les réclamer.")

  ANSWER("Ok merci. C'est parti!", 97)



NODE(21)

  GIVESPECIALITEM(91,2,11112)

  SAY("J'ai jamais dit que ça serait facile. Tiens, voilà les documents. Si quelqu'un te pose des questions, tu lui montres ça. Notre spécialiste va te les réclamer.")

  ANSWER("Ok merci. C'est parti!", 97)



NODE(22)

  GIVESPECIALITEM(91,2,11113)

  SAY("J'ai jamais dit que ça serait facile. Tiens, voilà les documents. Si quelqu'un te pose des questions, tu lui montres ça. Notre spécialiste va te les réclamer.")

  ANSWER("Ok merci. C'est parti!", 97)



NODE(23)

  GIVESPECIALITEM(91,2,11114)

  SAY("J'ai jamais dit que ça serait facile. Tiens, voilà les documents. Si quelqu'un te pose des questions, tu lui montres ça. Notre spécialiste va te les réclamer.")

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

  SAY("Offense! Hérésie! Crahn va t'écraser comme un cafard!")

  SAY("Hors de ma vue, mécréant...")

  ENDDIALOG()



end