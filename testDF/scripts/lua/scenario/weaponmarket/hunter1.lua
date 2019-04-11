function DIALOG()

	NODE(0)
		SAY("Hi Shorty!")
		ANSWER("Hunter?",1)
				
	NODE(1)
		SAY("Yeah we are. Me 'n my partner, we're the best of hunters. The best in the whole area.")
		ANSWER("And what are you hunting?",2)
				
	NODE(2)
		SAY("Creatures. Just creatures. The big ones, Doomreaper and such.")
		ANSWER("And your prefered technique?",3)
	
	NODE(3)
		SAY("Tank. We ride in a tank. Nothing standard. All improved, you know. Engine and armour. And the gun has also been changed. Copbot!")
		ANSWER("What? Copbot Technology? How did you ever get hold of that?",4)	

	NODE(4)
		SAY("Ha. All our pride. Everybody wants it-we've got it.")
		ANSWER("Yes,yes but where from?",100)
		ANSWER("Bragger!",101)
			
	NODE(100)
		SAY("I must admit, you are a persistant one. Forget it. We won't reveal our source.")
		ENDDIALOG()	

	NODE(101)
		SAY("Watch it, Shorty. I don't like the sound of what you say. Get out of my eyes and don't get in front of my tracks!")
		ENDDIALOG()
		
end