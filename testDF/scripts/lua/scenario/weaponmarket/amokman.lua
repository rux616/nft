function DIALOG()

	NODE(0)
		SAY("....AARRHGGGGNNNN....!")
		ANSWER("Hey man, what`s the matter with you?",1)
				
	NODE(1)
		SAY("...I`m gonnnnnnaah…killlll the lot ...off youuuuuh....")
		ANSWER("My god, man.Your going amok. You should rather watch out that nobody gets that into the wrong ear",2)
		ANSWER("HAHAH. You bum!Ol'Shorty here is a bit overirritated!",101)
		
	NODE(2)
		SAY("...JAAA....GNNNHH...Ear is goood...cut off!!!!!")
		ANSWER("I think I rather go...",100)
			
	NODE(100)
		SAY("...AARRHGGGGNNNN....!")
		ENDDIALOG()	

	NODE(101)
		SAY("Killllll....!")
		ATTACK()
		
end