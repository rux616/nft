--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--6(0),PvP,Grand
--1,D,Grand
--2,D,McMillan



--Startnode, Person
--0 Human Resource
--50 Grand
--100 McMillan


-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Es gibt schlechte Neuigkeiten. Die Menge an belastendem Material im Netz hat dramatisch zugenommen und ganz im vertrauen, es hat schon einige Mitarbeiter erwischt. Es wird allerhöchste Zeit, dass diese Hetzkampagne aufhört. ")
		
		ANSWER("WEITER",1)
	NODE(1)
		SAY("Der Besitzer der  Sendestation, ein gewisser Beckert, hat uns wie sie sagten Informationen gesendet. Wir haben nun eine Liste der Leute die diese Station gemietet hatten. Deswegen braucht BioTech sie für einen weiteren Auftrag, falls sie bereit sind.")
		
		ANSWER("Natürlich, diese ganze Sache geht mich genau so an, ich bin ja immerhin auch ein Mitglied.",2)
		ANSWER("Ich denke nicht, dass ich diese Aufgabe übernehmen kann.",6)

	NODE(2)
		SAY("Gut zu hören. Die Liste hebt eine Person hervor, die im fraglichen Zeitraum Zugriff auf die Station hatte. Es handelt sich dabei um einen gewissen Grand, der sich in der Outzone 01 aufhält.")
		
		ANSWER("WEITER",3)
	NODE(3)
		SAY("Wir haben die CityAdmin kontaktiert und es hat sich herausgestellt, dass er ein Neocron weit bekannter Hacker ist. Er gehört keiner Fraktion an und für Geld würde er alles tun.")
		
		ANSWER("Das hört sich ja nicht besonders beruhigend an. Was hilft uns diese Information?",4)

	NODE(4)
		SAY("Sie müssen ihn dazu bringen, die wahren Drahtzieher dieser ganzen Geschichte zu entlarven! Möglicherweise können sie auch den Schaden, den er angerichtet hat, wieder rückgängig machen.")
		
		ANSWER("Geht klar, ich bin schon auf dem Weg. Was für Mittel soll ich anwenden?",5)
		ANSWER("Was ist, wenn ich jemanden umbringen muss?",8)
	NODE(5)
		SAY("Das liegt in ihrem Ermessensbereich. Nutzen sie alle Mittel, die sie zur Verfügung haben. Danach können sie McMillan wieder in Kenntnis über ihre Fortschritte setzen.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		

	NODE(6)
		SAY("Bedauerlich, gerade diese Aufgabe wäre von besonderer Wichtigkeit. Aber ich will sie nicht drängen.")
		ENDDIALOG()
		
	NODE(7)
		SAY("Viel Glück bei ihrem Auftrag. Suchen sie den Hacker in der Outzone 01.")
		ENDDIALOG()

	NODE(8)
		SAY("Sie dürfen dabei keine Angestellten, Wachen oder offizielle Vertreter töten, sondern nur Runner.")
		
		ANSWER("Und ich kann dann irgendeinen Runner flatlinen?",9)
	NODE(9)
		SAY("Nur, wenn dieser sich auf deinem Niveau befinden oder dein Niveau übersteigt. Ansonsten wird es nicht gewertet werden können. Viel Glück bei ihrer Mission.")
		SETNEXTDIALOGSTATE(7)
		STARTMISSION()
		ENDDIALOG()

-----------------------------------------------------
--Grand

	NODE(50)
		SAY("Ja? Wer ist da?")
		
		ANSWER("Sind sie Grand?",51)

	NODE(51)
		SAY("Das kommt ganz darauf an...")
		
		ANSWER("Reden wir nicht um den heissen Brei herum, ich weiss, dass sie Grand sind.",52)
	NODE(52)
		SAY("Na gut. Ich gebe es zu, ich bin Grand. Und jetzt?")
		
		ANSWER("Ich weiss, dass sie die Sendestation in der Wüste, in der Nähe der alten Ruinen gemietet hatten. Für wen haben sie sie gemietet?",53)

	NODE(53)
		SAY("Hah! So einem Klugscheisser wie dir müsste das doch schon klar sein, oder?")
		
		ANSWER("Nun sagen sie schon, das kann doch nicht so schwer sein.",54)
	NODE(54)
		SAY("Weißt du was? Ich denke du bist ein Weichei und deswegen kann ich dir ja immerhin soviel erzählen... Tangent und Twilight Guardian stecken da beide mit drin. Auch wenn beide verschiedene Ziele haben. Jetzt stör mich nicht weiter, ich muss noch ein paar Daten ins Netz laden. Hahaha.")
		
		ANSWER("Sie nehmen mich offensichtlich nicht ernst. Ich möchte genau wissen, wer dahinter steckt und sie sollten nicht noch mehr von diesem Müll ins Netz laden.",55)

	NODE(55)
		SAY("So, und wer sollte mich daran hindern? Du? Da kann ich nur lachen. Ich habe noch nie von dir gehört und dann auch noch Fragen stellen, die ich nicht mal nem CopBot beantworten würde.")
		
		ANSWER("Nun gut, dann muss ich andere Seiten aufziehen. Ich werde jetzt einen deiner Twilight Guardian Freunde umbringen, damit sie sehen, dass ich es ernst meine und dann... dann sind sie an der Reihe.",56)
	NODE(56)
		SAY("Haha, na dann viel Glück . Ich bin mir sicher, der erste Twilight Guardian, der dir über den Weg läuft macht dich kalt. Damit ich deine Taten auch glaube, bringst du besser nur Twilight Guardian von deinem Rang um.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()

--Spieler killt einen Twilight Guardian trigger 6 bzw 0	
	

	NODE(57)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sie haben wohl schon die Hosen voll, was? Immer noch keinen Twilight umgelegt? Vergiss nicht, nur welche von deinem Combat Rang oder höher flatlinen.")
			ENDDIALOG()
		else
			SAY("Du schon wieder! Mann, mann, ich hätte dich nicht zu so etwas imstande gehalten. Ganz schön hart, deswegen gleich jemanden umzulegen.")
		
			ANSWER("Ich hoffe sie haben meine Botschaft dann bekommen?",58)
		end
	NODE(58)
		SAY("Ja, ist ja gut... Also Twilight Guardian und Tangent stecken definitiv dahinter. Ich weiss aber selbst noch nicht, wer derjenige ist, der das ganze Initiiert hat. Also sorry. Mann, ich mach das doch auch nur wegen des Geldes. Ich bin irgendwann einfach vom rechten Weg abgedriftet.")
		
		ANSWER("WEITER",59)

	NODE(59)
		SAY("Nachdem ich genug Geld gesammelt hab um nach Irata III zu fliegen, wurden plötzlich keine Raumschiffe mehr produziert und der Kontakt brach ab. Ich habe damals alle meine Träume verloren. Jetzt mach ich halt so was und versuch irgendwie über die Runden zu kommen.")
		
		ANSWER("Ihr Gejammer interessiert mich nicht. Ach ja, noch eines, nehmen sie diese Verleumdungen aus dem Netz.",60)
	NODE(60)
		SAY("Is ja gut, nicht gleich aufregen. Ich kann aber nur die Daten rausnehmen, die ich auch geladen habe.")
		
		ANSWER("Heisst das etwa, es gibt noch andere Hacker mit derselben Aufgabe?",61)

	NODE(61)
		SAY("Ja, und zwar mindestens ein dutzend... aber ich kenne sie alle nicht.")
		
		ANSWER("Dann löschen sie wenigstens ihre eigenen Arbeiten. Ist mir egal, ob das Konsequenzen für sie hat. ",62)
	NODE(62)
		SAY("Nun gut, ich hoffe das war dann alles...")
		SETNEXTDIALOGSTATE(63)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(63)
		SAY("Ich bin ja schon dabei, meine Daten zu löschen... hetzen sie mich doch nicht so. Mir wäre am liebsten, wenn sie dorthin zurückkehren würden, wo sie hergekommen sind.")
		ENDDIALOG()
		

-----------------------------------------------------
--McMillan

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Haben sie schon etwas gegen diese Verleumdung unternommen? Machen sie sich ran. Suchen sie diesen Hacker in der Outzone 01.")
			ENDDIALOG()
		else
			SAY("Das ist eine Sauerei, diese Verleumder! Diese ganze Sache mit diesen Anschuldigungen raubt uns langsam aber sicher wertvolles Personal. Diese Lügner! Aber es scheint mir, dass die Leute lieber einer Lüge glauben, als der Wahrheit.")
		
			ANSWER("Ja, aber der erste Schritt zur Klärung dieser Anschuldigungen wurde schon getan. Ich konnte einen Hacker finden, der diese Gerüchte auch ins Netz gestellt hat.",101)
		end
	NODE(101)
		SAY("Haben sie ihn wenigstens für diese Schandtat umgebracht?")
		
		ANSWER("Nein, wo denken sie hin! dann wäre er doch niemals mehr dazu imstande gewesen seine Arbeit wieder rückgängig zu machen.",102)
	NODE(102)
		SAY("Na, das haben sie ja mal wieder ordentlich hinbekommen. Sie sind es ehrlich Wert, ein Teil von BioTech zu sein. Konnten sie denn auch herausfinden, wer hinter all dem steckt?")
		
		ANSWER("Ich konnte nur herausfinden, dass Tangent und die Twilight Guardian dahinter stecken.",103)
	NODE(103)
		SAY("Tangent! Natürlich! Oh wir waren so blind. Es ist doch vollkommen klar, dass Daimon Jordan, der CEO von Tangent BioTech so viel Schaden will, wie nur möglich. Sie wissen doch, der Vater von Seymour und Damion Jordan hetzt seine beiden Söhne in einem Wettstreit aufeinander. Der bessere erhält beide Firmen, Tangent und BioTech.")
		
		ANSWER("In diesem Falle artet dies aber eher zu einem grausamen Spiel aus, finde ich.",104)
	NODE(104)
		SAY("Ja, dieser Damion schreckt vor nichts zurück! nicht einmal vor so einem schmutzigen Lügenfeldzug. Aber sie haben sich jetzt erst einmal eine redliche Pause verdient. Eine Zwangspause zugegeben, aber ich denke sie wird ihnen gelegen kommen. Es gibt einige Dinge noch zu regeln, bevor BioTech sich die richtige Taktik hat einfallen lassen, wie man am besten zurückschlägt.")
		
		ANSWER("Nun gut, ich werde meine Fähigkeiten solange weiter trainieren .",105)
	NODE(105)
		GIVEMONEY(20000)
		SAY("Da sie BioTech dieses mal einen grossen Gefallen getan haben, sollen sie dieses Mal 20000 Credits bekommen. ")
		EPICRUNFINISHED(5,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		


end