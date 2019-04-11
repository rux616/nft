function DIALOG()

NODE(0)
  SAY("Qu'est-ce que tu fais dans le coin? C'est dangereux ici, faut pas rester là!")
  SAY("Si tu tiens à ta vie, je te conseille de décamper vite fait. Dans cinq minutes, ça va chier dans le ventilo!")
  SAY("Le prends pas mal, mais tu devrais pas traîner là. C'est pas un endroit pour toi.")
  ANSWER("Du calme, quelqu'un m'envoie.", 1)
  ANSWER("Pourquoi? Qu'est-ce qui se passe ici?", 50)
  ANSWER("Pas la peine de me le dire deux fois, je m'en vais!", 99)

NODE(1)
  SAY("Quoi?")
  ANSWER("C'est un Moine PSI qui m'envoie. J'ai besoin de Defunct Copbot Ethic Chips. Il m'a donné ces documents à te montrer...", 2)

NODE(2)
   TAKESPECIALITEMCNT(91,2,11111,1)
   if (result == 1) then
      GIVESPECIALITEM(91,2,11111)
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
      SAY("*hausse les épaules* Ouais, j'en ai quelques unes. Tiens. Maintenant fais-moi plaisir, décampe, je veux pas m'attirer d'emmerdes!")
      ENDDIALOG()
   else
      TAKESPECIALITEMCNT(91,2,11112,1)
      if (result == 1) then
         GIVESPECIALITEM(91,2,11112)
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
      SAY("*hausse les épaules* Ouais, j'en ai quelques unes. Tiens. Maintenant fais-moi plaisir, décampe, je veux pas m'attirer d'emmerdes!")
         ENDDIALOG()
      else
         TAKESPECIALITEMCNT(91,2,11113,1)
         if (result == 1) then
            GIVESPECIALITEM(91,2,11113)
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
      SAY("*hausse les épaules* Ouais, j'en ai quelques unes. Tiens. Maintenant fais-moi plaisir, décampe, je veux pas m'attirer d'emmerdes!")
            ENDDIALOG()
         else
            TAKESPECIALITEMCNT(91,2,11114,1)
            if (result == 1) then
               GIVESPECIALITEM(91,2,11114)
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
      SAY("*hausse les épaules* Ouais, j'en ai quelques unes. Tiens. Maintenant fais-moi plaisir, décampe, je veux pas m'attirer d'emmerdes!")
               ENDDIALOG()
            else
               SAY("Haha, t'es comique, toi! Pendant une seconde j'ai failli tout gober! Allez, va-t-en, j'ai pas le temps de faire joujou.")
               ENDDIALOG()
            end
         end
      end
   end

NODE(50)
  SAY("C'est la mine de Gaya! Les Moines PSI utilisaient des gens pour creuser ici, du temps où ils dirigeaient Neocron. Mais apparemment, ce qu'ils en ressortaient avait de sales effets secondaires!")
  ANSWER("Quel genre d'effets secondaires?", 51)

NODE(51)
  SAY("Ben en fait, il suffisait qu'ils amènent une machine ici pour qu'elle se mette à péter un câble. Les robots chargés de l'extraction sont devenus complètement frappés. Ca s'est passé d'un seul coup. Les gens étaient là, en train de creuser tranquillement, et d'un seul coup PAF! Ca a commencé à déconner de partout.")
  ANSWER("Oh. Sinistre.", 52)

NODE(52)
  SAY("Tu l'as dit bouffi. Reza a pas voulu le croire, le malin. Il a envoyé des Copbots vérifier la zone. Et puis d'un seul coup il a perdu le contact avec ses Copbots chéris. Alors il a envoyé des STORM Bots, mais y sont pas revenus non plus. Alors il a envoyé des humains, et ils se sont tous fait buter, il y a juste un gus qui a eu le temps de dire que des Copbots les shootaient, et puis il est mort.")
  ANSWER("Intéressant. Des Moines PSI, tu dis... Intéressant, parce que justement c'est un Moine PSI qui m'envoie!", 1)

NODE(99)
  SAY("Bien.")
  SAY("Ok.")
  ENDDIALOG()

end