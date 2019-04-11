function DIALOG()

NODE(0)
   SAY("Salut toi! Prêt pour la chevauché sauvage?")
   ANSWER("Et comment! On galope jusqu'où?", 1)
   ANSWER("Nan merci, je viens justement de tirer mon coup!", 2)

NODE(1)
   SAY("Direct dans ma chambre. Yo-hoo!")
   ANSWER("Tu es du genre monture ou cavalière?", 3)

NODE(2)
   SAY("Ah zut, dommage... Bon, j'espère que ça sera moi la prochaine...")
   ENDDIALOG()

NODE(3)
   SAY("C'est toi qui choisis, mon chou! Mais donne-moi une petite minute, il faut que je me nettoie la croupe après la dernière galopade!")
   ANSWER("OK mais dépêche-toi, mon pantalon va exploser!", 4)

NODE(4)
   SAY("Hoo, tout doux. Attends. J'arrive dans une minute.")
   ENDDIALOG()

end