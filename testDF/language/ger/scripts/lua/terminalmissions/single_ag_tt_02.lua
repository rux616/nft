--************************
--name   : SINGLE_AG_TT_02.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/08(0.1): recheck(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		SAY("Hallo Buerger, was kann ich fuer sie tun?")
		SAY("Guten Tag Buerger, wie kann ich ihnen helfen?")
		SAY("Ja, Buerger? Wie kann ich helfen?")
		
		ANSWER("Ich habe mich fuer die Ungeziefer exterminierung angemeldet.",1)
		ANSWER("Ich bin hier fuer die Ungeziefer Extermination.",1)
		ANSWER("Vergiss es. Tschuess.",3)
	NODE(1)
		SAY("Wir haben ein oertliches Problem mit den %TARGET_NPCNAME(0). Diese kleinen Bastarde kommen ueberall hin. Gehe zu den naechsten Abwasserkanaelen und toete etwa %TARGET_VALUE(0,1) von denen. Wenn sie damit fertig sind kommen sie hierher zurueck und uns wird schon eine geeignete Belohnung einfallen.") 
		SAY("Tangent Technologies beschaeftigt sich nicht ausschliesslich mit Produktion und Profit. Wir versuchen der Neocron community etwas zurueck zu geben. Im Moment gibt es ein echtes Problem mit einer lokalen Infektion von %TARGET_NPCNAME(0) . Wir wollen gerne so gesehen werden, das wir dabei helfen die Stadt aufzuraeumen. Also begeben sie sich zu den naechsten Abflusskanaelen und falls sie es schaffen %TARGET_VALUE(0,1) von denen zu erlegen, qualifizieren sie sich fuer eine Tangent Technologies Praemie fuer das aufraeumen der Stadt. Ich bin dabei persoenlich authorisiert diese zu vergeben.")    
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Was machen sie hier noch? Gehen sie und erledigen sie ihre Arbeit!! Ich habe keine Zeit zu verschwenden.")
				SAY(" Was denken sie, was sie hier machen? Ich bat sie die Arbeit fuer mich zu erledigen und nicht mit mir zu diskutieren! Und nun gehen sie!!")
				ENDDIALOG()
			else
				SAY("Gute Arbeit. Hier ist ihre Belohnung, %REWARD_MONEY() Credits. Nutze die Terminals um weitere Jobs zu bekommen. Wir brauchen qualifiziertes Personal wie sie. Haben sie noch einen schoenen und produktiven Tag. Auf Wiedersehen.")
				SAY("Sehr gut Runner. Hier sind ihre %REWARD_MONEY() Credits. Falls sie sich noch fuer einen weiteren Job interessieren, nutzen sie die Terminals. Danke und auf Wiedersehen!") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Wiedersehen.")
		SAY("Kommen sie zurueck wenn sie wissen was sie wollen. Auf Wiedersehen")
		ENDDIALOG()
	
end