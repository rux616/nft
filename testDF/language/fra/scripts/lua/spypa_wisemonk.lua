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
                  SAY("Ah, je suis d�sol� mais je ne vais pas pouvoir t'aider!")
                  ENDDIALOG()
               end
            else
               GIVESPECIALITEM(1491, 2, 11114)
               SAY("Ah, je suis d�sol� mais je ne vais pas pouvoir t'aider!")
               ENDDIALOG()
            end
         else
            GIVESPECIALITEM(1491, 2, 11113)
            SAY("Ah, je suis d�sol� mais je ne vais pas pouvoir t'aider!")
            ENDDIALOG()
         end
      else
         GIVESPECIALITEM(1491, 2, 11113)
         SAY("Ah, te revoil�!")
         ANSWER("En effet. Alors, vous avez trouv� quelque chose?", 24)
      end
   else
      SAY("Que la b�n�diction de Crahn soit sur toi et ta famille, runner!")
      ANSWER("Que Crahn te garde. J'ai besoin de ton aide, mon fr�re!", 1)
      ANSWER("Bonjour. J'ai une question.", 14)
   end

NODE(1)
   GIVESPECIALITEM(1491, 2, 11112)
   SAY("Parle, l'ami. Je ferai tout ce qui est en mon pouvoir pour t'aider.")
   ANSWER("Des personnes mauvaises ont commis un crime. Je voudrais leur administrer la justice qu'elles m�ritent!", 2)

NODE(2)
   SAY("C'est une cause qui t'honore. Comment puis-je t'aider?")
   ANSWER("Ils ont laiss� un indice. Une simple phrase, qui m'a tout l'air de toucher � la religion.", 3)

NODE(3)
   SAY("Voyons cela. L'as-tu sur toi?")
   ANSWER("Bien s�r, voil�.", 5)

NODE(5)
   SAY("Hmm... 'Petit et grand, l�, c'est tout un, et l'esclave y est affranchi de son ma�tre.' Je connais cette phrase, mais je ne sais plus d'o� elle vient...")
   ANSWER("Alors �a n'est pas un extrait des enseignements de Crahn?", 6)

NODE(6)
   SAY("Non, mais... Oh, Crahn vient de me donner la solution!")
   ANSWER("Je t'�coute!", 7)

NODE(7)
   SAY("Cette phrase est bien de nature religieuse, mais ne provient pas des enseignements de Crahn. Elle provient d'une ancienne religion, qui existait avant le feu r�dempteur.")
   ANSWER("Continue...", 8)

NODE(8)
   SAY("D'apr�s mes souvenirs, c'�tait une religion qui s'appelait 'Bible', fond�e sur des �crits du nom de 'Christianisme'. A moins que �a ne soit l'inverse. Mais je me rappelle avoir lu ce livre une fois.")
   ANSWER("Et te souviens-tu du contexte de cette phrase, mon sage ami?", 9)

NODE(9)
   SAY("Si mes souvenirs sont bons, �a parlait d'un homme qui s'appelait Job. Sa foi a �t� mise � l'�preuve par de grandes souffrances.")
   ANSWER("Etrange, �trange indice...", 10)

NODE(10)
   SAY("Assur�ment! Le sens m'�chappe � moi aussi. Tu n'aurais pas d'autres �l�ments?")
   ANSWER("Je vais voir �a. Tu ne conna�trais pas la page et la ligne auxquelles je pourrais trouver cette citation?", 11)

NODE(11)
   SAY("Navr�, mes souvenirs sont trop vagues.")
   ANSWER("C'est dommage. Mais dis-moi, est-ce que tu ne conna�trais pas quelqu'un qui pourrait m'�clairer un peu plus?", 12)

NODE(12)
   SAY("Ca ne sera pas n�cessaire. Reviens me voir un peu plus tard. Je vais contacter les fr�res de mon ordre, ils pourront certainement m'aider.")
   ANSWER("Merci pour ton aide si g�n�reuse, mon ami!", 13)

NODE(13)
   SAY("Suivre la voie de la justice est un privil�ge. Tu n'as pas � me remercier.")
   ENDDIALOG()

NODE(14)
   GIVESPECIALITEM(1491, 2, 11113)
   SAY("Une question? Je t'�coute!")
   ANSWER("Des hackers se sont introduits dans la base de donn�es de Tangent et ont laiss� une note qui m'a tout l'air d'�tre de nature religieuse. Je voulais savoir si tu connaissais la phrase en question.", 15)

