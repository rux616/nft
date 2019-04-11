function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anhänger
				SAY("Yo man.")
				ANSWER("Sympa, votre jeep!",50)	
			else
			-- Fall 2: Reza Feind
				SAY("Yo man.")
				ANSWER("Sympa, votre jeep!",1)	
				ANSWER("Comme convenu, j'ai quelque chose pour vous.",10)
				ANSWER("J'ai parlé au coordinateur. Il m'a dit que je pourrais gagner un peu d'argent en vous donnant un coup de main. C'est exact?",10)
				ANSWER("J'ai besoin de quelque chose. Vous pouvez m'aider?",40)
				
			end
		
	NODE(1)
		SAY("Ouais, ça vous pouvez le dire. C'est tout ce que j'ai au monde.")
		ANSWER("Je peux faire un petit tour avec?",2)	
		

	NODE(2)
		SAY("Bas les pattes! Personne a le droit d'y toucher! Si vous en voulez un, faudra vous le payer.")
		ANSWER("Si j'en juge par l'état de mes finances, ça va mettre un bon bout de temps.",3)		
	
	NODE(3)
		SAY("Pas de chance pour vous. Vous avez parlé au coordinateur?")
		ANSWER("Non, pas encore. Je devrais?",4)	
		ANSWER("Ouaip. Il m'a donné une mission. Je vais vous aider. Il a aussi dit que je pourrais me faire un peu d'argent, c'est vrai?",6)		
		
	NODE(4)
		SAY("Absolument. Nous chercons des gens capables de nous aidr. Mais il vous expliquera tout ça bien mieux que moi.")
		ANSWER("D'accord, je vais discuter un peu avec lui.",5)	

	NODE(5)
		SAY("Good. When you know about everything, come back. You an earn some extra cash from me working for me.")
		ENDDIALOG()

	NODE(6)
		SAY("C'est exact. Moi, ce que je recherche ce sont des composants de véhicules.")
		ANSWER("Et comment est-ce que j'en obtiens?",7)	
	
	NODE(7)
		SAY("Si vous voulez vous attaquer aux SecBots, il va d'abord falloir vous entraîner un peu. Si vous abattez d'autres choses, vous pouvez ensuite ramasser ce qui se trouve sur leur cadavre. Vous n'avez qu'à viser le cadavre et à l' 'utiliser'")
		ANSWER("Et donc, j'ai des chances de trouver des composants de véhicules sur les cadavres. Vous en voulez combien?",8)		
	
	NODE(8)	
		SAY("Si j'en ai moins de trois, je ne pourrai rien faire. Ce qu'il me faut, c'est des numéro 1, de 2 ou des 3. Trois de chaque, donc. Apportez-moi ça, je saurai quoi en faire.")
		ANSWER("Compris, je vais m'y mettre. Et... merci.",9)

	NODE(9)	
		SAY("Pas de problème. Apportez-moi ce que je veux, et on fera affaires.")
		ENDDIALOG()		
	
	NODE(10)
		TAKEITEMCNT(5130,3)
		if (result==1) then
			SAY("Excellent. 3 composants numéro 1. Je prends.")
			ANSWER("Une minute! Vous me donnez quoi en échange?",11)	
		else
			TAKEITEMCNT(5131,3)
			if (result==1) then
				SAY("Trois composants numéro 2. C'est bon, donnez-moi ça.")
				ANSWER("Je veux mon argent! Vous allez me payer combien?",11)	
			else
				TAKEITEMCNT(5132,3)
				if (result==1) then
					SAY("Trois composants 3. C'est parfait. Donnez-moi ça.")
					ANSWER("Attendez! Ca me rapporte quoi?",11)	
				else
					SAY("Je vous ai dit trois composants d'une sorte. Je prends tout ce que vous trouvez, des composants 1 à 3. Alors n'essayez pas de vous payer ma tête!")
					ENDDIALOG()
				end
			end
		end

	NODE(11)	
		SAY("Trois composants... C'est 350 crédits.")
		ANSWER("Marché conclu.",12)
		ANSWER("Ca me va.",12)
		ANSWER("Pas question. 600, ou bien je vais voir quelqu'un d'autre.",13)
		ANSWER("350? Soit vous me donnez 600, soit je vais voir quelqu'un d'autre.",13)
		ANSWER("Vous êtes tombé sur la tête! Je ne me suis pas tapé tout le boulot pour me faire escroquer!",14)
		ANSWER("Eh, c'est une insulte ou quoi? 1800, ou bien vous en verrez jamais la couleur.",14)
		ANSWER("900, pas un crédit de moins. Vos 350, vous savez où vous pouvez vous les mettre.",14)

	NODE(12)	
		SAY("Excellent. Revenez si vous en trouvez d'autres.")
		GIVEMONEY(350)
		ENDDIALOG()

	NODE(13)	
		SAY("Bon... 550, c'est le plus haut que je peux vous offrir. Revenez quand vous en avez d'autres.")
		GIVEMONEY(550)		
		ENDDIALOG()

	NODE(14)	
		SAY("Ne jouez pas au plus mallin avec moi. Si vous continuez comme ça, je garde tout sans vous payez. Revenez quand vous en aurez plus, et on parlera affaires.")
		ENDDIALOG()


	
		
	NODE(40)
		SAY("Qu'est-ce qu'il vous faut?")
		TRADE()
		ENDDIALOG()




	NODE(50)
		SAY("Ouais, ça vous pouvez le dire. C'est tout ce que j'ai au monde.")
		ANSWER("Je peux faire un petit tour avec?",2)	
	
	NODE(51)
		SAY("Bas les pattes! Personne a le droit d'y toucher! Si vous en voulez un, faudra vous le payer.")
		ANSWER("Si j'en juge par l'état de mes finances, ça va mettre un bon bout de temps.",3)		
	
	NODE(52)
		SAY("Tant pis pour vous.")
		ENDDIALOG()
		
end
