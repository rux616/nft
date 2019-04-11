function DIALOG()

NODE(0)
SAY("Quoi? Je suis occupé, ça se voit pas?")
SAY("QUOI? Tu vois pas que je suis en plein travail?")
SAY("J'espère que tu as une bonne raison de me déranger. Qu'est-ce qu'il y a?")
ANSWER("Hé du calme l'ami. Je passais juste dire bonjour.",1)
ANSWER("Il est où le boss?",2)
ANSWER("Laisse tomber, c'est pas important.",3)

NODE(1)
SAY("Tu me déranges simplement pour me dire BONJOUR? Va chier! Je dois terminer la comptabilité pour le boss, et toi tu me déranges avec tes conneries! Dégage!")
ENDDIALOG()

NODE(2)
SAY("J'ai l'air d'un guide touristique? Le boss est dans la grande salle. Maintenant laisse-moi bosser, faut que je finisse de compter le fric avant ce soir!")
ENDDIALOG()

NODE(3)
SAY("OK, alors laisse-moi bosser. Ciao.")
ENDDIALOG()
end