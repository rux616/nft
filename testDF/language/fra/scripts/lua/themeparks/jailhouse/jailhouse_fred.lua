function DIALOG()

NODE(0)
   SAY("Hey mec! Ca va ???")
   ANSWER("Heu... ouais! T'es qui.", 1)
   ANSWER("Ouaip, �a va. Une question? O� est-ce que je peux acheter des trucs, si tu vois ce que je veux dire?", 2)
   ANSWER("Tu saurais pas o� je pourrais m'amuser un peu?", 3)
   ANSWER("Argh, qui t'a donn� naissance, vieux? D�gage!", 4)

NODE(1)
   SAY("Moi c'est Fred, et lui c'est Hank, mon frangin. C'est pas un grand bavard, gaspille pas ta salive avec lui.")
   ANSWER("Vous avez pas l'air net...", 5)

NODE(2)
   SAY("Ouais, re�u cinq sur cinq! Essaie voir Dagger. Mais autant te le dire tout de suite : il est cher!")
   ANSWER("Cite-moi un truc dans la vie qui n'est pas cher... Merci!", 6)

NODE(3)
   SAY("Comme si j'avais pas remarqu�.... Ouais, je peux te donner quelques pistes si tu veux.")
   ANSWER("Du genre?", 7)

NODE(4)
   SAY("OK mon pote, on va r�gler �a direct!")
   ATTACK()
   ENDDIALOG()

NODE(5)
   SAY("Merci j'ai failli oublier... On est des siamois, on est reli�s par la t�te, si tu veux tout savoir.")
   ANSWER("Ah, pardon, je voulais pas �tre grossier.", 8)

NODE(6)
   SAY("A ton service, mec. Mais fais attention sur les doses, sois pas gourmand, h�h�!")
   ENDDIALOG()

NODE(7)
   SAY("Baiser, te d�foncer, tirer ton coup, jouer ta paie du mois et t'envoyer en l'air! Beau programme non?!")
   ANSWER("Hein..?", 9)

NODE(8)
   SAY("J'en ai rien � foutre. Personne en a rien � foutre. Autre chose?")
   ANSWER("Oui, une question. Qu'est-ce qu'on peut faire ici?", 7)

NODE(9)
   SAY("Joue pas les effarouch�s, tu t'attendais � quoi? A un salon de d�coration d'int�rieur?")
   ANSWER("Une moiti� de moi est choqu�e, mais l'autre moiti� se r�jouit d'avoir trouv� le paradis sur terre...", 10)

NODE(10)
   SAY("Haha... Ca peut �tre en m�me temps l'enfer et le paradis, tu sais. Mais dans tous les cas, une chose est s�re : on s'�clate!")
   ANSWER("Alors je vais me laisser tenter!", 11)

NODE(11)
   SAY("Si tu veux jouer un peu de fric, va voir Archer ou Zulu. Mais fais attention � pas repartir � poil. Amuse-toi bien.")
   ENDDIALOG()

end