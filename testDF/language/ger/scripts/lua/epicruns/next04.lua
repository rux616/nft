--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person

--0,D,Mason
--1,D,Almachim
--2,D,Mason



--Startnode, Person
--0 Human Resource
--50 Mason
--100 BioTech
--150 Mason
--200 Almachim
--250 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Gut, dass sie gerade jetzt da sind, begeben sie sich schnell zu Mason. Es ist was schreckliches passiert.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Beeilen sie sich, Mason wartet schon ungeduldig.")
		ENDDIALOG()
		


-----------------------------------------------------
--Mason

	NODE(50)
		SAY("Sie kommen gerade recht. Es ist etwas schreckliches vorgefallen. Sie haben schon von unserer Systemadministratorin gehört? Ich wurde davon benachrichtigt, dass sie vergiftet wurde und nun im Koma liegt. Nicht auszudenken, was passieren könnte, wenn sie sterben würde. ")
		
		ANSWER("WEITER",51)
	NODE(51)
		SAY("Sie könnte ihre Programmierkunstwerke nicht mehr vervollständigen und das ist nicht alles. Mit ihrem Tod, würden alle ihre Anteile auf den offenen Markt fliessen und die ganze Firmenstruktur könnte sich verändern. Und glauben sie mir, so eine Art Veränderung ist gar nicht erwünscht.")
		
		ANSWER("Was soll geschehen?",52)
	NODE(52)
		SAY("Die Fachleute sagten mir, es gebe eine Medizin um sie aus dem Koma zu erwecken. Aber die Medizin gibt es nur bei BioTech und ProtoPharm. ProtoPharm wird sie uns bestimmt nicht aushändigen, also brauchen wir sie von BioTech. Die Wirkstoffe, die wir brauchen sind Hydrosin und Kaboxorid. Worauf warten sie noch? Beeilen sie sich und holen sie die Chemikalien von einem Biotech Mitarbeitern!")
		
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		

-----------------------------------------------------
--BioTech

	NODE(100)
		SAY("Guten Tag Runner, was kann ich für sie tun?")
		
		ANSWER("Es ist sehr wichtig! Geben sie mir Hydrosin und Kaboxorid!",101)
	NODE(101)
		SAY("Aber natürlich. Man hat mir schon mitgeteilt, ein Bote würde diese Medizin abholen. Leider gibt es da noch ein kleines Problem...")
		
		ANSWER("Nicht das auch noch! Was für ein Problem gibt es denn?",102)
	NODE(102)
		SAY("Hydrosin haben wir in Massen, aber Kaboxorid ist uns vor kurzem erst ausgegangen. Die neue Lieferung wird erst am Ende des Monats erwartet.")
		
		ANSWER("Das ist eine Katastrophe! Wissen sie, wer noch Kaboxorid besitzen könnte?",103)
	NODE(103)
		SAY("Ich fürchte ausser uns führt nur noch ProtoPharm dieses Produkt. Es sei denn, wartet! Kaboxorid wird von den El Farid hergestellt, sie haben sicher noch mehr davon. Versuchen sie es dort einmal. Wollen sie das Hydroxin trotzdem?")
		
		ANSWER("Wenn es nicht anders geht, dann nehme ich zuerst einmal nur das Hydrosin, danke. Ich muss mich beeilen und wieder zurück zu NEXT, auf Wiedersehen.",104)
	NODE(104)
		GIVEITEM(9102)
		SAY("Sie sind doch von NEXT, nicht wahr? Ich wollte nur noch sagen, dass ProtoPharm wie verrückt NEXT Aktien kauft... Aber das wissen sie wahrscheinlich schon. Viel Glück.")
		SETNEXTDIALOGSTATE(105)
		ENDDIALOG()
		
	NODE(105)
		SAY("Hatten sie nicht gesagt sie müssten schnellstens zurück zu NEXT?")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(150)
		TAKEITEM(9102)
		if(result==0)then
			SAY("Wo bleiben sie denn mit den Medikamenten?! Machen sie schnell. Beeilene sie sich.")
			ENDDIALOG()
		else

			SAY("Runner! Wo bleiben sie! Ich habe keine Lust unsere Systemadministratorin zu verlieren. Violet Derix ist eine sehr wichtige Person für uns! Haben sie die Medikamente?!")
		
			ANSWER("Ich habe leider nur Hydrosin bekommen, man hat mir gesagt, dass es das andere Zeug nur in der El Farrid Gegend gibt oder bei ProtoPharm.",151)
		end
	NODE(151)
		SAY("Nur Hydrosin? Das reicht nicht, Violets Zustand verschlechtert sich sichtlich. Auf dem Monitor sieht sie schon jetzt fast wie eine Leiche aus. Verdammt, das erinnert mich viel zu stark an den Tod meiner Familie. Verschwinden sie! Holen sie das verdammte Kaboxorid!")
		
		ANSWER("WEITER",152)

