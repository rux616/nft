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
		SAY("Sie kommen gerade recht. Es ist etwas schreckliches vorgefallen. Sie haben schon von unserer Systemadministratorin geh�rt? Ich wurde davon benachrichtigt, dass sie vergiftet wurde und nun im Koma liegt. Nicht auszudenken, was passieren k�nnte, wenn sie sterben w�rde. ")
		
		ANSWER("WEITER",51)
	NODE(51)
		SAY("Sie k�nnte ihre Programmierkunstwerke nicht mehr vervollst�ndigen und das ist nicht alles. Mit ihrem Tod, w�rden alle ihre Anteile auf den offenen Markt fliessen und die ganze Firmenstruktur k�nnte sich ver�ndern. Und glauben sie mir, so eine Art Ver�nderung ist gar nicht erw�nscht.")
		
		ANSWER("Was soll geschehen?",52)
	NODE(52)
		SAY("Die Fachleute sagten mir, es gebe eine Medizin um sie aus dem Koma zu erwecken. Aber die Medizin gibt es nur bei BioTech und ProtoPharm. ProtoPharm wird sie uns bestimmt nicht aush�ndigen, also brauchen wir sie von BioTech. Die Wirkstoffe, die wir brauchen sind Hydrosin und Kaboxorid. Worauf warten sie noch? Beeilen sie sich und holen sie die Chemikalien von einem Biotech Mitarbeitern!")
		
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		

-----------------------------------------------------
--BioTech

	NODE(100)
		SAY("Guten Tag Runner, was kann ich f�r sie tun?")
		
		ANSWER("Es ist sehr wichtig! Geben sie mir Hydrosin und Kaboxorid!",101)
	NODE(101)
		SAY("Aber nat�rlich. Man hat mir schon mitgeteilt, ein Bote w�rde diese Medizin abholen. Leider gibt es da noch ein kleines Problem...")
		
		ANSWER("Nicht das auch noch! Was f�r ein Problem gibt es denn?",102)
	NODE(102)
		SAY("Hydrosin haben wir in Massen, aber Kaboxorid ist uns vor kurzem erst ausgegangen. Die neue Lieferung wird erst am Ende des Monats erwartet.")
		
		ANSWER("Das ist eine Katastrophe! Wissen sie, wer noch Kaboxorid besitzen k�nnte?",103)
	NODE(103)
		SAY("Ich f�rchte ausser uns f�hrt nur noch ProtoPharm dieses Produkt. Es sei denn, wartet! Kaboxorid wird von den El Farid hergestellt, sie haben sicher noch mehr davon. Versuchen sie es dort einmal. Wollen sie das Hydroxin trotzdem?")
		
		ANSWER("Wenn es nicht anders geht, dann nehme ich zuerst einmal nur das Hydrosin, danke. Ich muss mich beeilen und wieder zur�ck zu NEXT, auf Wiedersehen.",104)
	NODE(104)
		GIVEITEM(9102)
		SAY("Sie sind doch von NEXT, nicht wahr? Ich wollte nur noch sagen, dass ProtoPharm wie verr�ckt NEXT Aktien kauft... Aber das wissen sie wahrscheinlich schon. Viel Gl�ck.")
		SETNEXTDIALOGSTATE(105)
		ENDDIALOG()
		
	NODE(105)
		SAY("Hatten sie nicht gesagt sie m�ssten schnellstens zur�ck zu NEXT?")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(150)
		TAKEITEM(9102)
		if(result==0)then
			SAY("Wo bleiben sie denn mit den Medikamenten?! Machen sie schnell. Beeilene sie sich.")
			ENDDIALOG()
		else

			SAY("Runner! Wo bleiben sie! Ich habe keine Lust unsere Systemadministratorin zu verlieren. Violet Derix ist eine sehr wichtige Person f�r uns! Haben sie die Medikamente?!")
		
			ANSWER("Ich habe leider nur Hydrosin bekommen, man hat mir gesagt, dass es das andere Zeug nur in der El Farrid Gegend gibt oder bei ProtoPharm.",151)
		end
	NODE(151)
		SAY("Nur Hydrosin? Das reicht nicht, Violets Zustand verschlechtert sich sichtlich. Auf dem Monitor sieht sie schon jetzt fast wie eine Leiche aus. Verdammt, das erinnert mich viel zu stark an den Tod meiner Familie. Verschwinden sie! Holen sie das verdammte Kaboxorid!")
		
		ANSWER("WEITER",152)

