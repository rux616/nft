function DIALOG()
 
NODE(0)
SAY("Tu veux quoi? Tu vois pas que je suis occup�??")
SAY("J'ai pas le temps de bavarder, mon pote. Tu veux quoi??")
ANSWER("O� est le boss?",1)
ANSWER("Pardon, je voulais pas te d�ranger. Continue � travailler.",2)
ANSWER("Vous �tes sacr�ment dou�s, les gars. J'ai jamais vu autant de CopBots morts en une seule fois!",3)
NODE(1)
SAY("Le boss est dans la grande salle, comme d'habitude. La plupart du temps, il est en compagnie de sa chica.")
ANSWER("Ah, ok. Merci pour l'info. A plus.",4)
NODE(2)
SAY("Joue pas au con, laisse-moi bosser.")
ENDDIALOG()
NODE(3)
SAY("Ouais, tu l'as dit! On est les plus forts! T'as pas � craindre les CopBots ici, mec. Maintenant laisse-moi bosser, tu veux?")
SAY("Les CopBots ont pas le droit d'entrer ici, mec. Des raclures de ce genre, c'est parmi nos cibles prioritaires.")
ENDDIALOG()
NODE(4)
SAY("Pas de probl�me, mon pote.")
ENDDIALOG()
end