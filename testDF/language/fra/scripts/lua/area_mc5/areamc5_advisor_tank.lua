function DIALOG()

	NODE(0)
		SAY("Bonjour, c'est la première fois que je vous vois ici, vous m'avez l'air un peu désorienté... Je peux vous aider?")
		ANSWER("C'est pas de refus.",50)
			
	NODE(1)
		SAY("Vous êtes un tank, un combattant né. Vos principaux atouts sont votre force et votre constitution. Vous pouvez donc encaisser un nombre important de coups, et utiliser des armes lourdes. En combat rapproché, vous pouvez également utiliser des armes de mêlée.")
		ANSWER("Dites-m'en plus sur mes capacités.",2)		
		ANSWER("Les armes lourdes, ça m'intéresse.",4)
		ANSWER("Des armes de mêlée? C'est pas un peu passé de mode?",5)
		
		
	NODE(2)	
		SAY("Comme je vous l'ai déjà dit, vous avez une grande force et une grande résistance. Votre force vous aide à transporter des choses pesantes, et à utiliser des armes lourdes. Votre constitution est tout aussi importante. Par rapport aux autres runners, vous pourrez encaisser beaucoup plus de coups, et résister beaucoup plus efficacement. N'oubliez pas : les résistance sont souvent plus importante que la vitalité pure...")
		ANSWER("Et les autres spécialisations?",3)
		
	NODE(3)
		SAY("Un tank n'est pas très intelligent, et il est encore plus mauvais en pouvoirs Psi. Vous devrez vous concentrer seulement sur les choses les plis basiques. Par exemple, en intelligence je vous recommande Weapon Lore, cela vous permettra de viser plus efficacement.")
		ANSWER("Vous parliez de canons, tout à l'heure...",4)

	NODE(4)
		SAY("Les canons sont des armes lourdes qui demandent beaucoup de force pour être manipulés efficacement. De plus, vous devrez favoriser vos compétences de combat à l'arme lourde et de combat high tech si vous voulez utiliser les canons à plasma les plus courants. Un petit conseil : plus vous avez un niveau élevé en compétences de combat, plus vous ferez mal à votre adversaire.")
		ANSWER("Compris. Les armes de mêlée, c'est pas vraiment utile, donc.",5)

	NODE(5)	
		SAY("Les récents développements technologiques ont permis de créer des armes de combat rapproché qui sont dévastatrices au corps à corps. Pour ce genre d'armes, il vous faudra apprendre la mêlée. Pour certaines de ces armes, vous devrez également développer la compétence High Tech. Le combat rapproché est très efficace contre tous types de monstres, mais il faut bien vous équiper au préalable. J'ai un conseil pour vous : lorsque vous combattez d'autres runners, c'est difficile d'arriver au contact, et dans ce cas une arme lourde sera plus efficace. L'adversaire sait que vous êtes dangereux au corps à corps, il ne se laissera pas approcher facilement.")
		ANSWER("Compris. Ca m'a l'air très intéressant, tout ça. Vous m'avez appris pas mal de choses, je vais aller mettre tout ça en pratique.",6)

	NODE(6)
		SAY("D'accord. Faites attention à vous.")
		ENDDIALOG()	



	NODE(50)
		SAY("Avant toute chose : ce que je vais vous dire ne pourra vous aider que si vous êtes un GENTANK.")
		ANSWER("Ca tombe bien, j'en suis un. Je vous écoute.",1)		
		ANSWER("Pas de chance... au revoir.",51)	
		
	NODE(51)
		SAY("Trouvez le conseiller qui vous parlera de votre classe, vous apprendrez des choses très utiles.")
		ENDDIALOG()
end
