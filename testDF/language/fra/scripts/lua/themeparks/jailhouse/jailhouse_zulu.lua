function DIALOG()

NODE(0)
   SAY("Un petit classique, ça te tente?")
   SAY("Tu veux jouer à un classique?")
   ANSWER("C'est quoi ton classique? Celui qui a la plus grosse?", 1)
   ANSWER("Ouaip, il faut que je me refasse. C'est parti!", 9)

NODE(1)
   SAY("Très dôle, le comique! Je te parle de la roulette!")
   ANSWER("Jamais entendu parler. Ca consiste en quoi?", 2)
   ANSWER("Fallait le dire tout de suite! J'en suis!", 9)

NODE(2)
   SAY("OK, alors écoute bien. Tu vois cette machine là-bas, le disque qu'il y a dessus? Tu as 38 chiffres, et trois couleurs différentes. De 1à 36, c'est noir ou rouge, en quantités égales. Et ensuite, tu as le 0 et le 00. Tu peux miser sur n'importe lequel.")
   ANSWER("Et comment on gagne?", 3)

NODE(3)
   SAY("Tu peux miser sur noir ou rouge. Ensuite, je fais tourner la roulette, et la balle ira se planter dans un trou. Si c'est le tien, tu gagnes 36 fois ta mise. Si c'est pas le tien, tu perds. Tu peux aussi choisir une couleur : à ce moment-là, soit tu doubles ta mise, soit tu la perds.")
   ANSWER("Et si je choisis 0 ou 00?", 4)

NODE(4)
   SAY("Si tu mises sur ces cases, tu auras 36 fois ta mise si tu gagnes. Si tu gagnes pas, tu perds ton argent. Le 0 et le 00 n'ont pas de couleur, alors si tu paries sur rouge ou noir et que ça tombe dessus, tu perds aussi!")
   ANSWER("C'est pas juste!", 5)

NODE(5)
   SAY("C'est la vie qu'est pas juste... Oublie pas, tu pourrais gagner 36 fois ta mise!")
   ANSWER("OK ça marche, je me lance!", 9)
   ANSWER("Laisse tomber, de toute manière j'ai jamais eu de chance.", 6)

NODE(6)
   SAY("Comme tu veux, j'oblige personne...")
   ENDDIALOG()

NODE(8)
   SAY("OK. Alors tu mises sur quoi?")
   ANSWER("1 Rouge", 20)
   ANSWER("2 noir", 21)
   ANSWER("3 Rouge", 22)
   ANSWER("4 noir", 23)
   ANSWER("5 Rouge", 24)
   ANSWER("6 noir", 25)
   ANSWER("7 Rouge", 26)
   ANSWER("8 noir", 27)
   ANSWER("9 Rouge", 28)
   ANSWER("10 noir", 29)
   ANSWER("11 noir", 30)
   ANSWER("12 Rouge", 31)
   ANSWER("13 noir", 32)
   ANSWER("14 Rouge", 33)
   ANSWER("15 noir", 34)
   ANSWER("16 Rouge", 35)
   ANSWER("17 noir", 36)
   ANSWER("18 Rouge", 37)
   ANSWER("19 Rouge", 38)
   ANSWER("20 noir", 39)
   ANSWER("21 Rouge", 40)
   ANSWER("22 noir", 41)
   ANSWER("23 Rouge", 42)
   ANSWER("24 noir", 43)
   ANSWER("25 Rouge", 44)
   ANSWER("26 noir", 45)
   ANSWER("27 Rouge", 46)
   ANSWER("28 noir", 47)
   ANSWER("29 noir", 48)
   ANSWER("30 Rouge", 49)
   ANSWER("31 noir", 50)
   ANSWER("32 Rouge", 51)
   ANSWER("33 noir", 52)
   ANSWER("34 Rouge", 53)
   ANSWER("35 noir", 54)
   ANSWER("36 Rouge", 55)
   ANSWER(" 0 ", 56)
   ANSWER(" 00 ", 57)
   ANSWER("Rouge", 58)
   ANSWER("noir", 59)

NODE(9)
   SAY("Tu mises combien?")
   ANSWER("1000 NC", 10)
   ANSWER("2000 NC", 11)
   ANSWER("3000 NC", 12)
   ANSWER("4000 NC", 13)
   ANSWER("5000 NC", 14)
   ANSWER("6000 NC", 15)
   ANSWER("7000 NC", 16)
   ANSWER("8000 NC", 17)
   ANSWER("9000 NC", 18)
   ANSWER("10000 NC", 19)

NODE(10)
   if (node == state) then
      bet = 1000
      SAY("1000 NC... t'es sûr?")
      ANSWER("Oui", 8)
      ANSWER("Non", 9)
   end

NODE(11)
   if (node == state) then
      bet = 2000
      SAY("2000 NC... t'es sûr?")
      ANSWER("Oui", 8)
      ANSWER("Non", 9)
   end

NODE(12)
   if (node == state) then
      bet = 3000
      SAY("3000 NC... t'es sûr?")
      ANSWER("Oui", 8)
      ANSWER("Non", 9)
   end

NODE(13)
   if (node == state) then
      bet = 4000
      SAY("4000 NC... t'es sûr?")
      ANSWER("Oui", 8)
      ANSWER("Non", 9)
   end

NODE(14)
   if (node == state) then
      bet = 5000
      SAY("5000 NC... t'es sûr?")
      ANSWER("Oui", 8)
      ANSWER("Non", 9)
   end

