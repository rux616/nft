function DIALOG()

NODE(0)

SAY("Hep toi, tu devrais faire attention où tu vas. Plus loin, c'est la Prison!")

SAY("Yo. Si j'étais toi, j'irais pas plus loin. C'est la prison, là-bas. C'est pas pour les enfants de coeur.")

SAY("Si j'étais toi, je m'arrêterais ici. La prison est pas un endroit pour les enfants de coeur.")

ANSWER("La prison?",1)

ANSWER("Tu me veux quoi, toi? Je vais où je veux!",2)

ANSWER("Qu'est-ce qu'il peut bien y avoir de dangereux dans une prison déserte?",1)

NODE(1)

SAY("Y a un petit bout de temps, le Dragon Noir a acheté la prison. Ils voulaient faire plein de trucs dedans. Mais un de leurs types a voulu l'utiliser pour lui seul.")

ANSWER("Ouais, et il s'est passé quoi?",3)

ANSWER("J'en ai rien à foutre, je m'en vais. A plus.",2)

NODE(2)

SAY("Comme tu veux. A la prochaine, mon pote.")
ENDDIALOG()

NODE(3)

SAY("J'ai le gosier sec, je peux plus parler dans ces conditions. T'aurais pas une bière pour moi?")

ANSWER("Ouais, j'ai une bière. Tiens mon gars, cadeau.",4)

ANSWER("Nan, j'ai rien sur moi. Et puis faut que j'y aille. A la prochaine mon gars.",2)

NODE(4)

TAKEITEM(812)

   if (result==0) then

      SAY("Sans bière, je pourrai jamais sortir un mot de plus. J'ai le gosier complètement sec.")

      ANSWER("Ok, ok, je vais t'en chercher. Attends-moi ici!",5)

   else
   
   SAY("Ahhh ça c'est de la vraie bière!")

               ANSWER("Ca va mieux maintenant? Tu peut causer?",6)

   end

NODE(5)
            SAY("Ok, je reste là. Mais grouille ton cul!")
            ENDDIALOG()

NODE(6)
            SAY("Ouais, ça va mieux maintenant. Donc comme je te disais, ce type du Dragon Noir a pris le contrôle de la prison, et il a tiré dans le tas. Maintenant ça s'est calmé, et c'est là que se retrouvent tous les criminels de Neocron.")
            ANSWER("Et pourquoi est-ce que le NCPD ne bouge pas?",7)
            ANSWER("Chouette. Je vais aller voir un peu comment ça se passe, merci de l'info.",8)
            ANSWER("Ok, alors je vais prendre un autre chemin. Merci de l'info.",9)

NODE(7)
            SAY("Le NCPD? Arrête je vais crever de rire! Ils bougeront jamais, ils vont rester posés sur leurs gros culs! Tant que ces types viennent pas en ville, ils s'en foutent royalement.")
            ANSWER("Je pense que je perds mon temps ici. Pour Reza!",10)

NODE(8)
            SAY("Euh... Ouais, si tu veux. Amuse-toi bien.")
            ENDDIALOG()

NODE(9)
            SAY("Je t'en prie. Tu verras après le coin à gauche, y a des types. Depuis que la prison est ouverte, ils traînent dans le coin. Je sais pas du tout ce qu'ils mijotent.")
            ANSWER("Je cherche personne, mais merci. Faut que j'y aille. A plus, mec.",11)

NODE(10)
            SAY("Ben tu diras Reza d'aller baiser une partie de mon corps où que le soleil y brille jamais! Les types dans ton genre, vous me faites perdre mon temps!")
            ENDDIALOG()

NODE(11)
            SAY("A plus.")
            ENDDIALOG()
end