NODE(15)
   SAY("Montre-moi �a.")
   ANSWER("Voil�!", 17)

NODE(17)
   SAY("Hmm... 'Petit et grand, l�, c'est tout un, et l'esclave y est affranchi de son ma�tre.' Je pense que j'ai d�j� vu �a, mais te dire o� pr�cis�ment...")
   ANSWER("Allez, fais un effort!", 18)

NODE(18)
   SAY("L'ami, je suis quelqu'un de pacifique, mais tu commences � me taper sur les nerfs. Mais je me souviens d'o� vient cette phrase.")
   ANSWER("Oui?", 19)

NODE(19)
   SAY("Eh bien, avant le feu purificateur, l'ancienne culture poss�dait de plusieurs religions. Cet extrait fait partie des enseignements d'une de ces religions.")
   ANSWER("Et qu'est-ce que je suis cens� � comprendre?", 20)

NODE(20)
   SAY("C'est extrait de l'histoire d'un homme qui s'appelait Job, et dont la foi a �t� mise � l'�preuve par de grands tourments.")
   ANSWER("Eh bien, les gens de l'�poque �taient sacr�ment allum�s...", 21)

NODE(21)
   SAY("Beaucoup de choses �taient tr�s �tranges � l'�poque, je suis d'accord avec toi.")
   ANSWER("D'accord, mais � quoi est-ce que �a m'avance?", 22)

NODE(22)
   SAY("Je ne sais pas. Tu vas devoir trouver tout seul, je t'ai dit tout ce que je savais.")
   ANSWER("Mais bordel de...", 23)

NODE(23)
   SAY("Va-t-en, et rends-moi service, �pargne-moi ton langage fleuri!")
   ENDDIALOG()

NODE(24)
   SAY("En effet. Un de mes fr�res a trouv� le libre - il s'appelle 'Bible', et au sujet du Christianisme, c'�tait le nom du rayonnage sur lequel il �tait rang�. Mon fr�re a m�me r�ussi � trouver le chapitre qui t'int�resse.")
   ANSWER("Excellentes nouvelles!", 25)

NODE(25)
   SAY("Ne te r�jouis pas trop vite, mon ami, je n'aimerais pas te d�cevoir. Nous n'avons pas trouv� grand chose.")
   ANSWER("Je veux bien le croire, mais m�me les petits indices comptent.", 26)

NODE(26)
   SAY("Sans doute, sans doute... Eh bien comme je te le disais, cet extrait provient d'un passage de la Bible qui s'appelle le Livre de Job. Chapitre 3, verset 19, si �a t'int�resse.")
   ANSWER("Il y a autre chose?", 27)

NODE(27)
   SAY("Pas grand chose... Ce chapitre parle d'un homme qui a servi son dieu et qui, en raison de cela, a connu une fortune extraordinaire. Mais un jour, son dieu a d�cid� de le mettre � l'�preuve en le d�poss�dant de tout ce qui lui �tait cher.")
   ANSWER("Sinistre... Et qu'est-ce qui lui est arriv�?", 28)

NODE(28)
   SAY("Il a gard� la foi, et son dieu l'a r�compens� au centuple.")
   ANSWER("Int�ressant. Mais je me demande ce que peut signifier la phrase qui nous occupe...", 29)

NODE(29)
   SAY("Cette phrase provient d'un passage de l'histoire o� Job est en conflit avec son destin, et est maudit d�s le jour de sa naissance.")
   ANSWER("Je ne comprends plus rien...", 30)

NODE(30)
   SAY("Moi non plus, je t'avoue que je ne vois pas pourquoi on laisserait ce genre de phrase apr�s avoir commis un crime. Mais peut-�tre... Peut-�tre que...")
   ANSWER("Oui, dis-moi!", 31)

NODE(31)
   SAY("La ville de Neocron, qui a �t� construite par Crahn il y a longtemps, poss�de une gigantesque base de donn�es. Elle se trouve dans les vieux disques de C�r�s. Peut-�tre y trouveras-tu la r�ponse � tes questions!")
   ANSWER("Ca, c'est une id�e brillante! Comment te remercier?", 32)

NODE(32)
   SAY("A notre derni�re rencontre, je t'ai d�j� dit qu'il n'�tait pas n�cessaire de me remercier. Assister la justice est un privil�ge, pas un service. Longue vie � toi, et que Crahn te garde!")
   ENDDIALOG()

end