function DIALOG()

NODE(0)
 TAKESPECIALITEMCNT(1491, 2, 11115, 1)
 if (result == 0) then
  SAY("Mais regardez qui voil�...")
  ANSWER("Qui �tes-vous?", 1)
 else
  SAY("Alors vous avez fini par nous trouver...")
  ANSWER("Qu'est-ce que vous voulez dire?", 20)
 end

NODE(1)
 SAY("Vous n'aurez pas � vous poser la question. Et d'ailleurs, vous vous en fichez, je le sais. Vous nous avez trouv�s par hasard, ou bien parce que quelqu'un d'autre vous aura aid�. Et tout ce que vous voulez, au fond, c'est un exemplaire d'une PowerArmor de chez Tangent. C'est �a qui vous a amen� � nous, et rien d'autre. Alors c'est tout ce que vous aurez, parce que c'est tout ce que vous m�ritez.")
 ANSWER("Pourquoi? Elles ne sont pas cens�es passer prochainement dans le commerce?", 2)

NODE(2)
 SAY("Quel b�otien vous faites. Je n'ai m�me plus envie de parler avec vous. Alors, vous voulez en acheter une ou pas ?")
 ANSWER("Oui, une Tangent Assassinationsuit v S-11 (Espion pistolet 1) pour 50000 NC", 3)
 ANSWER("Oui, une Heavy Tangent Assassinationsuit v S-11a (Espion pistolet 2) pour 100000 NC", 4)
 ANSWER("Oui, une Power Assassinationsuit v S-256 (Espion pistolet 3) pour 150000 NC", 5)
 ANSWER("Oui, une Ultimate Power Assassinationsuit v S-256a (Espion pistolet 4) pour 200000 NC", 6)
 ANSWER("Oui, une Tangent Infiltrationsuit v S-11 (Espion Fusil 1) pour 50000 NC", 7)
 ANSWER("Oui, une Heavy Tangent Infiltrationsuit v S-11a (Espion Fusil 2) pour 100000 NC", 8)
 ANSWER("Oui, une Power Infiltrationsuit v S-256 (Espion Fusil 3) pour 150000 NC", 9)
 ANSWER("Oui, une Ultimate Power Infiltrationsuit v S-256a (Espion Fusil 4) pour 200000 NC", 10)
 ANSWER("Oui, une Tangent Distance Battlesuit V-10 (Priv� fusil 1) pour 50000 NC", 11)
 ANSWER("Oui, une Tangent Distance Battlesuit V-20 (Priv� fusil 2) pour 100000 NC", 12)
 ANSWER("Oui, une Tangent Distance Battlesuit V-30 (Priv� fusil 3) pour 150000 NC", 13)
 ANSWER("Oui, une Tangent Distance Battlesuit V-40 (Priv� fusil 4) pour 200000 NC", 14)
 ANSWER("Oui, une Tangent Close Range Battlesuit V-10 (Priv� pistolet 1) pour 50000 NC", 15)
 ANSWER("Oui, une Tangent Close Range Battlesuit V-20 (Priv� pistolet 2) pour 100000 NC", 16)
 ANSWER("Oui, une Tangent Close Range Battlesuit V-30 (Priv� pistolet 3) pour 150000 NC", 17)
 ANSWER("Oui, une Tangent Close Range Battlesuit V-40 (Priv� pistolet 4) pour 200000 NC", 18)
 ANSWER("Non.", 19)

