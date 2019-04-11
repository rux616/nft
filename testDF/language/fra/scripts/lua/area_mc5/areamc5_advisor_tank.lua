function DIALOG()

	NODE(0)
		SAY("Bonjour, c'est la premi�re fois que je vous vois ici, vous m'avez l'air un peu d�sorient�... Je peux vous aider?")
		ANSWER("C'est pas de refus.",50)
			
	NODE(1)
		SAY("Vous �tes un tank, un combattant n�. Vos principaux atouts sont votre force et votre constitution. Vous pouvez donc encaisser un nombre important de coups, et utiliser des armes lourdes. En combat rapproch�, vous pouvez �galement utiliser des armes de m�l�e.")
		ANSWER("Dites-m'en plus sur mes capacit�s.",2)		
		ANSWER("Les armes lourdes, �a m'int�resse.",4)
		ANSWER("Des armes de m�l�e? C'est pas un peu pass� de mode?",5)
		
		
	NODE(2)	
		SAY("Comme je vous l'ai d�j� dit, vous avez une grande force et une grande r�sistance. Votre force vous aide � transporter des choses pesantes, et � utiliser des armes lourdes. Votre constitution est tout aussi importante. Par rapport aux autres runners, vous pourrez encaisser beaucoup plus de coups, et r�sister beaucoup plus efficacement. N'oubliez pas : les r�sistance sont souvent plus importante que la vitalit� pure...")
		ANSWER("Et les autres sp�cialisations?",3)
		
	NODE(3)
		SAY("Un tank n'est pas tr�s intelligent, et il est encore plus mauvais en pouvoirs Psi. Vous devrez vous concentrer seulement sur les choses les plis basiques. Par exemple, en intelligence je vous recommande Weapon Lore, cela vous permettra de viser plus efficacement.")
		ANSWER("Vous parliez de canons, tout � l'heure...",4)

	NODE(4)
		SAY("Les canons sont des armes lourdes qui demandent beaucoup de force pour �tre manipul�s efficacement. De plus, vous devrez favoriser vos comp�tences de combat � l'arme lourde et de combat high tech si vous voulez utiliser les canons � plasma les plus courants. Un petit conseil : plus vous avez un niveau �lev� en comp�tences de combat, plus vous ferez mal � votre adversaire.")
		ANSWER("Compris. Les armes de m�l�e, c'est pas vraiment utile, donc.",5)

	NODE(5)	
		SAY("Les r�cents d�veloppements technologiques ont permis de cr�er des armes de combat rapproch� qui sont d�vastatrices au corps � corps. Pour ce genre d'armes, il vous faudra apprendre la m�l�e. Pour certaines de ces armes, vous devrez �galement d�velopper la comp�tence High Tech. Le combat rapproch� est tr�s efficace contre tous types de monstres, mais il faut bien vous �quiper au pr�alable. J'ai un conseil pour vous : lorsque vous combattez d'autres runners, c'est difficile d'arriver au contact, et dans ce cas une arme lourde sera plus efficace. L'adversaire sait que vous �tes dangereux au corps � corps, il ne se laissera pas approcher facilement.")
		ANSWER("Compris. Ca m'a l'air tr�s int�ressant, tout �a. Vous m'avez appris pas mal de choses, je vais aller mettre tout �a en pratique.",6)

	NODE(6)
		SAY("D'accord. Faites attention � vous.")
		ENDDIALOG()	



	NODE(50)
		SAY("Avant toute chose : ce que je vais vous dire ne pourra vous aider que si vous �tes un GENTANK.")
		ANSWER("Ca tombe bien, j'en suis un. Je vous �coute.",1)		
		ANSWER("Pas de chance... au revoir.",51)	
		
	NODE(51)
		SAY("Trouvez le conseiller qui vous parlera de votre classe, vous apprendrez des choses tr�s utiles.")
		ENDDIALOG()
end
