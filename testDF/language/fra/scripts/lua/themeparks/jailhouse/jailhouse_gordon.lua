function DIALOG()

NODE(0)

SAY("Hep toi, tu devrais faire attention o� tu vas. Plus loin, c'est la Prison!")

SAY("Yo. Si j'�tais toi, j'irais pas plus loin. C'est la prison, l�-bas. C'est pas pour les enfants de coeur.")

SAY("Si j'�tais toi, je m'arr�terais ici. La prison est pas un endroit pour les enfants de coeur.")

ANSWER("La prison?",1)

ANSWER("Tu me veux quoi, toi? Je vais o� je veux!",2)

ANSWER("Qu'est-ce qu'il peut bien y avoir de dangereux dans une prison d�serte?",1)

NODE(1)

SAY("Y a un petit bout de temps, le Dragon Noir a achet� la prison. Ils voulaient faire plein de trucs dedans. Mais un de leurs types a voulu l'utiliser pour lui seul.")

ANSWER("Ouais, et il s'est pass� quoi?",3)

ANSWER("J'en ai rien � foutre, je m'en vais. A plus.",2)

NODE(2)

SAY("Comme tu veux. A la prochaine, mon pote.")
ENDDIALOG()

NODE(3)

SAY("J'ai le gosier sec, je peux plus parler dans ces conditions. T'aurais pas une bi�re pour moi?")

ANSWER("Ouais, j'ai une bi�re. Tiens mon gars, cadeau.",4)

ANSWER("Nan, j'ai rien sur moi. Et puis faut que j'y aille. A la prochaine mon gars.",2)

NODE(4)

TAKEITEM(812)

   if (result==0) then

      SAY("Sans bi�re, je pourrai jamais sortir un mot de plus. J'ai le gosier compl�tement sec.")

      ANSWER("Ok, ok, je vais t'en chercher. Attends-moi ici!",5)

   else
   
   SAY("Ahhh �a c'est de la vraie bi�re!")

               ANSWER("Ca va mieux maintenant? Tu peut causer?",6)

   end

NODE(5)
            SAY("Ok, je reste l�. Mais grouille ton cul!")
            ENDDIALOG()

NODE(6)
            SAY("Ouais, �a va mieux maintenant. Donc comme je te disais, ce type du Dragon Noir a pris le contr�le de la prison, et il a tir� dans le tas. Maintenant �a s'est calm�, et c'est l� que se retrouvent tous les criminels de Neocron.")
            ANSWER("Et pourquoi est-ce que le NCPD ne bouge pas?",7)
            ANSWER("Chouette. Je vais aller voir un peu comment �a se passe, merci de l'info.",8)
            ANSWER("Ok, alors je vais prendre un autre chemin. Merci de l'info.",9)

NODE(7)
            SAY("Le NCPD? Arr�te je vais crever de rire! Ils bougeront jamais, ils vont rester pos�s sur leurs gros culs! Tant que ces types viennent pas en ville, ils s'en foutent royalement.")
            ANSWER("Je pense que je perds mon temps ici. Pour Reza!",10)

NODE(8)
            SAY("Euh... Ouais, si tu veux. Amuse-toi bien.")
            ENDDIALOG()

NODE(9)
            SAY("Je t'en prie. Tu verras apr�s le coin � gauche, y a des types. Depuis que la prison est ouverte, ils tra�nent dans le coin. Je sais pas du tout ce qu'ils mijotent.")
            ANSWER("Je cherche personne, mais merci. Faut que j'y aille. A plus, mec.",11)

NODE(10)
            SAY("Ben tu diras Reza d'aller baiser une partie de mon corps o� que le soleil y brille jamais! Les types dans ton genre, vous me faites perdre mon temps!")
            ENDDIALOG()

NODE(11)
            SAY("A plus.")
            ENDDIALOG()
end