--Spieler bekommt ein Bike für die Fahrt 1535 in der vorigen Mission 03
	NODE(152)
--NEW
			SAY("Sie haben ja schon ein NEXT Motorrad zur Verfügung gestellt bekommen. Versuchen sie mit Almachim zu sprechen, er wird sich auskennen und hoffentlich dieses Kaboxorid organisieren können. Er lebt bei den El Farrid.")
		
			ANSWER("Bevor ich gehe, bei BioTech hatte man mir gesagt, dass Protopharm wie verrückt NEXT Aktien kauft.",153)
--NEWEND
	NODE(153)
		SAY("Das mag schon sein, aber nun kümmern sie sich erst einmal um dieses verdammte Zeug!! Das ist jetzt wichtiger.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()


-----------------------------------------------------
--Almachim

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich bin momentan sehr beschäftigt, warum versuchen sie es nicht ein anderes Mal?")
			ENDDIALOG()
		else
			SAY("Willkommen in unserem Dorf, Runner. Es ist selten, aber ab und zu verirren sich doch einige Stadtmenschen zu uns. Meistens haben sie jedoch ein Anliegen. Was ist das eure?")
		
			ANSWER("Ihr habt erraten, dass ich mit einem Anliegen komme. Es ist sehr dringend und das Leben einer wichtigen Person hängt von meinem Erfolg ab.",201)
		end
	NODE(201)
		SAY("Der ganze lange Weg, um einem Stadtmenschen das Leben zu retten? Nun, das ehrt euch. Hier nehmt erst einmal einen Schluck. Keine Angst, es ist nur Alkohol. Hier in der Wüste funktionieren viele Stadtregeln nicht so, wie sie sie kennen. Stadtmenschen erkranken an ihrem hektischen Leben und doch machen sie weiter und weiter. Ihr Leben bedeutet ihnen nichts und doch weinen sie, wenn eine ihnen nahe stehende Person stirbt. Könnt ihr mir das erklären?")
		
		ANSWER("WEITER",202)
	NODE(202)
		SAY("Aber hier in der Wüste, wo der Wind mit dem Sand zusammen eine tödliche Gefahr birgt. Hier, wo der Skorpion seine Opfer sucht, hier gelten andere Regeln. Wenn ihr hier etwas erreichen wollt, dann müsst ihr Geduld haben. Also, was ist euer Anliegen?")
		
		ANSWER("Ich benötige dringend das Produkt, das sich Kaboxorid nennt. Es liess sich nirgends sonst auftreiben. Man sagte mir, dass es hier hergestellt wird.",203)
	NODE(203)
		SAY("Kaboxorid? Es wundert mich nicht, dass es rar geworden ist. Letztes Jahr, wurde die Produktion dieses Stoffes eingestellt. Was im Moment noch kursiert ist der Restposten. Seht, der Stoff wird ursprünglich aus einem Kaktus gewonnen und wirkt in der reinsten Form wie eine Droge. ")
		
		ANSWER("WEITER",204)
	NODE(204)
		SAY("Jedoch in angemessenen Portionen kann er einen Patienten aus dem tiefsten Koma erwecken. Aber es gibt ein paar Nebenwirkungen, weswegen die Produktion eingestellt wurde. Eine der Nebenwirkungen ist spontane Mutation.")
		
		ANSWER("Die Produktion eingestellt? Das ist doch Wahnsinn, und das nur wegen ein paar Mutationen?",205)
	NODE(205)
		SAY("Ich weiss nicht wie die Stadtmenschen denken. Wenn man einen El Farrid fragen würde, ob er lieber mutiert sein möchte oder Tod, dann wählt er mit Sicherheit den Tod. Es wäre ein unwürdiges Leben als mutierter. Die Würde, die jeder mit sich trägt und die auch sein Körper ausdrückt wäre zerstört. Die Reinheit des Geistes vergiftet.")
		
		ANSWER("Ich möchte gar nicht an euren Traditionen oder Werten rütteln, ich möchte einzig und allein dieses Mittel.",206)
	NODE(206)
		SAY("Das ihr unsere Werte in Frieden lasst, spricht für euch. Ja, wir haben den Stoff selbst nicht mehr, aber wir besitzen noch die Blueprints die wir für die Produktion benutzt haben. Davon könnten wir euch einen überlassen.")
		
		ANSWER("Na bitte, genau diese brauche ich...",207)
	NODE(207)
		SAY("Nicht so hastig, Runner. Hier in der Wüste wird einem nichts geschenkt. Jedoch scheint eure Geschichte euch selbst sehr viel abzuverlangen. Hier habt ihr den Blueprint. Erstellt daraus das dringend benötigte Kaboxorid und eilt euch, das Leben eines Menschen kann sehr zerbrechlich sein.")
		
		ANSWER("Habt dank, ich stehe in eurer Schuld. Ich muss mich nun aber wirklich sputen.",208)
	NODE(208)
		GIVESPECIALITEM(1507,1,9103)
		SAY("Dann eilt zurück hinter die sicheren Mauern eurer Stadt.")
		SETNEXTDIALOGSTATE(209)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(209)
		SAY("Ihr lasst euch aber viel Zeit damit, dass dringend benötigte Gegenmittel nach Neocron zu schaffen.")
		ENDDIALOG()
		


-----------------------------------------------------
--Mason

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Jetzt vertrödelt keine Zeit, es geht hier immerhin um ein Menschenleben!!")
			ENDDIALOG()
		else
			SAY("Habt ihr es?")
		
			ANSWER("Ja, ich habe es, hier ist es.",251)
		end
	NODE(251)
		TAKEITEM(9103)
		if(result==0)then
			SAY("Mann, wir brauchen Kaboxorid! Keinen Blueprint oder sonstigen Müll!")
			ENDDIALOG()
		else
			SAY("Dem Himmel sei dank, ich hätte nicht gewusst, was sonst passiert wäre. Aber nun, nun sollte es kein Problem mehr sein. Die Fachleute haben mir versichert, dass sie mit Hilfe der Substanzen aus dem Koma erwachen wird.")
		
			ANSWER("Dann bin ich ja gerade noch rechtzeitig gekommen. Es war aber wirklich nicht ganz leicht, da ich diese Substanz erst mithilfe eines Blueprints erstellen musste.",252)
		end
	NODE(252)
		SAY("Ja, wirklich?  Ihr habt bei NEXT jetzt aber wirklich ein Stein im Brett. Dank euch haben wir nun unsere Systemadministratorin wieder. ")
		
		ANSWER("Das sind gute Nachrichten, aber es war ja auch nicht ganz einfach.",253)
	NODE(253)
		SAY("Ich wünschte nur, es hätte auch so ein Wundermittel für meine arme Frau gegeben. Naja. Ich habe die Meldung von euch verfolgt und es scheint wirklich so, als ob ProtoPharm von allen möglichen Seiten versucht NEXT Aktien zu erstehen. Das ist zwar beunruhigend, aber ich denke wir können es erst einmal abwarten und beobachten.")
		
		ANSWER("WEITER",254)
	NODE(254)
		GIVEMONEY(20000)
		SAY("Für euren Verdienst möchte ich ihnen gerne diese 20.000 Credits überreichen und ich denke, ich kann ihnen für das nächste Mal eine Probefahrt mit einem Experimental Fahrzeug sichern. Bedankt euch deshalb nicht bei mir, sondern bei Torben. Ein Mechaniker, der solange Druck gemacht hat, bis ich zustimmen musste. Aber denkt dran, immer schön trainieren.")
		EPICRUNFINISHED(3,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end