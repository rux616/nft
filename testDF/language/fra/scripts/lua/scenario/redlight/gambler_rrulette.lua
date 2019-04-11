function DIALOG()

	NODE(0)
		SAY("Sa... salut! J'ai des *HIPS* des suuuuper projets...")
		
		ANSWER("Des projets? Tu devrais pas d'abord redescendre sur terre.",1)
		ANSWER("T'es bourré! Tais-toi!",100)
		
	NODE(1)
		SAY("J'ai perd...*HIPS* perdu plein de pognon contre le gars qu'est là-bas... *HIPS* Et faut que j'en regagne... *HIPS* Que j'en regagne un peu... *HIPS* Faut que je me reprenne!")
		ANSWER("Ahhh tu pues l'alcool! Et pourquoi tu me racontes ça, à moi?",2)
		
	NODE(2)
		timesplayed=0
		SAY("Tu vas... *HIPS* me donner 200 creds, et je vais jouer... *HIPS* à la rouuuulette russe!! Si je meurs, tu *HIPS* prends tout ce que j'ai, et si je gagne, le *HIPS* paquet est à moi. Alors, t'es *HIPS* partant?")
		ANSWER("T'es malade! Mais ça me plaît, tiens, voilà 200 creds. Maintenant, fais-moi plaisir, meurs!",3)
		ANSWER("T'en tiens une sacrée couche... D'accord pour 200!",3)

		ANSWER("Dégage!",100)
		
	NODE(3)
		TAKEMONEY(200)
			if( result==1 ) then
				SAY("Allez c'est parti!")
				SAY("Et on décolle! 1 chance sur 6..!")
				ANSWER("Allez, tire!",4)
				ANSWER("Lance-toi!",4)
				timesplayed=timesplayed+1
			else
				SAY("Hééééé, je suis pas *HIPS* bourré encore! Pas de pognon, je joue pas!")
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
				ANSWER("T'es un malade! Mais tiens, voilà 200 creds!",3)
				ANSWER("T'es complètement dingue! Tiens, voilà 200 creds pour terminer en beauté!",100)
			end			
	NODE(5)
	
		SAY("Mais tu peux *HIPS* dire ce que tu veux, je l'ai fait! Je l'ai fait!")
		ENDDIALOG()

	NODE(100)
		SAY("Mec, c'est quoi ton *HIPS* problème! Parle pas comme ça!")
		ENDDIALOG()	

		
end