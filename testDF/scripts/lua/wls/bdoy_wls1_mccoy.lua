--************************
--name   : bdoy_wls1_mccoy.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/07
--lang   : en
--desc	 : Missionscript for "The Juggernaut Crossbow", non mission script Frank McCoy
--npc    : Frank McCoy
--************************
--changelog:
--2004/09/26(0.1): header added(Ferron)
--************************

-- non mission script Frank McCoy - The guy that decrypts the diary if mission on

function DIALOG()

	NODE(0)
		SAY("Hello, i dont buy nothing so piss off!")
		ANSWER("I dont want to sell anything but use your services", 1)
		ANSWER("Hey mind your language man!", 5)
		
	NODE(1)
		SAY("Aha so i provide services, who told you such a thing?")
		ANSWER("A friend told me.", 2)
	
	NODE(2)
		SAY("Oh hmm then he maybe is right, i provide some services related to electronics and crypting data. I am right now busy come later.")
		ENDDIALOG()
	
	NODE(5)
		SAY("Hmm ok sorry , i am really busy right now so please let me work. Thank you.")
		ANSWER("This is better.", 6)
			
	NODE(6)	
		SAY("Ok then, bye.")
		ENDDIALOG()
		
	
end

