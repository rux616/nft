function DIALOG()

	NODE(0)
		SAY("Salutationd runner, c'est la premi�re fois que je vous vois. Vous venez d'arriver?")
		ANSWER("En effet, et j'ai un abominable mal de cr�ne!",40)
			

		
	NODE(2)	
		SAY("Durant ma vie, j'ai vu beaucoup de choses, et je sais ce qui peut conduire � la r�ussite ou � l'�chec.")
		ANSWER("Et qu'est-ce que je dois faire pour devenir un bon moine Psi?",3)
		
	NODE(3)
		SAY("Tout d'abord, vous devez int�grer le fait que vos capacit�s physiques sont loin d'�tre excellentes.")
		ANSWER("C'est � dire?",4)

	NODE(4)
		SAY("En clair, vous ne vous distinguerez pas par une force titanesque ou une dext�rit� � toute �preuve.")
		ANSWER("Alors, quels sont mes choix?",5)

	NODE(5)	
		SAY("Votre meilleure arme dans ce monde de brutes, c'est votre esprit. Apprenez � l'utiliser, et vous vous �l�verez au-dessus de la masse. Vous devez profiter de toutes les opportunit�s qui s'offrent � vous.")
		ANSWER("Dites-m'en plus.",6)

	NODE(6)
		SAY("Par exemple, vous pouvez d�velopper les aspects offensifs de vos pouvoirs. Je sais que certains modules produisent des effets absolument terrifiants!")
		ANSWER("Et si je voulais quelque chose de plus paisible?",7)
			
	NODE(7)
		SAY("Alors je vous conseille plut�t les modules d�fensifs. Vous pourrez ainsi �tre d'un grand secours aux autres runners, en les soignant et en am�liorant leurs d�fenses.")
		ANSWER("Et si je ne veux pas du tout combattre, que puis-je faire? Que faire quand il n'y a personne � combattre?",8)

	NODE(8)
		SAY("En ces temps troubl�s, il y a toujours quelqu'un � combattre, m�me si c'est un petit mutant qui tente de vous surprendre par derri�re.")
		ANSWER("Je comprends bien, mais � part combattre, est-ce que j'ai des options? Si jamaus je voulais juste �tre tranquille...",9)		
		
	NODE(9)
		SAY("Vous pouvez utiliser votre intelligence sup�rieure pour poser des implants sur d'autres runners. Mais si �a n'est pas votre truc, vous pouvez vous lancer dans la recherche, entre autres. Vous trouverez toujours quelque chose � faire.")
		ANSWER("Par exemple?",10)		

	NODE(10)
		SAY("Parfois, des runners reviennent des Terres Br�l�es avec quelques objets que personne n'arrive � reconna�tre. Mais si vous �tes un tr�s bon chercheur, vous pouvez d�terminer � quoi �a sert, et en faire des objets tr�s puissants. Par exemple, une arme ou un implant.")
		ANSWER("Je peux construire �a moi-m�me?",11)		

	NODE(11)
		SAY("Je vous conseille de laisser les autres faire �a. Vous pouvez toujours essayer, mais vous manquerez de dext�rit� pour avoir de bons r�sultats.")
		ANSWER("Je ne me sens pas particuli�rement maladroit, pourtant. Il n'y a rien que je puisse faire pour arranger �a?",12)		

	NODE(12)
		SAY("Voyons voir... Il y a bien quelques petites choses que vous pourriez faire pour devenir plus habile de vos mains. Vous pourriez par exemple devenir pilote, conduire le genre de v�hicules que vous trouverez juste en sortant d'ici. Vous pourriez aussi gagner votre vie en r�parant des choses.")
		ANSWER("Apr�s tout, j'ai plut�t un bon choix!",13)		

	NODE(13)
		SAY("En effet. Maintenant, vous allez devoir trouver ce qui vous pla�t.")
		ANSWER("Merci, c'est un sacr� coup de main que vous me donnez l�. Je vais m'en aller, j'ai envie d'essayer tout �a. Merci l'ami, et au revoir!",14)		

	NODE(14)
		SAY("Amusez-vous bien! Au revoir!")
		ENDDIALOG()	


	NODE(40)
		SAY("Je me vois encore quand j'�tais jeune, j'�tais l� o� vous �tes actuellement, et j'en connais gu�re plus que vous!")
		ANSWER("Apparemment, pas mal d'ann�es se sont �coul�es depuis. Dites-moi, j'ai plein de questions qui me trottent dans la t�te, vous pourriez peut-�tre me donner un coup de main?",41)		

	NODE(41)
		SAY("Ce que je peux vous apprendre ne vous aidera que si vous �tes un moine PSI.")
		ANSWER("Ca tombe bien. Je vous �coute.",2)		
		ANSWER("Rat�. Tant pis.",42)	
		
	NODE(42)
		SAY("Trouvez le conseiller qui vous parlera de votre classe, vous apprendrez des choses tr�s utiles.")
		ENDDIALOG()	
end
