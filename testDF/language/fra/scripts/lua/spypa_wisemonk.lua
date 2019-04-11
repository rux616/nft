function DIALOG()

NODE(0)
   TAKESPECIALITEMCNT(1491, 2, 11111, 1)
   if (result == 0) then
      TAKESPECIALITEMCNT(1491, 2, 11112, 1)
      if (result == 0) then
         TAKESPECIALITEMCNT(1491, 2, 11113, 1)
         if (result == 0) then
            TAKESPECIALITEMCNT(1491, 2, 11114, 1)
            if (result == 0) then
               TAKESPECIALITEMCNT(1491, 2, 11115, 1)
               if (result == 0) then
                  SAY("Salutations!")
                  SAY("Salute!")
                  SAY("Runner!")
                  ENDDIALOG()
               else
                  GIVESPECIALITEM(1491, 2, 11115)
                  SAY("Ah, je suis désolé mais je ne vais pas pouvoir t'aider!")
                  ENDDIALOG()
               end
            else
               GIVESPECIALITEM(1491, 2, 11114)
               SAY("Ah, je suis désolé mais je ne vais pas pouvoir t'aider!")
               ENDDIALOG()
            end
         else
            GIVESPECIALITEM(1491, 2, 11113)
            SAY("Ah, je suis désolé mais je ne vais pas pouvoir t'aider!")
            ENDDIALOG()
         end
      else
         GIVESPECIALITEM(1491, 2, 11113)
         SAY("Ah, te revoilà!")
         ANSWER("En effet. Alors, vous avez trouvé quelque chose?", 24)
      end
   else
      SAY("Que la bénédiction de Crahn soit sur toi et ta famille, runner!")
      ANSWER("Que Crahn te garde. J'ai besoin de ton aide, mon frère!", 1)
      ANSWER("Bonjour. J'ai une question.", 14)
   end

NODE(1)
   GIVESPECIALITEM(1491, 2, 11112)
   SAY("Parle, l'ami. Je ferai tout ce qui est en mon pouvoir pour t'aider.")
   ANSWER("Des personnes mauvaises ont commis un crime. Je voudrais leur administrer la justice qu'elles méritent!", 2)

NODE(2)
   SAY("C'est une cause qui t'honore. Comment puis-je t'aider?")
   ANSWER("Ils ont laissé un indice. Une simple phrase, qui m'a tout l'air de toucher à la religion.", 3)

NODE(3)
   SAY("Voyons cela. L'as-tu sur toi?")
   ANSWER("Bien sûr, voilà.", 5)

NODE(5)
   SAY("Hmm... 'Petit et grand, là, c'est tout un, et l'esclave y est affranchi de son maître.' Je connais cette phrase, mais je ne sais plus d'où elle vient...")
   ANSWER("Alors ça n'est pas un extrait des enseignements de Crahn?", 6)

NODE(6)
   SAY("Non, mais... Oh, Crahn vient de me donner la solution!")
   ANSWER("Je t'écoute!", 7)

NODE(7)
   SAY("Cette phrase est bien de nature religieuse, mais ne provient pas des enseignements de Crahn. Elle provient d'une ancienne religion, qui existait avant le feu rédempteur.")
   ANSWER("Continue...", 8)

NODE(8)
   SAY("D'après mes souvenirs, c'était une religion qui s'appelait 'Bible', fondée sur des écrits du nom de 'Christianisme'. A moins que ça ne soit l'inverse. Mais je me rappelle avoir lu ce livre une fois.")
   ANSWER("Et te souviens-tu du contexte de cette phrase, mon sage ami?", 9)

NODE(9)
   SAY("Si mes souvenirs sont bons, ça parlait d'un homme qui s'appelait Job. Sa foi a été mise à l'épreuve par de grandes souffrances.")
   ANSWER("Etrange, étrange indice...", 10)

NODE(10)
   SAY("Assurément! Le sens m'échappe à moi aussi. Tu n'aurais pas d'autres éléments?")
   ANSWER("Je vais voir ça. Tu ne connaîtrais pas la page et la ligne auxquelles je pourrais trouver cette citation?", 11)

NODE(11)
   SAY("Navré, mes souvenirs sont trop vagues.")
   ANSWER("C'est dommage. Mais dis-moi, est-ce que tu ne connaîtrais pas quelqu'un qui pourrait m'éclairer un peu plus?", 12)

NODE(12)
   SAY("Ca ne sera pas nécessaire. Reviens me voir un peu plus tard. Je vais contacter les frères de mon ordre, ils pourront certainement m'aider.")
   ANSWER("Merci pour ton aide si généreuse, mon ami!", 13)

