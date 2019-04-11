function DIALOG()

	NODE(0)
		SAY("Salutationd runner, c'est la première fois que je vous vois. Vous venez d'arriver?")
		ANSWER("En effet, et j'ai un abominable mal de crâne!",40)
			

		
	NODE(2)	
		SAY("Durant ma vie, j'ai vu beaucoup de choses, et je sais ce qui peut conduire à la réussite ou à l'échec.")
		ANSWER("Et qu'est-ce que je dois faire pour devenir un bon moine Psi?",3)
		
	NODE(3)
		SAY("Tout d'abord, vous devez intégrer le fait que vos capacités physiques sont loin d'être excellentes.")
		ANSWER("C'est à dire?",4)

	NODE(4)
		SAY("En clair, vous ne vous distinguerez pas par une force titanesque ou une dextérité à toute épreuve.")
		ANSWER("Alors, quels sont mes choix?",5)

	NODE(5)	
		SAY("Votre meilleure arme dans ce monde de brutes, c'est votre esprit. Apprenez à l'utiliser, et vous vous élèverez au-dessus de la masse. Vous devez profiter de toutes les opportunités qui s'offrent à vous.")
		ANSWER("Dites-m'en plus.",6)

	NODE(6)
		SAY("Par exemple, vous pouvez développer les aspects offensifs de vos pouvoirs. Je sais que certains modules produisent des effets absolument terrifiants!")
		ANSWER("Et si je voulais quelque chose de plus paisible?",7)
			
	NODE(7)
		SAY("Alors je vous conseille plutôt les modules défensifs. Vous pourrez ainsi être d'un grand secours aux autres runners, en les soignant et en améliorant leurs défenses.")
		ANSWER("Et si je ne veux pas du tout combattre, que puis-je faire? Que faire quand il n'y a personne à combattre?",8)

	NODE(8)
		SAY("En ces temps troublés, il y a toujours quelqu'un à combattre, même si c'est un petit mutant qui tente de vous surprendre par derrière.")
		ANSWER("Je comprends bien, mais à part combattre, est-ce que j'ai des options? Si jamaus je voulais juste être tranquille...",9)		
		
	NODE(9)
		SAY("Vous pouvez utiliser votre intelligence supérieure pour poser des implants sur d'autres runners. Mais si ça n'est pas votre truc, vous pouvez vous lancer dans la recherche, entre autres. Vous trouverez toujours quelque chose à faire.")
		ANSWER("Par exemple?",10)		

	NODE(10)
		SAY("Parfois, des runners reviennent des Terres Brûlées avec quelques objets que personne n'arrive à reconnaître. Mais si vous êtes un très bon chercheur, vous pouvez déterminer à quoi ça sert, et en faire des objets très puissants. Par exemple, une arme ou un implant.")
		ANSWER("Je peux construire ça moi-même?",11)		

	NODE(11)
		SAY("Je vous conseille de laisser les autres faire ça. Vous pouvez toujours essayer, mais vous manquerez de dextérité pour avoir de bons résultats.")
		ANSWER("Je ne me sens pas particulièrement maladroit, pourtant. Il n'y a rien que je puisse faire pour arranger ça?",12)		

	NODE(12)
		SAY("Voyons voir... Il y a bien quelques petites choses que vous pourriez faire pour devenir plus habile de vos mains. Vous pourriez par exemple devenir pilote, conduire le genre de véhicules que vous trouverez juste en sortant d'ici. Vous pourriez aussi gagner votre vie en réparant des choses.")
		ANSWER("Après tout, j'ai plutôt un bon choix!",13)		

	NODE(13)
		SAY("En effet. Maintenant, vous allez devoir trouver ce qui vous plaît.")
		ANSWER("Merci, c'est un sacré coup de main que vous me donnez là. Je vais m'en aller, j'ai envie d'essayer tout ça. Merci l'ami, et au revoir!",14)		

	NODE(14)
		SAY("Amusez-vous bien! Au revoir!")
		ENDDIALOG()	


	NODE(40)
		SAY("Je me vois encore quand j'étais jeune, j'étais là où vous êtes actuellement, et j'en connais guère plus que vous!")
		ANSWER("Apparemment, pas mal d'années se sont écoulées depuis. Dites-moi, j'ai plein de questions qui me trottent dans la tête, vous pourriez peut-être me donner un coup de main?",41)		

	NODE(41)
		SAY("Ce que je peux vous apprendre ne vous aidera que si vous êtes un moine PSI.")
		ANSWER("Ca tombe bien. Je vous écoute.",2)		
		ANSWER("Raté. Tant pis.",42)	
		
	NODE(42)
		SAY("Trouvez le conseiller qui vous parlera de votre classe, vous apprendrez des choses très utiles.")
		ENDDIALOG()	
end