--Spieler bekommt ein Bike f�r die Fahrt 1535 in der vorigen Mission 03
	NODE(152)
--NEW
			SAY("Sie haben ja schon ein NEXT Motorrad zur Verf�gung gestellt bekommen. Versuchen sie mit Almachim zu sprechen, er wird sich auskennen und hoffentlich dieses Kaboxorid organisieren k�nnen. Er lebt bei den El Farrid.")
		
			ANSWER("Bevor ich gehe, bei BioTech hatte man mir gesagt, dass Protopharm wie verr�ckt NEXT Aktien kauft.",153)
--NEWEND
	NODE(153)
		SAY("Das mag schon sein, aber nun k�mmern sie sich erst einmal um dieses verdammte Zeug!! Das ist jetzt wichtiger.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()


-----------------------------------------------------
--Almachim

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich bin momentan sehr besch�ftigt, warum versuchen sie es nicht ein anderes Mal?")
			ENDDIALOG()
		else
			SAY("Willkommen in unserem Dorf, Runner. Es ist selten, aber ab und zu verirren sich doch einige Stadtmenschen zu uns. Meistens haben sie jedoch ein Anliegen. Was ist das eure?")
		
			ANSWER("Ihr habt erraten, dass ich mit einem Anliegen komme. Es ist sehr dringend und das Leben einer wichtigen Person h�ngt von meinem Erfolg ab.",201)
		end
	NODE(201)
		SAY("Der ganze lange Weg, um einem Stadtmenschen das Leben zu retten? Nun, das ehrt euch. Hier nehmt erst einmal einen Schluck. Keine Angst, es ist nur Alkohol. Hier in der W�ste funktionieren viele Stadtregeln nicht so, wie sie sie kennen. Stadtmenschen erkranken an ihrem hektischen Leben und doch machen sie weiter und weiter. Ihr Leben bedeutet ihnen nichts und doch weinen sie, wenn eine ihnen nahe stehende Person stirbt. K�nnt ihr mir das erkl�ren?")
		
		ANSWER("WEITER",202)
	NODE(202)
		SAY("Aber hier in der W�ste, wo der Wind mit dem Sand zusammen eine t�dliche Gefahr birgt. Hier, wo der Skorpion seine Opfer sucht, hier gelten andere Regeln. Wenn ihr hier etwas erreichen wollt, dann m�sst ihr Geduld haben. Also, was ist euer Anliegen?")
		
		ANSWER("Ich ben�tige dringend das Produkt, das sich Kaboxorid nennt. Es liess sich nirgends sonst auftreiben. Man sagte mir, dass es hier hergestellt wird.",203)
	NODE(203)
		SAY("Kaboxorid? Es wundert mich nicht, dass es rar geworden ist. Letztes Jahr, wurde die Produktion dieses Stoffes eingestellt. Was im Moment noch kursiert ist der Restposten. Seht, der Stoff wird urspr�nglich aus einem Kaktus gewonnen und wirkt in der reinsten Form wie eine Droge. ")
		
		ANSWER("WEITER",204)
	NODE(204)
		SAY("Jedoch in angemessenen Portionen kann er einen Patienten aus dem tiefsten Koma erwecken. Aber es gibt ein paar Nebenwirkungen, weswegen die Produktion eingestellt wurde. Eine der Nebenwirkungen ist spontane Mutation.")
		
		ANSWER("Die Produktion eingestellt? Das ist doch Wahnsinn, und das nur wegen ein paar Mutationen?",205)
	NODE(205)
		SAY("Ich weiss nicht wie die Stadtmenschen denken. Wenn man einen El Farrid fragen w�rde, ob er lieber mutiert sein m�chte oder Tod, dann w�hlt er mit Sicherheit den Tod. Es w�re ein unw�rdiges Leben als mutierter. Die W�rde, die jeder mit sich tr�gt und die auch sein K�rper ausdr�ckt w�re zerst�rt. Die Reinheit des Geistes vergiftet.")
		
		ANSWER("Ich m�chte gar nicht an euren Traditionen oder Werten r�tteln, ich m�chte einzig und allein dieses Mittel.",206)
	NODE(206)
		SAY("Das ihr unsere Werte in Frieden lasst, spricht f�r euch. Ja, wir haben den Stoff selbst nicht mehr, aber wir besitzen noch die Blueprints die wir f�r die Produktion benutzt haben. Davon k�nnten wir euch einen �berlassen.")
		
		ANSWER("Na bitte, genau diese brauche ich...",207)
	NODE(207)
		SAY("Nicht so hastig, Runner. Hier in der W�ste wird einem nichts geschenkt. Jedoch scheint eure Geschichte euch selbst sehr viel abzuverlangen. Hier habt ihr den Blueprint. Erstellt daraus das dringend ben�tigte Kaboxorid und eilt euch, das Leben eines Menschen kann sehr zerbrechlich sein.")
		
		ANSWER("Habt dank, ich stehe in eurer Schuld. Ich muss mich nun aber wirklich sputen.",208)
	NODE(208)
		GIVESPECIALITEM(1507,1,9103)
		SAY("Dann eilt zur�ck hinter die sicheren Mauern eurer Stadt.")
		SETNEXTDIALOGSTATE(209)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(209)
		SAY("Ihr lasst euch aber viel Zeit damit, dass dringend ben�tigte Gegenmittel nach Neocron zu schaffen.")
		ENDDIALOG()
		


-----------------------------------------------------
--Mason

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Jetzt vertr�delt keine Zeit, es geht hier immerhin um ein Menschenleben!!")
			ENDDIALOG()
		else
			SAY("Habt ihr es?")
		
			ANSWER("Ja, ich habe es, hier ist es.",251)
		end
	NODE(251)
		TAKEITEM(9103)
		if(result==0)then
			SAY("Mann, wir brauchen Kaboxorid! Keinen Blueprint oder sonstigen M�ll!")
			ENDDIALOG()
		else
			SAY("Dem Himmel sei dank, ich h�tte nicht gewusst, was sonst passiert w�re. Aber nun, nun sollte es kein Problem mehr sein. Die Fachleute haben mir versichert, dass sie mit Hilfe der Substanzen aus dem Koma erwachen wird.")
		
			ANSWER("Dann bin ich ja gerade noch rechtzeitig gekommen. Es war aber wirklich nicht ganz leicht, da ich diese Substanz erst mithilfe eines Blueprints erstellen musste.",252)
		end
	NODE(252)
		SAY("Ja, wirklich?  Ihr habt bei NEXT jetzt aber wirklich ein Stein im Brett. Dank euch haben wir nun unsere Systemadministratorin wieder. ")
		
		ANSWER("Das sind gute Nachrichten, aber es war ja auch nicht ganz einfach.",253)
	NODE(253)
		SAY("Ich w�nschte nur, es h�tte auch so ein Wundermittel f�r meine arme Frau gegeben. Naja. Ich habe die Meldung von euch verfolgt und es scheint wirklich so, als ob ProtoPharm von allen m�glichen Seiten versucht NEXT Aktien zu erstehen. Das ist zwar beunruhigend, aber ich denke wir k�nnen es erst einmal abwarten und beobachten.")
		
		ANSWER("WEITER",254)
	NODE(254)
		GIVEMONEY(20000)
		SAY("F�r euren Verdienst m�chte ich ihnen gerne diese 20.000 Credits �berreichen und ich denke, ich kann ihnen f�r das n�chste Mal eine Probefahrt mit einem Experimental Fahrzeug sichern. Bedankt euch deshalb nicht bei mir, sondern bei Torben. Ein Mechaniker, der solange Druck gemacht hat, bis ich zustimmen musste. Aber denkt dran, immer sch�n trainieren.")
		EPICRUNFINISHED(3,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end