--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--50
--0,D,Hontoka
--1,Pvp, 4Black Dragon
--2,D,Cole
--200
--3,D,Jester

--Startnode, Person
--0 Human Resource
--50 Leila
--100 Hontoka
--150 Cole
--200 Hontoka
--250 Jester

-----------------------------------------------------
--Recruiter

	NODE(0)
		SAY("Mitglieder von Tsunami deren Loyalit�t immer noch in Frage steht werden hier nicht gebraucht. Solange nicht bis dieser ganze Mist aufgekl�rt ist.")
		
		ANSWER("Das ist schade, dann muss ich wohl doch auf die Hilfe von Leila zur�ckgreifen.",1)
	NODE(1)
		SAY("Entschuldige mich. Diese Sache erfordert meine ganze Konzentration.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(2)
		SAY("Zwinge mich nicht die Wachen zu rufen. Besuchen sie halt mal diese Leila von der sie eben gesprochen haben.")
		ENDDIALOG()

-----------------------------------------------------
--Leila

	NODE(50)
		SAY("Endlich sind sie wieder da! Ich hatte ganz sch�ne Probleme Hontoka zu kontaktieren. Er ist ein Tsunami Aussendienst Mitarbeiter und seine Identit�t ist ein R�tsel f�r viele. Er zieht es vor alles von einer gewissen Distanz zu beobachten. Ich weiss auch, dass sein Rang innerhalb von Tsunami mindestens dem von Taylor entspricht. Er hat seine Position �bermittelt so dass ihr ihn finden k�nnt. Ich denke es ist der Industrial Distrikt 02  gemeint gewesen. Ich w�rde es dort zuerst versuchen...")
		
		ANSWER("Ich bin froh das zu h�ren. Es war nicht leicht, die ganze Zeit verdeckt zu leben.",51)
	NODE(51)
		SAY("Sie m�ssen aber noch viele Beweise gegen Taylor sammeln. Aber wie? Ich weiss es nicht, aber es gibt bestimmte Leute hier in Neocron, die fast alles f�r Geld tun w�rden. Da m�sste es doch m�glich sein an so etwas heranzukommen. Aber vielleicht sollten sie zuerst mit Hontoka sprechen.")
		
		ANSWER("Ich werde tun was sie sagen. Aber die ganze Sache gleitet mir langsam aber sicher aus den H�nden, habe ich das Gef�hl.",52)
	NODE(52)
		GIVEITEM(9252)
		SAY("Sie m�ssen ruhig bleiben oder es wird sie auffressen. Jetzt aber schnell, bevor Gecko sieht, wie ich mit ihnen spreche. Und... ich wollte ihnen das hier zur�ckgeben... Ich konnte es nicht tun... Als Gecko herausfand, dass ich ein Spion bin, gab er mir dieses Implantat wieder und sagte ich k�nne es jederzeit nutzen, wenn die Schmerzen zu unertr�glich w�rden.")
		
		ANSWER("Das ist doch das Gift Implantat...",53)
	NODE(53)
		SAY("Ja, jetzt gehe bitte...")
		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()
		
	NODE(54)
		SAY("Geh! Hontoka befindet sich im Industrial 02 Gebiet.")
		ENDDIALOG()

-----------------------------------------------------
--Hontoka

	NODE(100)
		SAY("Ich wurde von ihrer Situation informiert. Leila glaubt, dass man ihnen vertrauen kann und ich glaube Leila. Es sieht schlimm aus. Sie haben die Schlange ver�rgert und nun f�rchten sie ihr Gift.")
		
		ANSWER("Ich bin hierhergekommen, da ich glaube, dass sie meine einzige Hoffnung sind.",101)
	NODE(101)
		SAY("Ich mag Taylor so wenig wie die Sumpf M�cken. Immer dabei das Blut von anderen zu saugen. Nie w�rden sie etwas von sich selbst heraus erfinden. Das war einer der Gr�nde, warum ich den aktiven Dienst bei den Tsunamis velie�. Aber t�usch dich nicht, ich habe immer noch sehr viele Freunde im Syndikat. Aber es ist nun mal nicht mehr dasselbe. Damals gab es eine gewisse Ehre und Aufrichtigkeit unter den Mitgliedern. Heutzutage ist davon keine mehr zu sp�ren, ausser dem bischen, das bei Veronique geblieben ist.")
		
		ANSWER("Was tun sie eigentlich so nahe bei Neocron? Ist das nicht gef�hrlich?",102)
	NODE(102)
		SAY("Irgendjemand muss sich um Neocron Angelegenheiten k�mmern. Immerhin haben wir sehr lange Zeit hier gearbeitet und unsere Investitionen k�nnen nicht so einfach aus Neocron rausgezogen werden.Ich mache Veronique auch keinen Vorwurf wegen dieser ganzen Situation, es scheint die Zeit zu sein in der wir leben. Ich w�rde sehr gerne alles in die Zeit zur�ck versetzen in der Ehre in jeder Tat lag. Wenn es da bloss eine Gefahr von aussen g�be, die gross genug ist, alle Mitglieder zu einen... Ich m�chte ihnen helfen, junger Tsunami und deswegen werde ich versuchen, Beweise f�r den Verrat von Taylor Gomez zu finden.")
		
		ANSWER("Vielen Dank daf�r, aber was kann ich in der Zwischen zeit tun?",103)
	NODE(103)
		SAY("Die Black Dragon sammeln ihre Kr�fte und versichern sich ihrer R�ckendeckung. Die Richtung ihrer Bewegung ist klar auf Tsunami ausgerichtet. Veronique und Axom wissen dies und konzentrieren ihre Kr�fte auch. Der einzige Weg um diesen Konflikt zu vermeiden w�re wohl, Taylor direkt zu konfrontieren und ihn zu t�ten. Und damit auch seine dreckigen Geheimnisse zu entdecken. Aber daf�r muss man vorbereitet sein. Falls ihr seine Schuld nicht beweisen k�nnt, wird euch der Tod von Taylor nichts nutzen.")
		
		ANSWER("Das ist alles leichter gesagt als getan. Kennen sie jemanden, der mir solche Informationen geben k�nnte?",104)
	NODE(104)
		SAY("Vielleicht kenne ich eine Person. Ich meine eine Person mit vielen Talenten und die sich gut in der Welt auskennt. Treffen sie Mark Cole in Sektor 06 im Dome beim Waffenmarkt. Er weiss vielleicht mehr.")
		
		ANSWER("Ich denke ich finde den Weg auch alleine, danke.",105)
	NODE(105)
		SAY("Kommen sie wieder zur�ck, nachdem sie die Informationen haben, die sie brauchen.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	

-----------------------------------------------------
--Cole

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Geh mir aus den Augen.")
			ENDDIALOG()
		else
			SAY("Hey, Tsunami Abschaum! Pass auf wo du hingehst, dies ist mein Platz.")
		
			ANSWER("Cole? Mir wurde gesagt ich k�nnte hier Informationen bekommen.",151)
		end
	NODE(151)
		SAY("Das ist toll! Jetzt habe ich sogar einen Tsunami, der mich nach Hilfe fragt. Du musst ziemlich bl�d sein, von deinem aussehen zu urteilen. Aber ich muss dich leider entt�uschen, ich deale nicht mit Informationen, es sei denn...")
		
		ANSWER("Was?",152)
	NODE(152)
		SAY("Naja, vielleicht. Vielleicht kann ich dir ein paar Informationen geben, wenn du etwas f�r mich erledigst...")
		
		ANSWER("Das kommt darauf an... Ich...",153)
	NODE(153)
		SAY("Nun gut. Wie du willst, ich dachte du w�hrst hart, aber jetzt ist mir klar, dass du auch nur so ein anderer Verlierer sind. Es ist eine Schande. All die Privateers dort draussen, die keinen Penny verdienen und dann so einer wie du, der das grosse Geld macht. Hau ab! ")
		
		ANSWER("Wartet, ich tue es... es ist ok, wirklich. Was ist es denn genau?",154)
	NODE(154)
		SAY("Das ist schon besser. H�r zu. Es gibt da so einen Kerl, der mich die ganze Zeit �berwacht. Ich sage dir, er beobachtet mich und folgt mir fast den ganzen Tag.")
		
		ANSWER("Und wo ist er jetzt? Ich kann ihn nirgends sehen.",155)
	NODE(155)
		SAY("Er ist von den Black Dragon. Das sollte genau deine Art von Job sein, du bist ja immerhin Tsunami. Ich m�chte seine Aufmerksamkeit ablenken, damit ein Freund von mir sich in seine Wohnung schleichen kann und sein Zeug stehlen kann.")
		
		ANSWER("Mir ist immer noch nicht klar, was ich f�r sie tun soll.",156)
	NODE(156)
		SAY("Deine Aufgabe wird es sein, ihre Aufmerksamkeit abzulenken. T�te einfach einen BlackDragon Contact und ich denke das wird genug Chaos geben. Genug auf jeden Fall, damit mein Freund seinen Teil tun kann.")
		
		ANSWER("Nun gut, aber sie haben dann meine Information besser parat.",157)
		ANSWER("Was f�r Typen soll ich jetzt genau flatlinen? Kann das vielleicht etwas deutlicher sein?",163)
	NODE(157)
		SAY("Information? Oh, ja, nat�rlich, deine Information. Ich habe sie gleich hier in meinem Kopf. Nun gehe und komme wieder, wenn du deinen Teil getan hast.")
		SETNEXTDIALOGSTATE(158)
		ENDDIALOG()

--Spieler killt 1 Black Draggon PvP Trigger 1
		
	NODE(158)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Das wird nicht reichen. Du sollst doch einen Black Dragon t�ten.")
			ENDDIALOG()
		else
			SAY("Du schon wieder! Was ist es dieses Mal?")
		
			ANSWER("Ich habe meinen Teil erf�llt. Nun ist die Reihe an ihnen, ihren Teil der Abmachung zu erf�llen.",159)
		end
	NODE(159)
		SAY("Das wurde aber auch h�chste Zeit. Geschieht diesen Bastarden recht, mich einfach so zu �berwachen. Jetzt da mein Freund all ihre Ausr�stung geklaut hat, wollen wir mal sehen, wie er mich weiterhin �berwachen will. Ich bewerte meine Privatsph�re sehr hoch, weisst du?")
		
		ANSWER("Erz�hlen sie mir, was sie �ber Taylor Gomez wissen.",160)
	NODE(160)
		GIVEITEM(9254)
		SAY("Oh, ich habe jede Menge Information �ber diese Person. Nachdem ich mich etwas umgesehen habe, kam folgendes zum Vorschein. Von einer sehr verl�sslichen Quelle habe ich erfahren, dass er auch enorme Summen von den Black Dragon bekommt. Ausserdem noch das �bliche... perverse Sexpraktiken und Bestechungsgelder, die er von vielen verschiedenen Fraktionen akzeptiert. Ist das genug? Oder soll ich pr�ziser werden? Hier ist ein Datacube mit den relevanten Informationen.")
		
		ANSWER("Das ist mehr als ich erhofft hatte. Dann passe ich wohl besser mal gut darauf auf, dass ich den Datacube nicht verliere.",161)
	NODE(161)
		SAY("Dann geh jetzt. Und wundere dich nicht, dass nicht jede Info auf dem Cube 100% akkurat ist. Du verstehst mich.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(162)
		ENDDIALOG()
		
	NODE(162)
		SAY("Ich habe nichts mehr mit dir zu schaffen. Geh zur�ck zu dem, der dir diesen Auftrag gegeben hat.")
		ENDDIALOG()
	

	NODE(163)
		SAY("Der Auftrag ist es, einen Runner von den Black Dragon Contact zu t�ten, also keine Runner. Ich empfehle dir einen Blick in das geheime BlackDragon HQ gehen, dort hast du die beste M�glichkeit.")
		
		ANSWER("Soll ich nicht einfach ein paar Angestellte zu Strecke bringen?",164)
	NODE(164)
		SAY("Nein nur einen Black Dragon Contact, und denk daran, lass dich nicht erwischen, wir haben werden nichts damit zu tun haben, egal was geschieht.")
		SETNEXTDIALOGSTATE(158)
		ENDDIALOG()

-----------------------------------------------------
--Hontoka

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Haben sie schon Cole gesehen? Besuchen sie ihn bevor sie hierher zur�ckkommen.")
			ENDDIALOG()
		else
			SAY("Konnten sie Beweise finden?")
		
			ANSWER("Ja, ich fand sogar mehr als ich erwartet hatte. Ich habe fast zu viel erfahren. Ich frage mich wo Cole diese Information her hat.",201)
		end
	NODE(201)
		SAY("Solche Leute haben gew�hnlich ihre Resourcen. Es ist wichtiger zu wissen wie wahr die Informationen sind. Ist all das wahr, was er ihnen sagte?")
		
		ANSWER("Wir werden Talyor schon bald haben. Diese Information zeigt klar und deutlich, dass er von den Black Dragon bezahlt wird. Das sollte ihm den Rest geben.",202)
	NODE(202)
		SAY("Aber bevor sie Taylor konfrontieren sollten sie noch mehr trainieren und vielleicht kann Jester ihnen ja sogar eine geeignete Bewaffnung geben. Er ist ein Genie, wenn es um Technik geht. Vielleicht sollten sie ihn noch einmal besuchen.")
		SETNEXTDIALOGSTATE(203)
		ENDDIALOG()
		
	NODE(203)
		SAY("Im Moment habe ich keine Ratschl�ge mehr f�r sie. Jester in Sektor 07 in Dome of York kann ihnen vielleicht noch bessere Ausr�stung besorgen.")
		ENDDIALOG()
		



-----------------------------------------------------
--Jester

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Es tut mir leid, aber ich bin sehr besch�ftigt im Moment.")
			ENDDIALOG()
		else
			SAY("Ahh, mein beliebtester Tsunami! Wussten sie, dass Tsunami Gruppen nach ihnen Ausschau halten? Wo waren sie die ganze Zeit?")
		
			ANSWER("Ich habe einige dreckige Geheimnisse �ber Taylor Gomez herausgefunden und ich denke die Zeit ist bald gekommen um ihn direkt zu konfrontieren.",251)
		end
	NODE(251)
		SAY("So, sie denken also, sie sind bereit ihn direkt zu konfrontieren? Ich weiss nicht, sie sehen immer noch etwas zerbrechlich aus.")
		
		ANSWER("Ich bin fast bereit. Ich brauche aber immer noch bessere Waffen. K�nnen sie mir dabei weiterhelfen?",252)
	NODE(252)
		SAY("Nicht wirklich, es sei denn, sie haben etwas womit ich arbeiten kann. Ich habe erst k�rzlich einen sehr interessanten Blueprint einer Wafe aus dem Netz gezogen. Ich konnte der Versuchung nicht wiederstehen einige Teile des Blueprints wiederzuverwenden. Das heisst, ich habe eine neue Waffe entwickelt, aber es braucht die Chemikalie Valadium. Diese Chemikalie ist extrem selten, also ist das wohl eher eine geringe Chance. Falls ihr zus�tzlich auch mal wieder einen X-OR Chip in die Finger bekommt, dann k�nnte ich die Waffe auch bauen.")
		
		ANSWER("Aber ich habe doch den X-OR Chip und das Valadium. Vielleicht reicht es ja.",253)
	NODE(253)
		TAKEITEM(9251)
		if(result==0)then
			SAY("Ich kann nicht viel ohne den X-OR Chip machen.")
			ENDDIALOG()
		else
			TAKEITEM(9253)
			if(result==0)then
				GIVEITEM(9251)
				SAY("Valadium wird noch gebraucht, damit ich die Waffe bauen kann. Meistens ist Valadium nicht mal gekennzeichnet. Das zeigt ja, wie selten es ist.")
				ENDDIALOG()
			else
				GIVEMONEY(20000)
	
				GIVEITEMWITHSLOTS(9255,255,1)
				SAY("Das sieht gut aus. Hier ist die Waffe. Der Blueprint ist von einem Top Secret Projekt, das aber nie vervollst�ndigt wurde. Deswegen musste ich etwas improvisieren. Denken sie dran , nachdem sie fertig trainiert haben wieder den Recruiter zu besuchen. Dann k�nnen sie Taylor direkt konfrontieren.(n�chste Mission ab Level 45)")
		        EPICRUNFINISHED(8,4)
				ACTIVATEDIALOGTRIGGER(3)
				ENDDIALOG()
				
			end
		end


end