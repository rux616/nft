--************************
--name   : bdoy_wls1_mccoy.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/07
--lang   : de
--desc	 : Missionscript for "The Juggernaut Crossbow", non mission script Frank McCoy
--npc    : Frank McCoy
--************************
--changelog:
--2004/09/26(0.1): header added(Ferron)
--************************

-- non mission script Frank McCoy - The guy that decrypts the diary if mission on

function DIALOG()

	NODE(0)
		SAY("Hey, Mann, verpiss Dich! Ich kaufe Nichts.")
		ANSWER("Ich will doch gar nichts verkaufen, sondern bin wegen Deiner besonderen Dienste hier.", 1)
		ANSWER("Hey, pass' auf was Du sagst, Mann!", 5)
		
	NODE(1)
		SAY("Aha, ich biete also Dienste an? Wer hat Dir denn so was erzählt?")
		ANSWER("Ein Freund.", 2)
	
	NODE(2)
		SAY("Oh. Hmm. Dann hast Du wohl recht. Ich biete Dienstleistungen im Zusammenhang mit Elektronik und dem Entschlüsseln von Daten an. Im Moment bin ich beschäftigt - komm später wieder.")
		ENDDIALOG()
	
	NODE(5)
		SAY("Hmm, ok sorry, aber im Moment bin ich wirklich beschäftigt. Lass mich bitte in Ruhe weiterarbeiten. Danke.")
		ANSWER("Ja, das hört sich schon besser an.", 6)
			
	NODE(6)	
		SAY("Ok, bye.")
		ENDDIALOG()
		
	
end

