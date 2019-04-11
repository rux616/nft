--************************
--name   : SINGLE_AG_AB_02.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/14
--lang   : de
--desc   : terminal mission
--npc    : 
--************************
--changelog:
--2004/09/14(0.1): simple copy from _01 (Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Male
				SAY("Hola, Alter.  Was geht?")
				SAY("Yo, Kumpel. Was zur Hoelle willst du von mir?")
				SAY("Hallo, Kumpel.Was kann ich fuer dich tun?")
		        	
				ANSWER("Bin hier wegen des Exterminations Jobs. Ungeziefer oder sowas. Was muss ich tun?",1)
				ANSWER("Hab mich angemeldet wegen einem Exterminations Jobs. Das Terminal sagt das ich dich ansprechen soll wegen der Details.",1)
				ANSWER("Bin hier nur wegen diesem Exterminations Jobs. Was werd ich killen?",1)
				ANSWER("Kumpel? Ich hab mich wohl in der Strasse geirrt. Tschuess",4)
				ANSWER("Kumpel? Ich hab dich wohl mit jemand verwechselt. Tschuess",4)
				
			
			else -- Female
				SAY("Hola, Alte.  Was geht?")
				SAY("Yo, Mädel. Was zur Hoelle willst du von mir?")
				SAY("Hallo, Chick.Was kann ich fuer dich tun?")
		        	
				ANSWER("Bin hier wegen des Exterminations Jobs. Ungeziefer oder sowas. Was muss ich tun?",1)
				ANSWER("Hab mich angemeldet wegen einem Exterminations Jobs. Das Terminal sagt das ich dich ansprechen soll wegen der Details.",1)
				ANSWER("Bin hier nur wegen diesem Exterminations Jobs. Was werd ich killen?",1)
				ANSWER("Kleine? Ich hab mich wohl in der Strasse geirrt. Tschuess",4)
				ANSWER("Kleine? Ich hab dich wohl mit jemand verwechselt. Tschuess",4)
						
			end

	NODE(1)
		SAY("Nun, denk nicht das es das grosse Abenteuer wird, iss eher nur etwas Übung, echt. Ich will das du, hmm, weiss net, vielleicht %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Oh genau und komm nacher her damit du bezahlt wirst. Oder meinetwegen komm nicht und dann bekommst nix, mir egal.")
		SAY("Super, hab auf dich gewartet. Hab ein einfaches Jagen-Töten für dich. Plätte %TARGET_VALUE(0,1) aus diesen nervtötenden %TARGET_NPCNAME(0). Komm wieder zu mir wenn du fertig bist damit du bezahlt wirst. Oder du vergiss das ganze und lebst mit den Ratten. Mir egal.")
		SAY("OK, was ich für dich habe ist ein einfaches Jagen-Töten. Sagen wir mal dein Ziel ist, hmmm weiss net, %TARGET_NPCNAME(0). Genau, %TARGET_VALUE(0,1) von denen. Töte sie und komm wieder wenn du bezahlt werden willst. Hophop zeit fürs %TARGET_NPCNAME(0) metzeln.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Hey Idiot, was zum Teufel machst du hier wieder? Wenn du den Job nicht hinkriegst verpiss dich, das ist ok dann. Aber lass mich in Ruhe.")
				SAY("Verdammt! Was machst du hier ? Töte %TARGET_NPCNAME(0), hol das Geld. Kapiert?")
				SAY("Hey, wenn du das Geld nicht haben willst ist das ok. Wenn du es doch willst dann geh und töte  %TARGET_NPCNAME(0). Sehr einfach und nun lass mich in Ruhe.")
				ENDDIALOG()
			else
				SAY("Nette Arbeit. Hoffe du hast dich nicht zu sehr besudelt. Hier deine %REWARD_MONEY() credits. Nun raus hier.")
				SAY("Gute Arbeit. Hier deine %REWARD_MONEY() credits. So zu metzeln erhöht den Adrenalinpegel was ? Nun ja hab noch zu tun bis dann.") 
				SAY("Der nette Metzger ist wieder da! Hier deine %REWARD_MONEY() credits. Vielleicht seh ich dich irgendwo wieder. Kannst mir dann mal was ausgeben. Nun hau ab hier.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		GENDERCHECK()
			if (result==1) then -- Male
			SAY("Ist ok. Hoffe du findest den weg heim.")
			SAY("Gut Kumpel, veschwende meine Zeit nicht weiter.")
			
			else
			SAY("Ist ok. Hoffe du findest den weg heim.")
			SAY("Gut Schwester, veschwende meine Zeit nicht weiter.")

			end
		ENDDIALOG()
end