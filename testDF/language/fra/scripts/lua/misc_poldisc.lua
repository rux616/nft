-- this is that political insurgent and 2 other guys dialogue, not sure how well it'll work though

function DIALOG()

	NODE(0)
		SAY("Tout �a, c'est la faute � Reza! C'est cet imb�cile qui fait du mal � Neocron!",1)
		SAY("T'as rien compris du tout. Ce que je veux dire, c'est que c'est pas une vie normale!",2)
		SAY("Pour une fois dans ta vie de minable, est-ce que tu vas te d�cider � m'�couter?",3)

	NODE(1)
		SAY("Mais non, Reza a fait beaucoup de choses bien.",4)
		SAY("T'as raison! On va aller le plomber tout de suite!",5)
	
	NODE(2)
		SAY("Tu la veux comment, ta vie? Avez de l'herbe et des arbres partout, et des araign�es grosses comme des ours?",6)
		SAY("Ouais, t'as raison. Tout fout le camp. Mais qu'est-ce qu'on peut y faire?",8)

	NODE(3)
		SAY("NON! Je veux plus t'�couter, toi et tes th�ories d�biles!")
		SAY("Euh... ouais, d'accord, si tu veux, mais on va faire �a dans un endroit un peu moins public.")
		ENDDIALOG()

	NODE(4)
		SAY("HA! Tout ce qu'il a fait, c'est pour les riches. Il est temps de reprendre Neocron...",5)
		SAY("Ouais, t'as aucune vision politique, toi.",7)
	
	NODE(5)
		SAY("CHHHHHutttt... Tu sais ce qu'ils vont nous faire s'ils nous entendent?")
		SAY("Ouais, et... euh... voil� quelqu'un, on reparlera de �a plus tard.")
		SAY("Pas si fort! C'est pas l'endroit pour parler de �a!")
		SAY("Vous �tes tous compl�tement tar�s. Je m'en vais de l� avant que les CopBots viennent et ouvrent le feu.")
		ENDDIALOG()

	NODE(6)
		SAY("Exactement! Pas dans cette ville st�rile et technologique. Il faut faire quelque chose...",5)
		
	NODE(7)
		SAY("Crois ce que tu veux, de toute fa�on je t'�coute plus. Allez, au revoir.")
		ENDDIALOG()

	NODE(8)
		SAY("Plein de choses! On peut redonner au monde un peu de vitalit�! Mais pour commencer, il faut d�truire...",9)
		SAY("Rien, rien du tout. L'�coutez pas, cet abruti, il radote compl�tement!",10)
	
	NODE(9)
		SAY("NON! Pas ici, pas maintenant! Il y a des gens qui �coutent.")
		SAY("Tais-toi, j'aime pas la fa�on dont on nous regarde.")
		SAY("On va en parler, mais pas ici. On est �cout�s.")
		ENDDIALOG()
	
	NODE(10)
		SAY("NON MAIS! On devrait aller parler de �a dans les Terres Br�l�es, on verra la t�te que tu feras.")
		SAY("Tu dois avoir raison. Je sais pas. C'est trop compliqu�, ce monde.")
		SAY("Traite-moi encore une fois d'abruti et je te coupe en cubes!")
		ENDDIALOG()
end