--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--0,D,Taylor
--1,D,Gruber
--2,D,Leila
--200

--Startnode, Person
--0 Human Resource
--50 Taylor
--100 Gruber Zakashi
--150 Leila
--200
--250

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Es gibt immer mehr und mehr Berichte von Spionen in unseren eigenen Reihen. Diese Ger�chte verbreiten sich zunehmend und nichts was wir tun scheint dem Einhalt gebieten zu k�nnen. Man kann den Leuten nicht mehr vertrauen. Sogar Veronique hat davon schon Wind bekommen und eine weisse Liste herausgebracht. Dort stehen alle Mitglieder drauf, auf deren Loyalit�t man sich verlassen kann.")
		
		ANSWER("Und was bedeutet das f�r mich?",1)
	NODE(1)
		SAY("Das bedeutet, dass im Moment viele kleine Mitglieder auf Distanz gehalten werden. Du eingechlossen. Ich weiss, dass du in der Tat einiges f�r Tsunami in der letzten Zeit getan hast. Vielleicht k�nnte ich dich sogar auf diese Liste bringen. Allerdings m�sstest du es durch Taten schaffen deine Loyalit�t f�r Tsunami zu beweisen. Nur um �ber deine Absichten Klarheit zu erlangen.")
		
		ANSWER("Das ist doch eine verdammte Schweinerei. Ich habe meinen Wert schon mehrmals unter Beweis gestellt. Ich muss mir das hier doch nicht anh�ren.",4)
		ANSWER("Ich habe meinen Wert bereits bewiesen. Wenn ich es wieder tun muss, werde ich es wieder tun.",2)
	NODE(2)
		SAY("Offiziell stimmt deine Aussage, aber es gibt mit Sicherheit ein Leck innerhalb von Tsunami. Deine letzte Mission war nicht der einzige Hinweis auf Insider Information. Ich weiss auch, dass du dort draussen dein Leben riskiert hast, aber mit all den Generep Kopien heutzutage bedeutet das nicht mehr so viel. Aber es g�be die M�glichkeit eine Aufgabe f�r ein h�heres Mitglied zu erledigen und so auf die weisse Liste zu gelangen.")
		
		ANSWER("Na toll. Ihr zieht hier wirklich �ber den falschen her.",3)
	NODE(3)
		SAY("Falls du loyal bist, wirst du bestehen. Falls nicht, brauchen wir dich eh nicht. Gehe zu Taylor Gomez. Er hatte mir gesagt, dass er eine Mission f�r dich hat. Es scheint so, als ob er glaubt, dass du loyal zu Tsunami bist.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(4)
		SAY("Das ist keine kluge Entscheidung. Tsunami ist doch kein Club dem man einfach beitreten kann oder austreten kann. Denk daran.")
		ENDDIALOG()
		
	NODE(5)
		SAY("Ich weiss nicht ob Gomez ewig darauf warten wird, dir diese Aufgabe zu �bergeben.")
		ENDDIALOG()
		


-----------------------------------------------------
--Taylor


	NODE(50)
		SAY("Ich wollte mit dir �ber etwas wichtiges sprechen. Erinnerst du dich daran, wie du diesen ProtoPharm Kerl get�tet hast? Du hattest gesagt er war gewarnt gewesen, richtig? Aber das bedeutet doch, dass irgendein Spion von innerhalb von Tsunami zugriff auf wichtige Informationen hat, richtig? Wer glaubst du ist der �belt�ter? Sei ehrlich. Ich frage nur, da du eine bessere Vorstellung haben k�nntest, wer es sein k�nnte. Schliesslich hattest du diesen Verrat ja an eigenem Leibe erfahren.")
		
		ANSWER("Ich weiss es nicht. Es k�nnte jeder sein. Aber ich bin ziemlich sicher, dass es ein hochrangiges Mitglied war, da sonst niemand diese Art von Informationen bekommen k�nnte.",51)
	NODE(51)
		SAY("Ja, die einzige andere M�glichkeit ist ein niedrieg rangiges Mitglied wie du. Du wusstest von all dem Bescheid. Der Hinterhalt zum Beispiel. Du hast berichtet, dass sie vorbereitet waren und dass du deine Mission nicht vollenden konntest. Dein Kontaktmann wollte die Black Dragon nicht f�r diese Tat verantwortlich machen. K�nnte es nicht sein, dass du all dies von Anfang an ausgeheckt hast? Du k�nntest sogar f�r die Black Dragon selbst gearbeitet haben.")
		
		ANSWER("Sie wissen verdammt gut, dass ich es nicht gewesen sein konnte. Es war mein Leben, das da auf dem Spiel stand! Ich war es, der den ProtoPharm Typ ausgeschaltet hat!",52)
	NODE(52)
		SAY("Du reagierst mir zu empfindlich. Ich denke du weisst mehr als du zugeben willst. Ich habe kein Problem damit. Ich war schon immer jemand, den man nicht einfach hinters Licht f�hren kann. Ich erkenne einen guten Mann, wenn ich einen sehe. Und mit Sicherheit hast du eine Menge f�r Tsunami in der letzten Zeit getan. Also wollte ich dir eine wichtige Mission geben, auch wenn du nicht auf der Liste von Veronique stehst. Ich bin mir sicher, dass hebt dein Selbstwertgef�hl. Und es k�nnte dir helfen bei Tsunami noch mehr ansehen zu erlangen.")
		
		ANSWER("Sehr gut. Wenigstens einer, der meinen Wert f�r das Syndikat erkennt.",53)
	NODE(53)
		SAY("Ja, ja, die Person, die du treffen sollst kannst du in den Wastelands bei der Catlock Bay finden. Er kann dir dann weitere Instruktionen geben.")
		
		ANSWER("Das ist nicht besonders pr�zise. K�nntet ihr nicht etwas mehr dar�ber sagen?",54)
	NODE(54)
		SAY("Meine Geduld ist bald am Ende, geh jetzt und triff dich mit Gruber bei der Catlock Bay. Andernfalls wird dein Ansehen hier im Syndikat m�chtig darunter leiden.")
		SETNEXTDIALOGSTATE(55)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(55)
		SAY("Ich will dir hiermit einen gefallen tun! Sei nicht so bl�d und wirf all das weg, was du schon erreicht hast. Geh zur Catlock Bay.")
		ENDDIALOG()
		


-----------------------------------------------------
--Zakashi

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Scher dich fort. ")
			ENDDIALOG()
		else
			SAY("Du kommst von Gomez? Stimmt das?")
		
			ANSWER("Ja, er sagte mir, du h�ttest weitere Instruktionen f�r mich.",101)
		end
	NODE(101)
		SAY("Oh, was f�r eine Ironie. Er erz�hlt nie genug, oder? Also sagte er dir nicht, warum du hierher gesendet wurdest? So weit raus in die Wastelands?")
		
		ANSWER("Nein, aber ich denke...",102)
	NODE(102)
		SAY("Sehr traurig aber auch ein recht guter Witz. Ja, du wirst so etwas wie Instruktionen von mir bekommen. So viel stimmst schon mal. Aber dir ist doch sicherlich aufgefallen, dass Gomez dar�ber bescheid weiss, dass du dir �ber dieses Leck innerhalb des Syndikats bewusst bist. Du wusstest dar�ber bescheid, nicht wahr?")
		
		ANSWER("Ich weiss nicht wo das hinf�hren soll...",103)
	NODE(103)
		SAY("Ha, ha, ha. Lass mich dir einen kleinen Tip geben. Ich denke ich kann es dir nun verraten, da du dies sowieso nichts weitererz�hlen kannst. Taylor glaubt, dass du etwas herausgefunden hast, was er lieber geheim halten wollte.")
		
		ANSWER("Meinst du, dass er der Spion ist?",104)
	NODE(104)
		SAY("Vielleicht. Ist vielleicht sogar die Wahrheit. Aber wem wirst du es erz�hlen? Wer wird dir glauben? Hah, niemand! Sie w�rden dich t�ten, wenn du eine solche Theorie auch nur a�sserst. Mein Job ist es sicherzugehen, dass du stirbst. Wehr dich nicht, wenn du mich umbringen w�rdest w�rde es dir sogar noch schlimmer gehen. Tsunami w�rde dich f�r den Mord an meiner Person jagen und t�ten. Und vergiss nicht, du bist alleine, niemand kann dir helfen.")
		
		ANSWER("Das ist eine L�ge! Aber... vielleicht w�rde Leila mir ja helfen. Verdammt, ist sie wirklich die einzige, der ich vertrauen kann? ... Aber kann ich ihr wirklich vertrauen?",105)
	NODE(105)
		SAY("Genug geredet! Zeit zu sterben.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(106)
		ATTACK()
		ENDDIALOG()
	NODE(106)
		SAY("Stirb endlich!")
		ATTACK()
		ENDDIALOG()
		

-----------------------------------------------------
--Leila


	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Nein, ich will nicht noch einmal mit ihnen sprechen. Sie ruinieren mein ganzes Leben.")
			ENDDIALOG()
		else
			SAY("Sie schon wieder! Wissen sie �berhaupt was Gecko mir angetan hat, nachdem wir miteinander redeten? Das ist nicht fair! Er weiss es! Er weiss, dass ich ein Spion von Tsunami bin! Er schrie es mir ins Gesicht! Und dann die schrecklichen Dinge, die er mir antat.*sob*")
		
			ANSWER("Hey, hey, h�ren sie auf zu weinen. Ich brauche ihre Hilfe.",151)
		end
	NODE(151)
		SAY("Ach ja? Sicher, warum nicht? Sie waren ja auch ein so guter Freund... Nein, ihnen helfe ich bestimmt nicht! Nicht nach all dem was passiert ist.")
		
		ANSWER("Ok, es tut mir leid, was ihnen zugestossen ist, wirklich. Aber bin ich wirklich daf�r verantwortlich, was so ein Freak dir antut? ",152)
	NODE(152)
		SAY("Ach ja? Sie haben immerhin eine Wahl! Aber ich, ich bin total abh�ngig von denen die Macht haben und ich kann mich nicht gegen sie auflehnen. Selbst, wenn sie mich schlagen und dem�tigen! Ich kann nicht fliehen, ich kann nicht k�mpfen, ich bin im Endeffekt ihr Sklave!!")
		
		ANSWER("Ich weiss nicht, wie ich es wieder gut machen kann, aber ich kann vielleicht den Schmerz lindern. Falls sie mir jetzt helfen!",153)
	NODE(153)
		SAY("Was k�nnten sie schon tun? Ach, was solls? Es kann ja doch nicht viel schlimmer werden. Wie kann ich ihnen helfen?")
		
		ANSWER("Ich habe zuf�llig herausgefunden, wer der Spion im Syndikat ist. Aber diese Person ist viel zu m�chtig f�r mich, als das ich es alleine mit ihr aufnehmen k�nnte.",154)
	NODE(154)
		SAY("Sie haben herausgefunden, wer der Spion ist, von dem alle sprechen? Wer ist es?")
		
		ANSWER("Es ist Taylor Gomez. Ich bin mir ganz sicher. Er wollte mich t�ten lassen, da er dachte ich habe sein Geheimnis herausgefunden.",155)
	NODE(155)
		SAY("Taylor? Wirklich? Aber wie kann ich ihnen gegen einen D�mon wie Taylor helfen? Er ist fast so grausam wie Gecko.")
		
		ANSWER("Ich weiss es nicht! Gibt es denn gar keinen Weg hier heraus?",156)
	NODE(156)
		SAY("Warte! Ich glaube es gibt einen Weg! Aber ich muss zuerst jemanden kontaktieren. Bitte seien sie geduldig und ziehen sie keine Aufmerksamkeit auf sich. Kommen sie wieder, wenn sie glauben, dass es sicher ist. Davor k�nnen sie ja noch einmal mit dem Tsunami Recruiter sprechen, nur sicherheitshalber.")
        EPICRUNFINISHED(8,3)
		GIVEMONEY(10000)

		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		


end