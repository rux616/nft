-- this is that political insurgent and 2 other guys dialogue, not sure how well it'll work though

function DIALOG()

	NODE(0)
		SAY("Tout ça, c'est la faute à Reza! C'est cet imbécile qui fait du mal à Neocron!",1)
		SAY("T'as rien compris du tout. Ce que je veux dire, c'est que c'est pas une vie normale!",2)
		SAY("Pour une fois dans ta vie de minable, est-ce que tu vas te décider à m'écouter?",3)

	NODE(1)
		SAY("Mais non, Reza a fait beaucoup de choses bien.",4)
		SAY("T'as raison! On va aller le plomber tout de suite!",5)
	
	NODE(2)
		SAY("Tu la veux comment, ta vie? Avez de l'herbe et des arbres partout, et des araignées grosses comme des ours?",6)
		SAY("Ouais, t'as raison. Tout fout le camp. Mais qu'est-ce qu'on peut y faire?",8)

	NODE(3)
		SAY("NON! Je veux plus t'écouter, toi et tes théories débiles!")
		SAY("Euh... ouais, d'accord, si tu veux, mais on va faire ça dans un endroit un peu moins public.")
		ENDDIALOG()

	NODE(4)
		SAY("HA! Tout ce qu'il a fait, c'est pour les riches. Il est temps de reprendre Neocron...",5)
		SAY("Ouais, t'as aucune vision politique, toi.",7)
	
	NODE(5)
		SAY("CHHHHHutttt... Tu sais ce qu'ils vont nous faire s'ils nous entendent?")
		SAY("Ouais, et... euh... voilà quelqu'un, on reparlera de ça plus tard.")
		SAY("Pas si fort! C'est pas l'endroit pour parler de ça!")
		SAY("Vous êtes tous complètement tarés. Je m'en vais de là avant que les CopBots viennent et ouvrent le feu.")
		ENDDIALOG()

	NODE(6)
		SAY("Exactement! Pas dans cette ville stérile et technologique. Il faut faire quelque chose...",5)
		
	NODE(7)
		SAY("Crois ce que tu veux, de toute façon je t'écoute plus. Allez, au revoir.")
		ENDDIALOG()

	NODE(8)
		SAY("Plein de choses! On peut redonner au monde un peu de vitalité! Mais pour commencer, il faut détruire...",9)
		SAY("Rien, rien du tout. L'écoutez pas, cet abruti, il radote complètement!",10)
	
	NODE(9)
		SAY("NON! Pas ici, pas maintenant! Il y a des gens qui écoutent.")
		SAY("Tais-toi, j'aime pas la façon dont on nous regarde.")
		SAY("On va en parler, mais pas ici. On est écoutés.")
		ENDDIALOG()
	
	NODE(10)
		SAY("NON MAIS! On devrait aller parler de ça dans les Terres Brûlées, on verra la tête que tu feras.")
		SAY("Tu dois avoir raison. Je sais pas. C'est trop compliqué, ce monde.")
		SAY("Traite-moi encore une fois d'abruti et je te coupe en cubes!")
		ENDDIALOG()
end