function DIALOG()

NODE(0)
  SAY("Qui es-tu?")
  SAY("Qu'est-ce que tu fais ici?")
  SAY("Qu'est-ce que tu veux?")
  ANSWER("C'est un moine de Crahn qui m'envoie. Je viens prendre des tech parts!", 1)
  ANSWER("Heu... Ca n'est pas l'apothicaire? J'ai dû me tromper d'endroit!", 99)

NODE(1)
  SAY("Ah tiens. Un moine de Crahn. Et pourquoi je te croirais?")
  ANSWER("Il m'a donné ces documents, et m'a demandé de te les montrer!", 2)
  ANSWER("Lis dans mon regard, tu verras que je ne mens pas.", 99)

NODE(2)
   TAKESPECIALITEMCNT(91,2,11111,1)
   if (result == 1) then
      GIVESPECIALITEM(91,2,11111)
      GIVESPECIALITEM(91,2,22222)
      SAY("Voyons ça... D'accord, ça m'a l'air correct. Tiens, reprends-les. Et voici les composants. Maintenant décampe avant qu'on nous voie!")
      ENDDIALOG()
   else
      TAKESPECIALITEMCNT(91,2,11112,1)
      if (result == 1) then
         GIVESPECIALITEM(91,2,11112)
         GIVESPECIALITEM(91,2,22222)
      SAY("Voyons ça... D'accord, ça m'a l'air correct. Tiens, reprends-les. Et voici les composants. Maintenant décampe avant qu'on nous voie!")
         ENDDIALOG()
      else
         TAKESPECIALITEMCNT(91,2,11113,1)
         if (result == 1) then
            GIVESPECIALITEM(91,2,11113)
            GIVESPECIALITEM(91,2,22222)
      SAY("Voyons ça... D'accord, ça m'a l'air correct. Tiens, reprends-les. Et voici les composants. Maintenant décampe avant qu'on nous voie!")
            ENDDIALOG()
         else
            TAKESPECIALITEMCNT(91,2,11114,1)
            if (result == 1) then
               GIVESPECIALITEM(91,2,11114)
               GIVESPECIALITEM(91,2,22222)
      SAY("Voyons ça... D'accord, ça m'a l'air correct. Tiens, reprends-les. Et voici les composants. Maintenant décampe avant qu'on nous voie!")
               ENDDIALOG()
            else
               SAY("Tu joues à quoi, là? Allez, dégage!")
               ENDDIALOG()
            end
         end
      end
   end

NODE(99)
  SAY("Très marrant. Espèce de clown! Allez dégage.")
  SAY("Haa haa. Je rigole. Je suis mort de rire. Dégage.")
  ENDDIALOG()

end