NODE(13)
   SAY("Suivre la voie de la justice est un privilège. Tu n'as pas à me remercier.")
   ENDDIALOG()

NODE(14)
   GIVESPECIALITEM(1491, 2, 11113)
   SAY("Une question? Je t'écoute!")
   ANSWER("Des hackers se sont introduits dans la base de données de Tangent et ont laissé une note qui m'a tout l'air d'être de nature religieuse. Je voulais savoir si tu connaissais la phrase en question.", 15)

NODE(15)
   SAY("Montre-moi ça.")
   ANSWER("Voilà!", 17)

NODE(17)
   SAY("Hmm... 'Petit et grand, là, c'est tout un, et l'esclave y est affranchi de son maître.' Je pense que j'ai déjà vu ça, mais te dire où précisément...")
   ANSWER("Allez, fais un effort!", 18)

NODE(18)
   SAY("L'ami, je suis quelqu'un de pacifique, mais tu commences à me taper sur les nerfs. Mais je me souviens d'où vient cette phrase.")
   ANSWER("Oui?", 19)

NODE(19)
   SAY("Eh bien, avant le feu purificateur, l'ancienne culture possédait de plusieurs religions. Cet extrait fait partie des enseignements d'une de ces religions.")
   ANSWER("Et qu'est-ce que je suis censé à comprendre?", 20)

NODE(20)
   SAY("C'est extrait de l'histoire d'un homme qui s'appelait Job, et dont la foi a été mise à l'épreuve par de grands tourments.")
   ANSWER("Eh bien, les gens de l'époque étaient sacrément allumés...", 21)

NODE(21)
   SAY("Beaucoup de choses étaient très étranges à l'époque, je suis d'accord avec toi.")
   ANSWER("D'accord, mais à quoi est-ce que ça m'avance?", 22)

NODE(22)
   SAY("Je ne sais pas. Tu vas devoir trouver tout seul, je t'ai dit tout ce que je savais.")
   ANSWER("Mais bordel de...", 23)

NODE(23)
   SAY("Va-t-en, et rends-moi service, épargne-moi ton langage fleuri!")
   ENDDIALOG()

NODE(24)
   SAY("En effet. Un de mes frères a trouvé le libre - il s'appelle 'Bible', et au sujet du Christianisme, c'était le nom du rayonnage sur lequel il était rangé. Mon frère a même réussi à trouver le chapitre qui t'intéresse.")
   ANSWER("Excellentes nouvelles!", 25)

NODE(25)
   SAY("Ne te réjouis pas trop vite, mon ami, je n'aimerais pas te décevoir. Nous n'avons pas trouvé grand chose.")
   ANSWER("Je veux bien le croire, mais même les petits indices comptent.", 26)

NODE(26)
   SAY("Sans doute, sans doute... Eh bien comme je te le disais, cet extrait provient d'un passage de la Bible qui s'appelle le Livre de Job. Chapitre 3, verset 19, si ça t'intéresse.")
   ANSWER("Il y a autre chose?", 27)

NODE(27)
   SAY("Pas grand chose... Ce chapitre parle d'un homme qui a servi son dieu et qui, en raison de cela, a connu une fortune extraordinaire. Mais un jour, son dieu a décidé de le mettre à l'épreuve en le dépossédant de tout ce qui lui était cher.")
   ANSWER("Sinistre... Et qu'est-ce qui lui est arrivé?", 28)

NODE(28)
   SAY("Il a gardé la foi, et son dieu l'a récompensé au centuple.")
   ANSWER("Intéressant. Mais je me demande ce que peut signifier la phrase qui nous occupe...", 29)

NODE(29)
   SAY("Cette phrase provient d'un passage de l'histoire où Job est en conflit avec son destin, et est maudit dès le jour de sa naissance.")
   ANSWER("Je ne comprends plus rien...", 30)

NODE(30)
   SAY("Moi non plus, je t'avoue que je ne vois pas pourquoi on laisserait ce genre de phrase après avoir commis un crime. Mais peut-être... Peut-être que...")
   ANSWER("Oui, dis-moi!", 31)

NODE(31)
   SAY("La ville de Neocron, qui a été construite par Crahn il y a longtemps, possède une gigantesque base de données. Elle se trouve dans les vieux disques de Cérès. Peut-être y trouveras-tu la réponse à tes questions!")
   ANSWER("Ca, c'est une idée brillante! Comment te remercier?", 32)

NODE(32)
   SAY("A notre dernière rencontre, je t'ai déjà dit qu'il n'était pas nécessaire de me remercier. Assister la justice est un privilège, pas un service. Longue vie à toi, et que Crahn te garde!")
   ENDDIALOG()

end