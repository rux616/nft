function DIALOG()

	NODE(0)
		SAY("....AARRHGGGGNNNN....!")
		ANSWER("H�, mec, un probl�me?",1)
				
	NODE(1)
		SAY("...Je vais touuuuuuuuusssss vous tueeeeeeeerrrrr....")
		ANSWER("T'es en train de p�ter une durite, mec. Fais attention � qui tu parles comme �a, certains pourraient mal le prendre.",2)
		ANSWER("HAHAH. Pauvre naze! T'as pris une dose de trop, on dira�t!",101)
		
	NODE(2)
		SAY("...JAAA....GNNNHH...coupeeeerrrrr oreiiiiilllleeee!!!!!")
		ANSWER("Ouais, ouais, c'est �a...",100)
			
	NODE(100)
		SAY("...AARRHGGGGNNNN....!")
		ENDDIALOG()	

	NODE(101)
		SAY("Tueeeeeeeeerrrrr....!")
		ATTACK()
		
end