function DIALOG()
 


NODE(0)

SAY ("Tu veux quoi? Je suis occup�!")

SAY ("Tu veux quoi? J'ai des trucs � faire, perdons pas de temps!")

SAY ("Tu veux quoi? Accouche, j'ai pas toute la journ�e.")



ANSWER ("Yo Man, on m'a dit que tu vendais de sacr�s trips. Je peux voir ton stock?",1)

ANSWER ("Salut mec. Il me faut de la dope. T'en as?",2)

ANSWER ("Laisse tomber...",3)



NODE(1)  

SAY ("Ouais bien s�r. J'ai tout ce que tu cherches. Et �videmment, � un prix du tonnerre!")

TRADE()

ENDDIALOG()

NODE(2)

SAY ("J'AI UNE TETE A VENDRE DE LA DOPE DE MERDE? VA AU MEDICARE AU LIEU DE ME FAIRE CHIER ESPECE DE CONNARD!")

ANSWER ("Eh mec, reste cool! Il me faut juste quelques doses, c'est tout. Je suis au r�gime sec en ce moment.",4)

ANSWER ("Va chier, t�te de noeud! Je vais aller voir en face puisque c'est comme �a!",5)

NODE(3)

SAY ("Pas de probl�me. Si tu cherches de la bonne came, c'est ici que �a se passe. Je vends le top du top.")

ENDDIALOG ()

NODE(4)

SAY ("J'aime pas quand les gens savent pas appr�cier mon job. je suis pas un vulgaire dealer de rue! Ici t'es dans un coin sp�cial, alors tu fais attention � tes mani�res! OK, voil� ce que j'ai, fais ton choix, tu vas certainement trouver ton bonheur. Et �videmment, tout �a pour les meilleurs prix.")

TRADE()

ENDDIALOG()

NODE(5)

SAY ("D�gage avant que je p�te un plomb!")

ENDDIALOG ()

end