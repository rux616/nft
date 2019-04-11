function DIALOG()
 
NODE(0)
	SAY ("Hé mec, t'as une minute?")
	SAY ("Yo mon pote, si tu me donnes cinq minutes de ton précieux temps, tu le regretteras pas!")

	ANSWER ("Fous-moi la paix, ducon. J'ai à faire.",1)
	ANSWER ("Oui, de toute manière j'ai rien à faire. J'écoute.",2)
	ANSWER ("Hein. Mais t'es qui, d'abord?",3)

NODE(1)
	SAY ("Du calme, je voulais juste te faire une super offre!")
	SAY ("Hé ho du calme, sinon moi aussi je vais m'énerver. Enfin si tu veux rater l'affaire du siècle, moi ça m'est égal...")

	ANSWER ("Ca m'intéresse pas.",4)
	ANSWER ("Fous-moi la paix, ok?",4)

NODE(2)
	SAY ("Je viens de recevoir une nouvelle livraison. Ca t'intéresse?")

	ANSWER ("Des... DROGUES?",5)
	ANSWER ("T'as de la dope? J'arrive pas à trouver de la bonne dope ces derniers temps. Montre-moi ce que tu as.",6)
	ANSWER ("Tu parles de drogues, c'est ça. Alors ça m'intéresse pas, tu peux te les garder. Bye.",4)

NODE(3)
	SAY ("Et si j'étais celui qui te faisait connaître le trip le plus gigantesque de ton existence? Ca t'intéresserait?")

	ANSWER ("Pardon, mais je vois vraiment pas de quoi tu veux parler.",7)
	ANSWER ("J'ai compris, je suis pas débile. Continue.",2)
	ANSWER ("Des drogues? Non merci, ça me branche pas.",4)
NODE(4)
	SAY ("Comme tu veux. Bye.")
	ENDDIALOG()

NODE(5)
	SAY ("Merde, un peu de calme! Tu veux quand même pas que tout le monde soit au courant! Tu pensais quoi, que je vendais des caramels mous?")

	ANSWER ("C'est vrai, tu vends des caramels mous?",7)
	ANSWER ("J'aimerais bien t'en prendre un peu. Qu'est-ce que tu as en stock?",6)
	ANSWER ("Ok, ok. Je me calme. Montre ton stock.",6)

NODE(6)
	SAY ("Rien que la meilleure. Regarde un peu ça, je pense que tu vas trouver ton bonheur.")

	ANSWER("OK, je regarde ça.",8)
	ANSWER("D'accord, montre-moi ça.",8)

NODE (7)
	SAY("Je viens de me rappeler que j'avais des trucs à faire...")
	ENDDIALOG()

NODE(8)
	TRADE()
   ENDDIALOG()
end