--************************
--name   : drugdealer
--version: 0.01
--author :
--date   :
--lang   : en
--description:
--purpose:
--npc    :
--************************

function DIALOG()

NODE(0)
   SAY("Tu veux quoi? Chuis occup�!")
   SAY("Essaie d'�tre discret, tu vas me ruiner mon business!")
   SAY("J'ai rien vu, rien entendu!")
   ANSWER("Tu sais o� je pourrais en trouver?", 1)
   ANSWER("T'en vends?", 1)
   ANSWER("On dit que tu en vends?", 1)
   ANSWER("Je file!", 2)
   ANSWER("Je m'en vais!", 2)

NODE(1)
   SAY("Quel est le fils de pute qui sait pas tenir sa langue?!")
   SAY("Je leur dis de la fermer, et voil� le r�sultat...")
   SAY("Super, les gens qui savent pas tenir un secret, j'adore...")
   ANSWER("C'est bon, c'est bon... T'en as?", 3)
   ANSWER("Je suis pas au courant. Montre-moi ce que tu vends, c'est tout!", 3)

NODE(2)
   SAY("Tu me balances, demain on te sert en tranches chez Garriot, pig�?")
   SAY("Okay. Mais si t'es une balance, je te fais balancer � la flotte.")
   ENDDIALOG()

NODE(3)
   SAY("Okay, prends ce que tu veux et tra�ne pas.")
   TRADE()
   ENDDIALOG()

end