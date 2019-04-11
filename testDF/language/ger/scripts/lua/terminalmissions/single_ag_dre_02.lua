--************************
--name   : SINGLE_AG_DRE_02.lua
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
				ANSWER("Hi, ich hoerte, Sie brauchen kompetente Muskeln für eine Säuberung.",2)
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
				ANSWER("Hi, ich bin wegen dem Säuberungsauftrag hier.",2)
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
				SAY("Bitte verschwenden Sie nicht meine Zeit, Lady. Im Gegensatz zu Ihnen arbeite ich für meinen Gehaltsscheck. Einen schoenen Tag noch.")
				SAY("Hoeren Sie, Ich versuche hier zu arbeiten. Bitte gehen Sie.")
				SAY("Fuer allgemeine Informationen nutzen Sie bitte das Terminal. Wiedersehen.")
				SAY("Danke, Ma'am. Einen schoenen Tag noch.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Nun gut. Die Menge an %TARGET_NPCNAME(0) hat stark zugenommen und deswegen brauchen wir Sie, um die Plage auszurotten. Toeten Sie mindestens %TARGET_VALUE(0,1) davon in und um das Faction Gebiet herum. Erledigen Sie das und kommen Sie danach hierher zurueck.")
			SAY("Sehr gut, Sie sind das! Einige %TARGET_NPCNAME(0) wurden uns von Frau Biesehel im Faction Gebiet gemeldet. Eliminieren Sie %TARGET_VALUE(0,1) davon und Sie bekommen von mir hier die Belohnung dafuer.")
			SAY("Endlich ein Runner. Schoen Sie zu sehen. Es wurden vermehrt %TARGET_NPCNAME(0) in und um das Faction Gebiet herum festgestellt. Um unsere Grundstuecke zu sichern, brauchen wir Sie fuer die Vernichtung von %TARGET_VALUE(0,1) Stueck von diesem Ungeziefer. Kommen Sie hierher zurueck, wenn Sie damit fertig sind.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Wir haben immer noch einige Beschwerden von unseren Paechtern und Kunden. Sie haben noch nicht genug Ungeziefer vernichtet. Stellen Sie sicher, dass auch der Rest ausgerottet wird oder Sie bekommen keine Entlohnung für die Arbeit.")
				SAY("Runner, es werden uns immer noch Probleme in dem Gebiet gemeldet. Gehen Sie dort hin und radieren Sie die Plage aus.")
				SAY("Oh, Sie schon wieder. Sie sollten sich besser so schnell wie moeglich um das Problem kuemmern und den Job beenden, Mr Biesehel laesst hier die Leitungen gluehen, weil immer noch nicht das Problem geloest ist.")
				SAY("Was zum Geier machen Sie hier? Haben wir Sie nicht für die Loesung eines Problems engagiert? Stimmts? Dann erledigen Sie das endlich!")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Ah, gut. Wir haben die Bestaetigung, dass das Problem beseitigt wurde. Hier sind Ihre %REWARD_MONEY() Credits Belohnung, wie versprochen. Einen schoenen Tag noch und kommen Sie wieder, wenn Sie einen weiteren Job wollen.")
				SAY("Ausgezeichnete Arbeit! Mr Biesehel rief an und sagte, dass das Problem beseitigt wurde. Danke fuer diese Hilfe! Die Bezahlung von %REWARD_MONEY() Credits wurde ihrem Konto gutgeschrieben. Einen schoenen Tag noch, ich jedenfalls werde einen haben!")
				SAY("Runner, Gratulation. Wir wurden darueber informiert, dass das Gebiet gesaeubert wurde. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen.  Wir von Diamond Real-Estate sind dankbar fuer Ihre Hilfe, bitte schauen Sie auf unseren Terminals nach, wenn Sie weitere Jobs wollen. Auf Wiedersehen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
