--************************
--name   : SINGLE_AG_DRE_01.lua
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
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Einen schoenen guten Tag, Sir. Brauchen Sie meine Hilfe?")
				SAY("Hallo, Sir.  Kann ich helfen?")
				SAY("Diamond Real-Estate. Wie kann ich behilflich sein, Sir?")
				SAY("Ja? Was kann ich fuer Sie tun, Sir?")
				SAY("Lieferung oder Abholung? Oh, hmm. Kann ich Ihnen irgendwie behilflich sein, Sir?")
				
				ANSWER("Ich schaue mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Hey. Was ist das hier fuer ein Ort?",1)
				ANSWER("Oh, Tschuldigung, Ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ich bin wegen einem Job hier.",2)
				ANSWER("Yeah, ich bin wegen dem Saeuberungsjob hier.",2)
				ANSWER("Hi, ich hoerte, Sie brauchen kompetente Muskeln.",2)
				ANSWER("Ich bin wegen dem Auftrag aus dem Diamond Real-Estate Terminal hier.",2)

			else    -- Player is a Woman:
				SAY("Willkommen, Miss. Was kann ich fuer Sie tun?")
				SAY("Hallo, Miss, wie kann ich behilflich sein?")
				SAY("Diamond Real-Estate. Wie kann ich behilflich sein, Miss?")
				SAY("Oh, wen haben wir denn da. Kann ich Ihnen irgendwie helfen, Miss?")
				SAY("Was kann ich fuer Sie tun, Miss?")
				
				ANSWER("Ich schau mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Schoen hier. Was kann man hier machen?",1)
				ANSWER("Entschuldigen Sie, ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ich bin wegen der Saeuberung hier...",2)
				ANSWER("Im Diamond Real-Estate Terminal stand, dass Sie einen Job bezueglich einer Saeuberungsaktion zu vergeben haben.",2)
				ANSWER("Hi, ich bin ein faehiger Kammerjaeger auf der Suche nach Arbeit.",2)
				ANSWER("Ich bin wegen dem Auftrag aus dem Diamond Real-Estate Terminal hier.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Bitte verschwenden Sie nicht meine Zeit. Ich arbeite fuer meinen Lebensunterhalt. Einen schoenen Tag noch.")
				SAY("Hoeren Sie zu, ich habe dafuer keine Zeit. Gehen Sie einfach...Sir.")
				SAY("Sir, fuer allgemeine Informationen nutzen Sie bitte das Terminal. Wiedersehen.")
				SAY("Danke und einen schoenen Tag noch.")
				ENDDIALOG()
			else
				SAY("Bitte verschwenden Sie nicht meine Zeit, Lady. Ich arbeite für meinen Gehaltsscheck. Einen schoenen Tag noch.")
				SAY("Hoeren Sie, Ich versuche hier zu arbeiten. Bitte gehen Sie.")
				SAY("Fuer allgemeine Informationen nutzen Sie bitte das Terminal. Wiedersehen.")
				SAY("Danke, Ma'am. Einen schoenen Tag noch.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Oh gut, wir brauchen Sie um %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) in und um das Faction Gebiet herum zu beseitigen. Radieren Sie die aus und kehren Sie zur Auswertung hierher zurueck.")
			SAY("Endlich, der Kammerjaeger ist da! Wir haben da ein kleines Problem mit %TARGET_NPCNAME(0) in und um das Faction Gebiet herum. Vernichten Sie %TARGET_VALUE(0,1) Stueck dieser Plage und kommen Sie fuer die Bezahlung zu mir zurueck.")
			SAY("Ah ja, Runner. Schoen Sie zu sehen. Es wurden vermehrt %TARGET_NPCNAME(0) in und um das Faction Gebiet herum festgestellt. Um unsere Grundstuecke zu sichern, brauchen wir Sie fuer die Vernichtung von %TARGET_VALUE(0,1) Stueck von diesem Ungeziefer. Kommen Sie hierher zurueck, wenn Sie damit fertig sind.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Wir haben immer noch Beschwerden von verschiedenen Paechtern. Es scheint, als ob Sie noch nicht genug Ungeziefer beseitigt haetten. Gehen Sie dort hin zurück und kuemmern Sie sich darum.")
				SAY("Runner, das Gebiet ist immer noch verseucht. Gehen Sie und bringen Sie es zu Ende.")
				SAY("Oh, Sie schon wieder. Sie scheinen noch nicht fertig zu sein. Wir bekommen immer noch Beschwerden rein. Besser Sie sehen da draussen nochmal nach dem Rechten...")
				SAY("Was zum Geier machen Sie hier? Haben wir sie nicht für die Loesung eines Problems engagiert? Stimmts? Dann erledigen Sie das endlich!.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Ah, gut. Wir haben die Bestaetigung, dass das Problem beseitigt wurde. Hier sind Ihre %REWARD_MONEY() Credits Belohnung, wie versprochen. Einen schoenen Tag noch und kommen Sie wieder, wenn Sie einen weiteren Job wollen.")
				SAY("Sehr gut! Mrs Easeldup und Dinklebin haben angerufen und bestaetigt, dass das Problem geloest wurde. Danke, dass Sie sich darum gekuemmert haben! Die Belohnung von %REWARD_MONEY() Credits wurde soeben Ihrem Konto gutgeschrieben. Nutzen Sie unsere Terminals um weitere Jobs zu finden. Leben Sie wohl!")
				SAY("Runner, Gratulation. Wir wurden darueber informiert, dass das Gebiet gesaeubert wurde. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen.  Wir von Diamond Real-Estate sind dankbar fuer Ihre Hilfe, bitte schauen Sie auf unseren Terminals nach, wenn Sie weitere Jobs wollen. Auf Wiedersehen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
