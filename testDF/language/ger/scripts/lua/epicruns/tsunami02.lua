--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--50
--0,D,Leila
--1,D,Taylor
--200

--Startnode, Person
--0 Human Resource
--50 Jester
--100 Leila
--150 Taylor Gomez
--200
--250

-----------------------------------------------------
--Recruiter

	NODE(0)
		SAY("Das ist vielleicht ein Zufall. Gerade wenn wir jemanden benötigen kommst du hier reingeschneit. Wir haben Probleme mit dem Black Dragon Abschaum. Es gab einen offenen Konflikt vor den Türen von einem unserer Clubs. Sie wagten es mit Feuerwaffen anzugreifen. Natürlich liefen sie wie die Hasen, nachdem sie eingesehen haben, dass sie tief in der Scheisse stecken. Aber ihre Nachricht war unmissverständlich. Sie griffen uns auf unserem Grund und Boden an. Es wird Zeit, dass etwas dagegen unternommen wird. Bist du bereit mehr für die Tsunami zu tun?")
		
		ANSWER("Diese Black Dragon sind ziemlich aufmüpfig. I melde mich freiwillig ein paar dieser Ratten höchstpersönlich ins Jenseits zu befördern.",1)
		ANSWER("Ich kann das im Moment noch nicht machen. Ich bin nicht gut genug vorbereitet.",6)
	NODE(1)
		SAY("Nein, dafür ist die Zeit noch nicht reif. Da du deine Loyalität zu uns schon bewiesen hast wirst du mit einem anderen Auftrag betraut werden. Es ist wichtig, dass wir soviel wie möglich über die Pläne der Black Dragon herausbekommen bevor wir unsere Aktion planen. Aber bevor wir unsere Aktion starten, werden wir einen kleinen Vergeltungsschlag gegen die Black Dragon führen.")
		
		ANSWER("Wie gross ist denn die Gefahr?",2)
	NODE(2)
		SAY("Momentan gibt es Strassenschlachten zwischen Tsunami und Black Dragon fast jeden Tag. Sie mischen sich gewaltsam in unsere Geschäfte ein. Sie bedrohen gleichsam unsere Klienten als auch unsere Tänzerinnen. Wir können einfach nicht mehr zusehen, wir werden diesen Bastarden schon beibringen, dass Tsunami keinen Millimeter weichen wird.")
		
		ANSWER("Aber was können wir tun, ausser ihnen den Garaus zu machen?",3)
	NODE(3)
		SAY("Wir konnten einen unserer Leute getarnt in die Black Dragon Hierarchy einschleusen. Ihr Name ist Leila. Du wirst ihr ein kleines Paket überbringen und sie wird dann für etwas Chaos innerhalb der Black Dragon sorgen.")
		
		ANSWER("Und wo bekomme ich das her?",4)
	NODE(4)
		SAY("Das Paket, das du ihr bringen solltest befindet sich immer noch in den Händen von Jester. Hole dir das Paket von ihm und bringe es zu Leila. Es sollte eine recht grosse Überraschung für diese Bastarde sein, wenn sie herausfinden was passiert ist. Vergiss nicht Leila zu sagen, dass das Implantat für Gecko oder Trond selbst bestimmt ist. Trond ist der Anführer der Black Dragon. Geh jetzt.")
		
		ANSWER("Wo kann ich Leila finden?",5)
	NODE(5)
		SAY("Ach ja. Du kannst sie in der Nähe des Black Dragon HQs finden. Das ist der abgemachte Treffpunkt. Nachdem du das Paket abgeliefert hast, melde dich bei Taylor Gomez in der Secret Passage.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		
	NODE(6)
		SAY("Tsunami bietet dir diese Aufgaben nicht an, weil du so toll bist! Daß du diese Aufgaben ablehnst sagt eine Menge über dich aus.")
		ENDDIALOG()
		
	NODE(7)
		SAY("Du hast deine Mission. Erst Jester hier im Sektor besuchen und nachdem du das Paket bei Leila abgegeben hast, sprich mit Taylor Gomez.")
		ENDDIALOG()

-----------------------------------------------------
--Jester



	NODE(50)
		SAY("Ah, sie kenne ich doch. Ich glaube sie sind wegen meiner kleinen Erfindung hier, nicht wahr? Ich brauchte etwas Zeit bis ich die korrekte Menge der Hormonverteilung herausbekommen habe, aber es sollte jetzt sehr gut funktionieren.  Aber ich würde es trotzdem nicht gerne selbst verwenden. Früher habe ich für ProtoPharm gearbeitet und das Wissen darüber wie Chemikalien sich auf bestimmte Körperfunktionen auswirken wurde mir dort eingetrichtert. Dieses Wissen kam mir jetzt zugute bei der Konstruktion dieses kleinen Geräts.")
		
		ANSWER("Ja, Ich bin hier um das Gerät abzuholen. Was ist es überhaupt?",51)
	NODE(51)
		SAY("Es ist ein sehr ausgereifter Gift injizierer. Für jeden anderen sieht es aus wie ein simples Implantat aber in Wirklichkeit bringt es das Hirn vom Träger des Implantats total durcheinander. Ich habe schon jetzt mit diesem armen Opfer mitleid, hehe. Viel Spass damit. Allerdings brauche ich noch einige Chemikalien bevor es richtig arbeitet. Besorge mir doch etwas Tiberal und Adiclovin,ja?")
		SETNEXTDIALOGSTATE(52)
		ENDDIALOG()

--Player gets Tiberal and Adiclovin
		
	NODE(52)
		TAKEITEM(269)
		if(result==0)then
			SAY("Ich brauche Adiclovin und Tiberal damit dieses Gerät auch funktioniert.")
			ENDDIALOG()
		else
			TAKEITEM(273)
			if(result==0)then
				GIVEITEM(269)
				SAY("Nun brauche ich nur noch Adiclovin.")
				ENDDIALOG()
			else
				GIVEITEM(9252)
				SAY("Exzellent. Jetzt ist es fast geschafft. Hier bitte sehr. Jetzt können sie es haben.")
				SETNEXTDIALOGSTATE(53)
				ENDDIALOG()
		
			end
		end
	NODE(53)
		SAY("Ich habe ihnen das Gerät schon gegeben. Ich hoffe sie haben es nicht verloren. Bringen sie es zu der Kontaktperson.")
		ENDDIALOG()
		

-----------------------------------------------------
--Leila

	NODE(100)
		SAY("Vielleicht könnte ich einige ihrer intimsten Träume erfüllen? Was denken sie?")
		
		ANSWER("Ich sollte mich hier mit jemandem namens Leila treffen.",101)
	NODE(101)
		SAY("... Oh nein, I wusste, dass dieser Tag kommen würde. Bitte, ich kann nicht mit ihnen sprechen. Sie wissen nicht wie grausam Gecko ist.")
		
		ANSWER("Wer ist Gecko?",102)
	NODE(102)
		SAY("Gecko ist die rechte Hand des Black Dragon Anführers. Sie wissen ja gar nicht, was er mir alles angetan hat. Für viel weniger noch als mit einem Tsunami Mitglied zu sprechen.")
		
		ANSWER("Sie sollten einige Informationen über die Pläne der Black Dragon für mich haben. Jetzt reissen sie sich zusammen.",103)
	NODE(103)
		SAY("Wenn ich ihnen alles sage, was ich über sie weiss, werden sie mich dann in Ruhe lassen?")
		
		ANSWER("Ich habe dann immer noch dieses Implantat für sie. Ich denke sie wissen wofür es gut ist, oder nicht? Es ist für Gecko oder Trond. Egal welcher.",104)
	NODE(104)
		SAY("Ich kann das nicht tun. Es wäre mein Todesurteil. Bitte, ich bin doch hier schon in der Hölle auf Erden.")
		
		ANSWER("Sie sollten lieber das tun, was man ihnen sagt. Tsunami vergibt auch nicht so leicht.",105)
	NODE(105)
		TAKEITEM(9252)
		if(result==0)then
			SAY("Nun gut. Aber wo ist denn nun das Gerät?")
			ENDDIALOG()
		else
			SAY("Nun gut, aber bitte tun sie mir nicht weh. Ich weiss nicht viel über ihre Pläne. Gecko hält mich an einer ziemlich kurzen Leine. Ich denke er weiss, dass ich von Tsunami bin und ich fürchte jeden Tag um mein Leben. Das einzige, was ich gehört habe ist, dass ein grosses Geschäft zwischen ProtoPharm und den Black Dragon abgeschlossen werden soll. Mehr weiss ich nicht... bitte gehen sie bevor sie irgendetwas bemerken.")
		
			ANSWER("Gut, hier ist das Gerät. Denk dran es der richtigen Person einzusetzen.",106)
		end
	NODE(106)
		SAY("Ich... ich werde versuchen zu tun, was mir gesagt wird...")
		SETNEXTDIALOGSTATE(107)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(107)
		SAY("Ich muss auf den richtigen Moment warten! Ich kann da nicht einfach reingehen und ihm das Implantat einfach aufs Hirn drücken. Also lassen sie mich in Ruhe. Gehen sie zurück zu Gomez.")
		ENDDIALOG()
		


-----------------------------------------------------
--Taylor Gomez

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich kann meine Zeit nicht damit vergeuden mit dir zu reden. ")
			ENDDIALOG()
		else
			SAY("Hast du etwas herausgefunden? Hast du das Gerät abgeliefert?")
		
			ANSWER("Ja, ich habe das Gerät abgeliefert aber ich konnte nicht viel über die Pläne der Black Dragon herausbringen. Das einzige was ich herausfinden konnte, ist, dass anscheinend ein grosses Geschäft mit ProtoPharm ansteht.",151)
		end
	NODE(151)
		GIVEMONEY(5000)
		SAY("Exzellent. Ich werde versuchen, mehr über dieses Geschäft herauszufinden und wie es uns nützen könnte. Währenddessen habe ich hier 5000 Credits für dich. Als Belohnung.")
		
		ANSWER("Danke. Noch einmal wegen Leila... es kam mir so vor, als ob sie ärger hätte. Sie sagte, dass man über ihre Spionageaktivitäten bescheid weiss.",152)
	NODE(152)
		SAY("Sicher? Ich glaube sie ist nur etwas paranoid. Lass uns mal annehmen, sie sei in Gefahr. Eine Hure mehr oder weniger macht auch keinen Unterschied, oder? Die Wahrheit ist, dass sie entbehrlich ist.")
		
		ANSWER("Aber sie war sehr verängstigt. Ist das nicht etwas hart, so mit einem Mitglied umzuspringen?",153)
	NODE(153)
		SAY("Mach dir darüber keine Sorgen. Das nächste Mal werden wir in die Offensive gegen die Black Dragon gehen. Wir werden dabei deine Hilfe mit Sicherheit zu schätzen wissen. Ich schlage vor, dass du dich noch weiter in Form bringen. Bis dann. (nächste Mission Level 30)")
        EPICRUNFINISHED(8,1)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	

end