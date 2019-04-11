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
		SAY("Es gibt immer mehr und mehr Berichte von Spionen in unseren eigenen Reihen. Diese Gerüchte verbreiten sich zunehmend und nichts was wir tun scheint dem Einhalt gebieten zu können. Man kann den Leuten nicht mehr vertrauen. Sogar Veronique hat davon schon Wind bekommen und eine weisse Liste herausgebracht. Dort stehen alle Mitglieder drauf, auf deren Loyalität man sich verlassen kann.")
		
		ANSWER("Und was bedeutet das für mich?",1)
	NODE(1)
		SAY("Das bedeutet, dass im Moment viele kleine Mitglieder auf Distanz gehalten werden. Du eingechlossen. Ich weiss, dass du in der Tat einiges für Tsunami in der letzten Zeit getan hast. Vielleicht könnte ich dich sogar auf diese Liste bringen. Allerdings müsstest du es durch Taten schaffen deine Loyalität für Tsunami zu beweisen. Nur um über deine Absichten Klarheit zu erlangen.")
		
		ANSWER("Das ist doch eine verdammte Schweinerei. Ich habe meinen Wert schon mehrmals unter Beweis gestellt. Ich muss mir das hier doch nicht anhören.",4)
		ANSWER("Ich habe meinen Wert bereits bewiesen. Wenn ich es wieder tun muss, werde ich es wieder tun.",2)
	NODE(2)
		SAY("Offiziell stimmt deine Aussage, aber es gibt mit Sicherheit ein Leck innerhalb von Tsunami. Deine letzte Mission war nicht der einzige Hinweis auf Insider Information. Ich weiss auch, dass du dort draussen dein Leben riskiert hast, aber mit all den Generep Kopien heutzutage bedeutet das nicht mehr so viel. Aber es gäbe die Möglichkeit eine Aufgabe für ein höheres Mitglied zu erledigen und so auf die weisse Liste zu gelangen.")
		
		ANSWER("Na toll. Ihr zieht hier wirklich über den falschen her.",3)
	NODE(3)
		SAY("Falls du loyal bist, wirst du bestehen. Falls nicht, brauchen wir dich eh nicht. Gehe zu Taylor Gomez. Er hatte mir gesagt, dass er eine Mission für dich hat. Es scheint so, als ob er glaubt, dass du loyal zu Tsunami bist.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(4)
		SAY("Das ist keine kluge Entscheidung. Tsunami ist doch kein Club dem man einfach beitreten kann oder austreten kann. Denk daran.")
		ENDDIALOG()
		
	NODE(5)
		SAY("Ich weiss nicht ob Gomez ewig darauf warten wird, dir diese Aufgabe zu übergeben.")
		ENDDIALOG()
		


-----------------------------------------------------
--Taylor


	NODE(50)
		SAY("Ich wollte mit dir über etwas wichtiges sprechen. Erinnerst du dich daran, wie du diesen ProtoPharm Kerl getötet hast? Du hattest gesagt er war gewarnt gewesen, richtig? Aber das bedeutet doch, dass irgendein Spion von innerhalb von Tsunami zugriff auf wichtige Informationen hat, richtig? Wer glaubst du ist der Übeltäter? Sei ehrlich. Ich frage nur, da du eine bessere Vorstellung haben könntest, wer es sein könnte. Schliesslich hattest du diesen Verrat ja an eigenem Leibe erfahren.")
		
		ANSWER("Ich weiss es nicht. Es könnte jeder sein. Aber ich bin ziemlich sicher, dass es ein hochrangiges Mitglied war, da sonst niemand diese Art von Informationen bekommen könnte.",51)
	NODE(51)
		SAY("Ja, die einzige andere Möglichkeit ist ein niedrieg rangiges Mitglied wie du. Du wusstest von all dem Bescheid. Der Hinterhalt zum Beispiel. Du hast berichtet, dass sie vorbereitet waren und dass du deine Mission nicht vollenden konntest. Dein Kontaktmann wollte die Black Dragon nicht für diese Tat verantwortlich machen. Könnte es nicht sein, dass du all dies von Anfang an ausgeheckt hast? Du könntest sogar für die Black Dragon selbst gearbeitet haben.")
		
		ANSWER("Sie wissen verdammt gut, dass ich es nicht gewesen sein konnte. Es war mein Leben, das da auf dem Spiel stand! Ich war es, der den ProtoPharm Typ ausgeschaltet hat!",52)
	NODE(52)
		SAY("Du reagierst mir zu empfindlich. Ich denke du weisst mehr als du zugeben willst. Ich habe kein Problem damit. Ich war schon immer jemand, den man nicht einfach hinters Licht führen kann. Ich erkenne einen guten Mann, wenn ich einen sehe. Und mit Sicherheit hast du eine Menge für Tsunami in der letzten Zeit getan. Also wollte ich dir eine wichtige Mission geben, auch wenn du nicht auf der Liste von Veronique stehst. Ich bin mir sicher, dass hebt dein Selbstwertgefühl. Und es könnte dir helfen bei Tsunami noch mehr ansehen zu erlangen.")
		
		ANSWER("Sehr gut. Wenigstens einer, der meinen Wert für das Syndikat erkennt.",53)
	NODE(53)
		SAY("Ja, ja, die Person, die du treffen sollst kannst du in den Wastelands bei der Catlock Bay finden. Er kann dir dann weitere Instruktionen geben.")
		
		ANSWER("Das ist nicht besonders präzise. Könntet ihr nicht etwas mehr darüber sagen?",54)
	NODE(54)
		SAY("Meine Geduld ist bald am Ende, geh jetzt und triff dich mit Gruber bei der Catlock Bay. Andernfalls wird dein Ansehen hier im Syndikat mächtig darunter leiden.")
		SETNEXTDIALOGSTATE(55)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(55)
		SAY("Ich will dir hiermit einen gefallen tun! Sei nicht so blöd und wirf all das weg, was du schon erreicht hast. Geh zur Catlock Bay.")
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
		
			ANSWER("Ja, er sagte mir, du hättest weitere Instruktionen für mich.",101)
		end
	NODE(101)
		SAY("Oh, was für eine Ironie. Er erzählt nie genug, oder? Also sagte er dir nicht, warum du hierher gesendet wurdest? So weit raus in die Wastelands?")
		
		ANSWER("Nein, aber ich denke...",102)
	NODE(102)
		SAY("Sehr traurig aber auch ein recht guter Witz. Ja, du wirst so etwas wie Instruktionen von mir bekommen. So viel stimmst schon mal. Aber dir ist doch sicherlich aufgefallen, dass Gomez darüber bescheid weiss, dass du dir über dieses Leck innerhalb des Syndikats bewusst bist. Du wusstest darüber bescheid, nicht wahr?")
		
		ANSWER("Ich weiss nicht wo das hinführen soll...",103)
	NODE(103)
		SAY("Ha, ha, ha. Lass mich dir einen kleinen Tip geben. Ich denke ich kann es dir nun verraten, da du dies sowieso nichts weitererzählen kannst. Taylor glaubt, dass du etwas herausgefunden hast, was er lieber geheim halten wollte.")
		
		ANSWER("Meinst du, dass er der Spion ist?",104)
	NODE(104)
		SAY("Vielleicht. Ist vielleicht sogar die Wahrheit. Aber wem wirst du es erzählen? Wer wird dir glauben? Hah, niemand! Sie würden dich töten, wenn du eine solche Theorie auch nur aüsserst. Mein Job ist es sicherzugehen, dass du stirbst. Wehr dich nicht, wenn du mich umbringen würdest würde es dir sogar noch schlimmer gehen. Tsunami würde dich für den Mord an meiner Person jagen und töten. Und vergiss nicht, du bist alleine, niemand kann dir helfen.")
		
		ANSWER("Das ist eine Lüge! Aber... vielleicht würde Leila mir ja helfen. Verdammt, ist sie wirklich die einzige, der ich vertrauen kann? ... Aber kann ich ihr wirklich vertrauen?",105)
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
			SAY("Sie schon wieder! Wissen sie überhaupt was Gecko mir angetan hat, nachdem wir miteinander redeten? Das ist nicht fair! Er weiss es! Er weiss, dass ich ein Spion von Tsunami bin! Er schrie es mir ins Gesicht! Und dann die schrecklichen Dinge, die er mir antat.*sob*")
		
			ANSWER("Hey, hey, hören sie auf zu weinen. Ich brauche ihre Hilfe.",151)
		end
	NODE(151)
		SAY("Ach ja? Sicher, warum nicht? Sie waren ja auch ein so guter Freund... Nein, ihnen helfe ich bestimmt nicht! Nicht nach all dem was passiert ist.")
		
		ANSWER("Ok, es tut mir leid, was ihnen zugestossen ist, wirklich. Aber bin ich wirklich dafür verantwortlich, was so ein Freak dir antut? ",152)
	NODE(152)
		SAY("Ach ja? Sie haben immerhin eine Wahl! Aber ich, ich bin total abhängig von denen die Macht haben und ich kann mich nicht gegen sie auflehnen. Selbst, wenn sie mich schlagen und demütigen! Ich kann nicht fliehen, ich kann nicht kämpfen, ich bin im Endeffekt ihr Sklave!!")
		
		ANSWER("Ich weiss nicht, wie ich es wieder gut machen kann, aber ich kann vielleicht den Schmerz lindern. Falls sie mir jetzt helfen!",153)
	NODE(153)
		SAY("Was könnten sie schon tun? Ach, was solls? Es kann ja doch nicht viel schlimmer werden. Wie kann ich ihnen helfen?")
		
		ANSWER("Ich habe zufällig herausgefunden, wer der Spion im Syndikat ist. Aber diese Person ist viel zu mächtig für mich, als das ich es alleine mit ihr aufnehmen könnte.",154)
	NODE(154)
		SAY("Sie haben herausgefunden, wer der Spion ist, von dem alle sprechen? Wer ist es?")
		
		ANSWER("Es ist Taylor Gomez. Ich bin mir ganz sicher. Er wollte mich töten lassen, da er dachte ich habe sein Geheimnis herausgefunden.",155)
	NODE(155)
		SAY("Taylor? Wirklich? Aber wie kann ich ihnen gegen einen Dämon wie Taylor helfen? Er ist fast so grausam wie Gecko.")
		
		ANSWER("Ich weiss es nicht! Gibt es denn gar keinen Weg hier heraus?",156)
	NODE(156)
		SAY("Warte! Ich glaube es gibt einen Weg! Aber ich muss zuerst jemanden kontaktieren. Bitte seien sie geduldig und ziehen sie keine Aufmerksamkeit auf sich. Kommen sie wieder, wenn sie glauben, dass es sicher ist. Davor können sie ja noch einmal mit dem Tsunami Recruiter sprechen, nur sicherheitshalber.")
        EPICRUNFINISHED(8,3)
		GIVEMONEY(10000)

		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		


end