NODE(15)
   if (node == state) then
      bet = 6000
      SAY("6000 NC... t'es sûr?")
      ANSWER("Oui", 8)
      ANSWER("Non", 9)
   end

NODE(16)
   if (node == state) then
      bet = 7000
      SAY("7000 NC... t'es sûr?")
      ANSWER("Oui", 8)
      ANSWER("Non", 9)
   end

NODE(17)
   if (node == state) then
      bet = 8000
      SAY("8000 NC... t'es sûr?")
      ANSWER("Oui", 8)
      ANSWER("Non", 9)
   end

NODE(18)
   if (node == state) then
      bet = 9000
      SAY("9000 NC... t'es sûr?")
      ANSWER("Oui", 8)
      ANSWER("Non", 9)
   end

NODE(19)
   if (node == state) then
      bet = 10000
      SAY("10000 NC... t'es sûr?")
      ANSWER("Oui", 8)
      ANSWER("Non", 9)
   end

NODE(20)
   if (node == state) then
      on = 1
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(21)
   if (node == state) then
      on = 2
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(22)
   if (node == state) then
      on = 3
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(23)
   if (node == state) then
      on = 4
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(24)
   if (node == state) then
      on = 5
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(25)
   if (node == state) then
      on = 6
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(26)
   if (node == state) then
      on = 7
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(27)
   if (node == state) then
      on = 8
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(28)
   if (node == state) then
      on = 9
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(29)
   if (node == state) then
      on = 10
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(30)
   if (node == state) then
      on = 11
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(31)
   if (node == state) then
      on = 12
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(32)
   if (node == state) then
      on = 13
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(33)
   if (node == state) then
      on = 14
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(34)
   if (node == state) then
      on = 15
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(35)
   if (node == state) then
      on = 16
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(36)
   if (node == state) then
      on = 17
      factor = 36
      colour = "black"
      SAY(bet .. " on " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(37)
   if (node == state) then
      on = 18
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(38)
   if (node == state) then
      on = 19
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(39)
   if (node == state) then
      on = 20
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(40)
   if (node == state) then
      on = 21
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(41)
   if (node == state) then
      on = 22
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(42)
   if (node == state) then
      on = 23
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(43)
   if (node == state) then
      on = 24
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(44)
   if (node == state) then
      on = 25
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(45)
   if (node == state) then
      on = 26
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(46)
   if (node == state) then
      on = 27
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(47)
   if (node == state) then
      on = 28
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(48)
   if (node == state) then
      on = 29
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(19)
   if (node == state) then
      on = 30
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(50)
   if (node == state) then
      on = 31
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(51)
   if (node == state) then
      on = 32
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(52)
   if (node == state) then
      on = 33
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(53)
   if (node == state) then
      on = 34
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Yes", 60)
      ANSWER("Non", 8)
   end

NODE(54)
   if (node == state) then
      on = 35
      factor = 36
      colour = "black"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(55)
   if (node == state) then
      on = 36
      factor = 36
      colour = "Red"
      SAY(bet .. " sur " .. on .. " " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(56)
   if (node == state) then
      on = 0
      factor = 36
      colour = ""
      SAY(bet .. " sur 0, t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(57)
   if (node == state) then
      on = -1
      factor = 36
      colour = ""
      SAY(bet .. " sur 00, t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("No", 8)
   end

NODE(58)
   if (node == state) then
      on = -2
      factor = 2
      colour = "Red"
      SAY(bet .. " sur " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(59)
   if (node == state) then
      on = -2
      factor = 2
      colour = "black"
      SAY(bet .. " sur " .. colour .. ", t'es sûr?")
      ANSWER("Oui", 60)
      ANSWER("Non", 8)
   end

NODE(60)
   if (node == state) then
      RAND(38)
      out = result - 1
      if ((out == 1) or (out == 3) or (out == 7) or (out == 9) or (out == 12) or (out == 14) or (out == 16) or (out == 18) or (out == 19) or (out == 21) or (out == 23) or (out == 25) or (out == 27) or (out == 30) or (out == 32) or (out == 34) or (out == 36)) then
         outcolour = "Red"
      else
         if (out > 0) then
            outcolour = "black"
         else
            outcolour = "green"
         end
      end
      if (out == -1) then
         outtext = "00"
      else
         if (out == 0) then
            outtext = "0"
         end
      end
      if ((on == -2) and (out > 0)) then
         on = colour
         outtext = out .. " " .. outcolour
         out = outcolour
      else
         if (out > 0) then
            outtext = out .. " " .. outcolour
         end
      end
      TAKEMONEY(bet)
      if (result == 0) then
         SAY("La prochaine fois, si tu as pas de fric, autant me le dire d'avance, compris?")
         ENDDIALOG()
      else
         if (out == on) then
            GIVEMONEY(bet * factor)
            SAY("Les jeux sont faits, rien en va plus... et c'est le ... " .. outtext .. ". Et merde. Tiens, voilà ton fric. Tu remets ça?")
            ANSWER("Et comment! Je vais pas laisser passer ma chance!", 9)
            ANSWER("Merci, j'ai assez gagné aujourd'hui.", 6)
         else
            SAY("Les jeux sont faits, rien en va plus... et c'est le ... " .. outtext .. ". Ah, pas de chance pour toi. Tu remets ça?")
            ANSWER("Tu m'étonnes! Il faut que je me refasse!", 9)
            ANSWER("Merci, ça suffira pour aujourd'hui!", 6)
         end
      end
   end

end