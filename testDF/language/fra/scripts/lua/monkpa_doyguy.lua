function DIALOG()

NODE(0)
  SAY("Qui es-tu?")
  SAY("Qu'est-ce que tu fais ici?")
  SAY("Qu'est-ce que tu veux?")
  ANSWER("C'est un moine de Crahn qui m'envoie. Je viens prendre des tech parts!", 1)
  ANSWER("Heu... Ca n'est pas l'apothicaire? J'ai d� me tromper d'endroit!", 99)

NODE(1)
  SAY("Ah tiens. Un moine de Crahn. Et pourquoi je te croirais?")
  ANSWER("Il m'a donn� ces documents, et m'a demand� de te les montrer!", 2)
  ANSWER("Lis dans mon regard, tu verras que je ne mens pas.", 99)

NODE(2)
   TAKESPECIALITEMCNT(91,2,11111,1)
   if (result == 1) then
      GIVESPECIALITEM(91,2,11111)
      GIVESPECIALITEM(91,2,22222)
      SAY("Voyons �a... D'accord, �a m'a l'air correct. Tiens, reprends-les. Et voici les composants. Maintenant d�campe avant qu'on nous voie!")
      ENDDIALOG()
   else
      TAKESPECIALITEMCNT(91,2,11112,1)
      if (result == 1) then
         GIVESPECIALITEM(91,2,11112)
         GIVESPECIALITEM(91,2,22222)
      SAY("Voyons �a... D'accord, �a m'a l'air correct. Tiens, reprends-les. Et voici les composants. Maintenant d�campe avant qu'on nous voie!")
         ENDDIALOG()
      else
         TAKESPECIALITEMCNT(91,2,11113,1)
         if (result == 1) then
            GIVESPECIALITEM(91,2,11113)
            GIVESPECIALITEM(91,2,22222)
      SAY("Voyons �a... D'accord, �a m'a l'air correct. Tiens, reprends-les. Et voici les composants. Maintenant d�campe avant qu'on nous voie!")
            ENDDIALOG()
         else
            TAKESPECIALITEMCNT(91,2,11114,1)
            if (result == 1) then
               GIVESPECIALITEM(91,2,11114)
               GIVESPECIALITEM(91,2,22222)
      SAY("Voyons �a... D'accord, �a m'a l'air correct. Tiens, reprends-les. Et voici les composants. Maintenant d�campe avant qu'on nous voie!")
               ENDDIALOG()
            else
               SAY("Tu joues � quoi, l�? Allez, d�gage!")
               ENDDIALOG()
            end
         end
      end
   end

NODE(99)
  SAY("Tr�s marrant. Esp�ce de clown! Allez d�gage.")
  SAY("Haa haa. Je rigole. Je suis mort de rire. D�gage.")
  ENDDIALOG()

end