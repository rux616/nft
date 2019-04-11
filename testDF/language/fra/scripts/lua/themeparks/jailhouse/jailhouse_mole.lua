function DIALOG()
 


NODE(0)

SAY ("Tu veux quoi? Je suis occupé!")

SAY ("Tu veux quoi? J'ai des trucs à faire, perdons pas de temps!")

SAY ("Tu veux quoi? Accouche, j'ai pas toute la journée.")



ANSWER ("Yo Man, on m'a dit que tu vendais de sacrés trips. Je peux voir ton stock?",1)

ANSWER ("Salut mec. Il me faut de la dope. T'en as?",2)

ANSWER ("Laisse tomber...",3)



NODE(1)  

SAY ("Ouais bien sûr. J'ai tout ce que tu cherches. Et évidemment, à un prix du tonnerre!")

TRADE()

ENDDIALOG()

NODE(2)

SAY ("J'AI UNE TETE A VENDRE DE LA DOPE DE MERDE? VA AU MEDICARE AU LIEU DE ME FAIRE CHIER ESPECE DE CONNARD!")

ANSWER ("Eh mec, reste cool! Il me faut juste quelques doses, c'est tout. Je suis au régime sec en ce moment.",4)

ANSWER ("Va chier, tête de noeud! Je vais aller voir en face puisque c'est comme ça!",5)

NODE(3)

SAY ("Pas de problème. Si tu cherches de la bonne came, c'est ici que ça se passe. Je vends le top du top.")

ENDDIALOG ()

NODE(4)

SAY ("J'aime pas quand les gens savent pas apprécier mon job. je suis pas un vulgaire dealer de rue! Ici t'es dans un coin spécial, alors tu fais attention à tes manières! OK, voilà ce que j'ai, fais ton choix, tu vas certainement trouver ton bonheur. Et évidemment, tout ça pour les meilleurs prix.")

TRADE()

ENDDIALOG()

NODE(5)

SAY ("Dégage avant que je pète un plomb!")

ENDDIALOG ()

end