NODE(3)
 TAKEMONEY(50000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(1907, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(4)
 TAKEMONEY(100000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(1908, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(5)
 TAKEMONEY(150000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(1909, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(6)
 TAKEMONEY(200000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(1910, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(7)
 TAKEMONEY(50000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(1915, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(8)
 TAKEMONEY(100000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(1916, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(9)
 TAKEMONEY(150000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(1917, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(10)
 TAKEMONEY(200000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(1918, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(11)
 TAKEMONEY(50000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(2705, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(12)
 TAKEMONEY(100000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(2706, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(13)
 TAKEMONEY(150000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(2707, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(14)
 TAKEMONEY(200000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(2708, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(15)
 TAKEMONEY(50000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(2700, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(16)
 TAKEMONEY(100000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(2701, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(17)
 TAKEMONEY(150000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(2702, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(18)
 TAKEMONEY(200000)
 if (result == 0) then
  SAY("Revenez quand vous aurez l'argent!")
  ENDDIALOG()
 else
  GIVEITEM(2703, 255)
  SAY("Et voil�. Maintenant tirez-vous. Et pas la peine de nous envoyer les flics.")
  ENDDIALOG()
 end

NODE(19)
 SAY("Mouais. Au revoir.")
 ENDDIALOG()

NODE(20)
 SAY("On vous a surveill� lors de votre petite enqu�te, vous savez.")
 ANSWER("Vous m'avez surveill�? Comment vous avez fait �a?", 21)

NODE(21)
 SAY("C'est sans importance. De toute mani�re vous ne comprendriez sans doute pas. Mais vous nous avez trouv�s, et c'est d�j� beaucoup.")
 ANSWER("Oh si, �a compte. J'ai trop de questions sans r�ponses. Qui est Job, et pourquoi ce message? Et qu'est-ce que vous faites ici?", 22)

NODE(22)
 SAY("Personne ne vous a dit ce que nous avons vol� dans la base de donn�es de Tangent, je pr�sume?")
 ANSWER("Non!", 23)

NODE(23)
 SAY("Les plans des nouvelles PowerArmors que Tangent voulait fabriquer.")
 ANSWER("Mais pourquoi? O� est-ce que vous voulez en venir?", 24)

NODE(24)
 SAY("Qu'est-ce que vous pensiez si je vous disais que les conseillers de Reza n'avaient pas l'intention de mettre ces armures � disposition du public?")
 ANSWER("Je vous demanderais ce qui vous fait penser �a!", 25)

NODE(25)
 SAY("Et si je vous disais que nous avons aussi pirat� la base de donn�es de CityAdmin, et d�couvert la preuve de nos suppositions?")
 ANSWER("Alors je vous demanderais � qui �taient destin�es ces armures...", 26)
 ANSWER("Alors je vous dirais que vous n'�tes qu'un menteur!", 27)

NODE(26)
 SAY("Aux politiciens. Aux fonctionnaires. Aux scientifiques. Les d�sh�rit�s n'auraient eu aucune chance. Ils veulent se d�barrasser de la couche la plus basse de la soci�t�, et laisser le D�me faire le sale boulot pour eux.")
 ANSWER("...", 28)

NODE(27)
 SAY("Je me suis tromp� � votre sujet. Je pensais que vous auriez eu la clairvoyance n�cessaire pour voir au travers du tissu de mensonges. Mais vous �tes lobotomis�, comme les autres. Hors de ma vue!")
 ENDDIALOG()

NODE(28)
 SAY("Et voil�, maintenant vous ne savez plus quoi dire. Mais ils ont oubli� de nous prendre en compte dans leurs petits calculs. La protection de l'individu est le privil�ge de toute le monde, et nous nous assurons que tout le monde puisse en b�n�ficier.")
 ANSWER("'Petit et grand, l�, c'est tout un, et l'esclave y est affranchi de son ma�tre.'", 29)

NODE(29)
 SAY("Exactement. Nous avons laiss� des indices derri�re nous, comme cette phrase ou l'attaque du JobCenter, pour que ceux qui savent penser par eux-m�mes. Vous en faites partie. Et nous sommes heureux de vous vendre une des PowerArmors que nous fabriquons ici.")
 ANSWER("Me vendre?", 30)

NODE(30)
 SAY("Nous vendons � tous, car tout le monde a besoin de protection. Mais ceux qui nous trouvent gr�ce � nos indices ont �videmment une petite r�duction. Laquelle vous int�resse?")
 ANSWER("La Tangent Assassinationsuit v S-11 (Espion pistolet 1) for 20000 NC", 31)
 ANSWER("La Heavy Tangent Assassinationsuit v S-11a (Espion pistolet 2) for 40000 NC", 32)
 ANSWER("La Power Assassinationsuit v S-256 (Espion pistolet 3) for 60000 NC", 33)
 ANSWER("La Ultimate Power Assassinationsuit v S-256a (Espion pistolet 4) for 80000 NC", 34)
 ANSWER("La Tangent Infiltrationsuit v S-11 (Espion fusil 1) for 20000 NC", 35)
 ANSWER("La Heavy Tangent Infiltrationsuit v S-11a (Espion fusil 2) for 40000 NC", 36)
 ANSWER("La Power Infiltrationsuit v S-256 (Espion fusil 3) for 60000 NC", 37)
 ANSWER("La Ultimate Power Infiltrationsuit v S-256a (Espion fusil 4) for 80000 NC", 38)
 ANSWER("La Tangent Distance Battlesuit V-10 (Priv� fusil 1) for 20000 NC", 39)
 ANSWER("La Tangent Distance Battlesuit V-20 (Priv� fusil 2) for 40000 NC", 40)
 ANSWER("La Tangent Distance Battlesuit V-30 (Priv� fusil 3) for 60000 NC", 41)
 ANSWER("La Tangent Distance Battlesuit V-40 (Priv� fusil 4) for 80000 NC", 42)
 ANSWER("La Tangent Close Range Battlesuit V-10 (Priv� pistolet 1) for 20000 NC", 43)
 ANSWER("La Tangent Close Range Battlesuit V-20 (Priv� pistolet 2) for 40000 NC", 44)
 ANSWER("La Tangent Close Range Battlesuit V-30 (Priv� pistolet 3) for 60000 NC", 45)
 ANSWER("La Tangent Close Range Battlesuit V-40 (Priv� pistolet 4) for 80000 NC", 46)
 ANSWER("Aucune. Mais merci quand-m�me.", 47)

NODE(31)
 TAKEMONEY(20000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(1907, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(32)
 TAKEMONEY(40000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(1908, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(33)
 TAKEMONEY(60000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(1909, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(34)
 TAKEMONEY(80000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(1910, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(35)
 TAKEMONEY(20000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(1915, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(36)
 TAKEMONEY(40000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(1916, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(37)
 TAKEMONEY(60000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(1917, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(38)
 TAKEMONEY(80000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(1918, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(39)
 TAKEMONEY(20000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(2705, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(40)
 TAKEMONEY(40000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(2706, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(41)
 TAKEMONEY(60000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(2707, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(42)
 TAKEMONEY(80000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(2708, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(43)
 TAKEMONEY(20000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(2700, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(44)
 TAKEMONEY(40000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(2701, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(45)
 TAKEMONEY(60000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(2702, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(46)
 TAKEMONEY(80000)
 if (result == 0) then
  SAY("Vous n'avez pas assez d'argent sur vous...")
  ANSWER("Et merde...", 48)
 else
  GIVEITEM(2703, 255)
  SAY("Et voil�. Et conservez votre libert� d'esprit!")
  ENDDIALOG()
 end

NODE(47)
 GIVESPECIALITEM(1491, 2, 11115)
 SAY("Comme vous voulez.")
 ENDDIALOG()

NODE(48)
 GIVESPECIALITEM(1491, 2, 11115)
 SAY("Revenez quand vous avez ce qu'il faut.")
 ENDDIALOG()

end