function DIALOG()

	NODE(0)
		SAY("Sa... salut! J'ai des *HIPS* des suuuuper projets...")
		
		ANSWER("Des projets? Tu devrais pas d'abord redescendre sur terre.",1)
		ANSWER("T'es bourr�! Tais-toi!",100)
		
	NODE(1)
		SAY("J'ai perd...*HIPS* perdu plein de pognon contre le gars qu'est l�-bas... *HIPS* Et faut que j'en regagne... *HIPS* Que j'en regagne un peu... *HIPS* Faut que je me reprenne!")
		ANSWER("Ahhh tu pues l'alcool! Et pourquoi tu me racontes �a, � moi?",2)
		
	NODE(2)
		timesplayed=0
		SAY("Tu vas... *HIPS* me donner 200 creds, et je vais jouer... *HIPS* � la rouuuulette russe!! Si je meurs, tu *HIPS* prends tout ce que j'ai, et si je gagne, le *HIPS* paquet est � moi. Alors, t'es *HIPS* partant?")
		ANSWER("T'es malade! Mais �a me pla�t, tiens, voil� 200 creds. Maintenant, fais-moi plaisir, meurs!",3)
		ANSWER("T'en tiens une sacr�e couche... D'accord pour 200!",3)

		ANSWER("D�gage!",100)
		
	NODE(3)
		TAKEMONEY(200)
			if( result==1 ) then
				SAY("Allez c'est parti!")
				SAY("Et on d�colle! 1 chance sur 6..!")
				ANSWER("Allez, tire!",4)
				ANSWER("Lance-toi!",4)
				timesplayed=timesplayed+1
			else
				SAY("H�����, je suis pas *HIPS* bourr� encore! Pas de pognon, je joue pas!")
				ENDDIALOG()
			end

	NODE(4)
		RAND(6)
			if( result==0 ) then
				RAND(1000)
				bill=(timesplayed*200)+result
				GIVEMONEY(bill)
				SAY("*BOOMMM*")
				DIE()
				ENDDIALOG()
			else
				SAY("....Ouah... encore une? *HICK* ")
				ANSWER("T'es un malade! Mais tiens, voil� 200 creds!",3)
				ANSWER("T'es compl�tement dingue! Tiens, voil� 200 creds pour terminer en beaut�!",100)
			end			
	NODE(5)
	
		SAY("Mais tu peux *HIPS* dire ce que tu veux, je l'ai fait! Je l'ai fait!")
		ENDDIALOG()

	NODE(100)
		SAY("Mec, c'est quoi ton *HIPS* probl�me! Parle pas comme �a!")
		ENDDIALOG()	

		
end