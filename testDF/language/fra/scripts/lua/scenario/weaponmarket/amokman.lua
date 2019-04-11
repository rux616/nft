function DIALOG()

	NODE(0)
		SAY("....AARRHGGGGNNNN....!")
		ANSWER("Hé, mec, un problème?",1)
				
	NODE(1)
		SAY("...Je vais touuuuuuuuusssss vous tueeeeeeeerrrrr....")
		ANSWER("T'es en train de péter une durite, mec. Fais attention à qui tu parles comme ça, certains pourraient mal le prendre.",2)
		ANSWER("HAHAH. Pauvre naze! T'as pris une dose de trop, on diraît!",101)
		
	NODE(2)
		SAY("...JAAA....GNNNHH...coupeeeerrrrr oreiiiiilllleeee!!!!!")
		ANSWER("Ouais, ouais, c'est ça...",100)
			
	NODE(100)
		SAY("...AARRHGGGGNNNN....!")
		ENDDIALOG()	

	NODE(101)
		SAY("Tueeeeeeeeerrrrr....!")
		ATTACK()
		
end