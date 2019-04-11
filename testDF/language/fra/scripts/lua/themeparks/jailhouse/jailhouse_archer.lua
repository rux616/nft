function DIALOG()

NODE(0)
   SAY("Hep toi! Une petite partie?")
   ANSWER("Ouais, si tu veux perdre ton fric...", 1)
   ANSWER("Nan, fous-moi la paix!", 99)

NODE(1)
   SAY("Bon. On va jouer à pile ou face. Tu connais les règles?")
   ANSWER("C'est pas à un vieux singe qu'on apprend à faire des grimaces. On commence!", 2)
   ANSWER("Euh... je crois pas.", 3)

NODE(2)
   SAY("Tu me fais pas penser à un singe, plutôt à un pigeon...")
   ANSWER("Je suis tombé sur un comique...", 4)

NODE(3)
   SAY("Et voilà, ça tombe encore sur moi. Bon alors je t'explique, c'est simple. Tu mises sur pile ou face. Je lance la pièce. Si tu gagnes, tu ramasses le double, et si tu perds, tu perds tout. T'as des questions?")
   ANSWER("Non. Merci pour l'explication!", 4)

NODE(4)
   SAY("OK, on commence. Tu mises combien?")
   ANSWER("10 NC", 10)
   ANSWER("100 NC", 20)
   ANSWER("1000 NC", 30)
   ANSWER("10000 NC", 40)
   ANSWER("100000 NC", 50)
   ANSWER("1000000 NC", 60)

NODE(10)
   TAKEMONEY(10)
   if (result == 1) then
      SAY("OK. Pile ou face?")
      ANSWER("Face", 11)
      ANSWER("Pile", 12)
   else
      SAY("Essaie pas de m'entuber avec de l'argent que t'as pas. On me la fait pas à moi. Dégage!")
      ENDDIALOG()
   end

NODE(11)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 13)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 15)
   end

NODE(12)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 14)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 16)
   end

NODE(13)
   GIVEMONEY(20)
   SAY("Face. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(14)
   GIVEMONEY(20)
   SAY("Pile. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(15)
   SAY("Pile. Ah ben pas de chance. On remet ça?")
   ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(16)
   SAY("Face. Ah ben pas de chance. On remet ça?")
 ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(20)
   TAKEMONEY(100)
if (result == 1) then
      SAY("OK. Pile ou face?")
      ANSWER("Face", 11)
      ANSWER("Pile", 12)
   else
      SAY("Essaie pas de m'entuber avec de l'argent que t'as pas. On me la fait pas à moi. Dégage!")
      ENDDIALOG()
   end

NODE(21)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 23)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 25)
   end

NODE(22)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 24)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 26)
   end

NODE(23)
   GIVEMONEY(200)
  SAY("Face. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(24)
   GIVEMONEY(200)
      SAY("Pile. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(25)
    SAY("Pile. Ah ben pas de chance. On remet ça?")
   ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(26)
     SAY("Face. Ah ben pas de chance. On remet ça?")
 ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(30)
   TAKEMONEY(1000)
   if (result == 1) then
      SAY("OK. Pile ou face?")
      ANSWER("Face", 31)
      ANSWER("Pile", 32)
   else
      SAY("Essaie pas de m'entuber avec de l'argent que t'as pas. On me la fait pas à moi. Dégage!")
      ENDDIALOG()
   end

NODE(31)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 33)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 35)
   end

NODE(32)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 34)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 36)
   end

NODE(33)
   GIVEMONEY(2000)
 SAY("Face. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(34)
   GIVEMONEY(2000)
  SAY("Pile. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(35)
    SAY("Pile. Ah ben pas de chance. On remet ça?")
   ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(36)
   SAY("Face. Ah ben pas de chance. On remet ça?")
 ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(40)
   TAKEMONEY(10000)
   if (result == 1) then
      SAY("OK. Pile ou face?")
      ANSWER("Face", 41)
      ANSWER("Pile", 42)
   else
     SAY("Essaie pas de m'entuber avec de l'argent que t'as pas. On me la fait pas à moi. Dégage!")
      ENDDIALOG()
   end

NODE(41)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 43)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 45)
   end

NODE(42)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 44)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 46)
   end

NODE(43)
   GIVEMONEY(20000)
 SAY("Face. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(44)
   GIVEMONEY(20000)
   SAY("Pile. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(45)
  SAY("Pile. Ah ben pas de chance. On remet ça?")
   ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(46)
  SAY("Face. Ah ben pas de chance. On remet ça?")
 ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(50)
   TAKEMONEY(100000)
   if (result == 1) then
      SAY("OK. Pile ou face?")
      ANSWER("Face", 51)
      ANSWER("Pile", 52)
   else
     SAY("Essaie pas de m'entuber avec de l'argent que t'as pas. On me la fait pas à moi. Dégage!")
      ENDDIALOG()
   end

NODE(51)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 53)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 55)
   end

NODE(52)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 54)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 56)
   end

NODE(53)
   GIVEMONEY(200000)
  SAY("Face. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(54)
   GIVEMONEY(200000)
   SAY("Pile. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(55)
   SAY("Pile. Ah ben pas de chance. On remet ça?")
   ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(56)
  SAY("Face. Ah ben pas de chance. On remet ça?")
 ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(60)
   TAKEMONEY(1000000)
   if (result == 1) then
      SAY("OK. Pile ou face?")
      ANSWER("Face", 61)
      ANSWER("Pile", 62)
   else
     SAY("Essaie pas de m'entuber avec de l'argent que t'as pas. On me la fait pas à moi. Dégage!")
      ENDDIALOG()
   end

NODE(61)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 63)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 65)
   end

NODE(62)
   SAY("OK. Je lance la pièce!")
   RAND(2)
   if (result == 0) then
      ANSWER("Eeeeeeeeeeeeeet...", 64)
   else
      ANSWER("Eeeeeeeeeeeeeet...", 66)
   end

NODE(63)
   GIVEMONEY(2000000)
   SAY("Face. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(64)
   GIVEMONEY(2000000)
   SAY("Pile. T'as gagné. Et merde. Enfin je veux dire, super! Tiens, prends ton fric. On remet ça?")
   ANSWER("Ouais!", 4)
   ANSWER("Non merci!", 99)

NODE(65)
   SAY("Pile. Ah ben pas de chance. On remet ça?")
   ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)

NODE(66)
    SAY("Face. Ah ben pas de chance. On remet ça?")
 ANSWER("Ouais. Faut que je me refasse!", 4)
   ANSWER("Nan. J'ai plus un sou.", 99)
NODE(99)
   SAY("Alors va te faire foutre!")
   ENDDIALOG()

end