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
		SAY("Es gibt schlechte Neuigkeiten. Die Menge an belastendem Material im Netz hat dramatisch zugenommen und ganz im vertrauen, es hat schon einige Mitarbeiter erwischt. Es wird allerh�chste Zeit, dass diese Hetzkampagne aufh�rt. ")
		
		ANSWER("WEITER",1)
	NODE(1)
		SAY("Der Besitzer der  Sendestation, ein gewisser Beckert, hat uns wie sie sagten Informationen gesendet. Wir haben nun eine Liste der Leute die diese Station gemietet hatten. Deswegen braucht BioTech sie f�r einen weiteren Auftrag, falls sie bereit sind.")
		
		ANSWER("Nat�rlich, diese ganze Sache geht mich genau so an, ich bin ja immerhin auch ein Mitglied.",2)
		ANSWER("Ich denke nicht, dass ich diese Aufgabe �bernehmen kann.",6)

	NODE(2)
		SAY("Gut zu h�ren. Die Liste hebt eine Person hervor, die im fraglichen Zeitraum Zugriff auf die Station hatte. Es handelt sich dabei um einen gewissen Grand, der sich in der Outzone 01 aufh�lt.")
		
		ANSWER("WEITER",3)
	NODE(3)
		SAY("Wir haben die CityAdmin kontaktiert und es hat sich herausgestellt, dass er ein Neocron weit bekannter Hacker ist. Er geh�rt keiner Fraktion an und f�r Geld w�rde er alles tun.")
		
		ANSWER("Das h�rt sich ja nicht besonders beruhigend an. Was hilft uns diese Information?",4)

	NODE(4)
		SAY("Sie m�ssen ihn dazu bringen, die wahren Drahtzieher dieser ganzen Geschichte zu entlarven! M�glicherweise k�nnen sie auch den Schaden, den er angerichtet hat, wieder r�ckg�ngig machen.")
		
		ANSWER("Geht klar, ich bin schon auf dem Weg. Was f�r Mittel soll ich anwenden?",5)
		ANSWER("Was ist, wenn ich jemanden umbringen muss?",8)
	NODE(5)
		SAY("Das liegt in ihrem Ermessensbereich. Nutzen sie alle Mittel, die sie zur Verf�gung haben. Danach k�nnen sie McMillan wieder in Kenntnis �ber ihre Fortschritte setzen.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		

	NODE(6)
		SAY("Bedauerlich, gerade diese Aufgabe w�re von besonderer Wichtigkeit. Aber ich will sie nicht dr�ngen.")
		ENDDIALOG()
		
	NODE(7)
		SAY("Viel Gl�ck bei ihrem Auftrag. Suchen sie den Hacker in der Outzone 01.")
		ENDDIALOG()

	NODE(8)
		SAY("Sie d�rfen dabei keine Angestellten, Wachen oder offizielle Vertreter t�ten, sondern nur Runner.")
		
		ANSWER("Und ich kann dann irgendeinen Runner flatlinen?",9)
	NODE(9)
		SAY("Nur, wenn dieser sich auf deinem Niveau befinden oder dein Niveau �bersteigt. Ansonsten wird es nicht gewertet werden k�nnen. Viel Gl�ck bei ihrer Mission.")
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
		
		ANSWER("Ich weiss, dass sie die Sendestation in der W�ste, in der N�he der alten Ruinen gemietet hatten. F�r wen haben sie sie gemietet?",53)

	NODE(53)
		SAY("Hah! So einem Klugscheisser wie dir m�sste das doch schon klar sein, oder?")
		
		ANSWER("Nun sagen sie schon, das kann doch nicht so schwer sein.",54)
	NODE(54)
		SAY("Wei�t du was? Ich denke du bist ein Weichei und deswegen kann ich dir ja immerhin soviel erz�hlen... Tangent und Twilight Guardian stecken da beide mit drin. Auch wenn beide verschiedene Ziele haben. Jetzt st�r mich nicht weiter, ich muss noch ein paar Daten ins Netz laden. Hahaha.")
		
		ANSWER("Sie nehmen mich offensichtlich nicht ernst. Ich m�chte genau wissen, wer dahinter steckt und sie sollten nicht noch mehr von diesem M�ll ins Netz laden.",55)

	NODE(55)
		SAY("So, und wer sollte mich daran hindern? Du? Da kann ich nur lachen. Ich habe noch nie von dir geh�rt und dann auch noch Fragen stellen, die ich nicht mal nem CopBot beantworten w�rde.")
		
		ANSWER("Nun gut, dann muss ich andere Seiten aufziehen. Ich werde jetzt einen deiner Twilight Guardian Freunde umbringen, damit sie sehen, dass ich es ernst meine und dann... dann sind sie an der Reihe.",56)
	NODE(56)
		SAY("Haha, na dann viel Gl�ck . Ich bin mir sicher, der erste Twilight Guardian, der dir �ber den Weg l�uft macht dich kalt. Damit ich deine Taten auch glaube, bringst du besser nur Twilight Guardian von deinem Rang um.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()

--Spieler killt einen Twilight Guardian trigger 6 bzw 0	
	

	NODE(57)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sie haben wohl schon die Hosen voll, was? Immer noch keinen Twilight umgelegt? Vergiss nicht, nur welche von deinem Combat Rang oder h�her flatlinen.")
			ENDDIALOG()
		else
			SAY("Du schon wieder! Mann, mann, ich h�tte dich nicht zu so etwas imstande gehalten. Ganz sch�n hart, deswegen gleich jemanden umzulegen.")
		
			ANSWER("Ich hoffe sie haben meine Botschaft dann bekommen?",58)
		end
	NODE(58)
		SAY("Ja, ist ja gut... Also Twilight Guardian und Tangent stecken definitiv dahinter. Ich weiss aber selbst noch nicht, wer derjenige ist, der das ganze Initiiert hat. Also sorry. Mann, ich mach das doch auch nur wegen des Geldes. Ich bin irgendwann einfach vom rechten Weg abgedriftet.")
		
		ANSWER("WEITER",59)

	NODE(59)
		SAY("Nachdem ich genug Geld gesammelt hab um nach Irata III zu fliegen, wurden pl�tzlich keine Raumschiffe mehr produziert und der Kontakt brach ab. Ich habe damals alle meine Tr�ume verloren. Jetzt mach ich halt so was und versuch irgendwie �ber die Runden zu kommen.")
		
		ANSWER("Ihr Gejammer interessiert mich nicht. Ach ja, noch eines, nehmen sie diese Verleumdungen aus dem Netz.",60)
	NODE(60)
		SAY("Is ja gut, nicht gleich aufregen. Ich kann aber nur die Daten rausnehmen, die ich auch geladen habe.")
		
		ANSWER("Heisst das etwa, es gibt noch andere Hacker mit derselben Aufgabe?",61)

	NODE(61)
		SAY("Ja, und zwar mindestens ein dutzend... aber ich kenne sie alle nicht.")
		
		ANSWER("Dann l�schen sie wenigstens ihre eigenen Arbeiten. Ist mir egal, ob das Konsequenzen f�r sie hat. ",62)
	NODE(62)
		SAY("Nun gut, ich hoffe das war dann alles...")
		SETNEXTDIALOGSTATE(63)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(63)
		SAY("Ich bin ja schon dabei, meine Daten zu l�schen... hetzen sie mich doch nicht so. Mir w�re am liebsten, wenn sie dorthin zur�ckkehren w�rden, wo sie hergekommen sind.")
		ENDDIALOG()
		

-----------------------------------------------------
--McMillan

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Haben sie schon etwas gegen diese Verleumdung unternommen? Machen sie sich ran. Suchen sie diesen Hacker in der Outzone 01.")
			ENDDIALOG()
		else
			SAY("Das ist eine Sauerei, diese Verleumder! Diese ganze Sache mit diesen Anschuldigungen raubt uns langsam aber sicher wertvolles Personal. Diese L�gner! Aber es scheint mir, dass die Leute lieber einer L�ge glauben, als der Wahrheit.")
		
			ANSWER("Ja, aber der erste Schritt zur Kl�rung dieser Anschuldigungen wurde schon getan. Ich konnte einen Hacker finden, der diese Ger�chte auch ins Netz gestellt hat.",101)
		end
	NODE(101)
		SAY("Haben sie ihn wenigstens f�r diese Schandtat umgebracht?")
		
		ANSWER("Nein, wo denken sie hin! dann w�re er doch niemals mehr dazu imstande gewesen seine Arbeit wieder r�ckg�ngig zu machen.",102)
	NODE(102)
		SAY("Na, das haben sie ja mal wieder ordentlich hinbekommen. Sie sind es ehrlich Wert, ein Teil von BioTech zu sein. Konnten sie denn auch herausfinden, wer hinter all dem steckt?")
		
		ANSWER("Ich konnte nur herausfinden, dass Tangent und die Twilight Guardian dahinter stecken.",103)
	NODE(103)
		SAY("Tangent! Nat�rlich! Oh wir waren so blind. Es ist doch vollkommen klar, dass Daimon Jordan, der CEO von Tangent BioTech so viel Schaden will, wie nur m�glich. Sie wissen doch, der Vater von Seymour und Damion Jordan hetzt seine beiden S�hne in einem Wettstreit aufeinander. Der bessere erh�lt beide Firmen, Tangent und BioTech.")
		
		ANSWER("In diesem Falle artet dies aber eher zu einem grausamen Spiel aus, finde ich.",104)
	NODE(104)
		SAY("Ja, dieser Damion schreckt vor nichts zur�ck! nicht einmal vor so einem schmutzigen L�genfeldzug. Aber sie haben sich jetzt erst einmal eine redliche Pause verdient. Eine Zwangspause zugegeben, aber ich denke sie wird ihnen gelegen kommen. Es gibt einige Dinge noch zu regeln, bevor BioTech sich die richtige Taktik hat einfallen lassen, wie man am besten zur�ckschl�gt.")
		
		ANSWER("Nun gut, ich werde meine F�higkeiten solange weiter trainieren .",105)
	NODE(105)
		GIVEMONEY(20000)
		SAY("Da sie BioTech dieses mal einen grossen Gefallen getan haben, sollen sie dieses Mal 20000 Credits bekommen. ")
		EPICRUNFINISHED(5,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		


end