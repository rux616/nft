--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Black Lily
--1,D,Jenna
--2,D,Human resource Director

--Startnode, Person
--0,Human Resource
--50,Jenna
--100,Black Lily
--Items -> none

-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Willkommen bei der CityAdmin. Das war wom�glich die beste Wahl in ihrem Leben, dass sie uns beigetreten sind. Die CityAdmin ist die gr�sste �ffentliche Einrichtung zum Schutz der B�rger und f�r Neocron. Ja, das alles haben die B�rger Lioon Reza zu verdanken.")
	
	ANSWER("Da ich ja nun zu der CityAdmin geh�re, dachte ich, dass diese auch Besch�ftigung f�r mich hat.",1)

NODE(1)
	SAY("Darauf wollte ich gerade zu sprechen kommen. Als loyales Mitglied in der CityAdmin wird von ihnen erwartet, dass sie gegen ein entsprechendes Entgeld auch bestimmte Aufgaben �bernehmen. Es steht ihnen zwar frei, aber wer schl�gt schon der Hand, die einen f�ttert einen Gefallen aus?")
	
	ANSWER("WEITER",2)
NODE(2)
	SAY("Ausserdem arbeitet die CityAdmin ja f�r die B�rger, nicht so wie damals die Diktatur der Psim�nche. Da war jeder Gedanke unter Kontrolle und die Leute lebten praktisch in Sklaverei. Viele Leute vergessen, wer sie von all dem befreit hat.")
	
	ANSWER("Aber, ist es denn jetzt so viel anders? Ich meine, man wird f�r ein einfaches loses Wort gleich hingerichtet...",3)

NODE(3)
	SAY("Redet nicht weiter. Ich gebe ihnen einen guten Rat. Und selbst dies tue ich nur, weil sie neu hier sind. �ber die CityAdmin stellt man keine Vermutungen an, man akzeptiert sie so wie sie ist. Selbiges gilt f�r Mr Reza. Falls ihr nicht auf meine Warnung h�rt, so wird man euch mit dem Tode bestrafen. Und das alles nur wegen eurem losen Mundwerk.")
	
	ANSWER("Ich verstehe. Ich werde ihren Rat bedenken. Dann erz�hlen sie mir, was die CityAdmin so ausmacht.",4)
NODE(4)
	SAY("Gut. Wie schon gesagt, hat Reza die B�rger Neocrons vor der grausamen Diktatur der Crahn befreit. Nach �ber hundert Jahren war Neocron befreit. Das geschah im Jahre 2724 so weit ich mich entsinne. Das war auch der Beginn einer neuen �ra der Freiheit.")
	
	ANSWER("WEITER",5)
NODE(5)
	SAY("Lioon Rezas Gro�z�gigkeit haben die Crahn es zu verdanken, dass sie noch immer in der Stadt geduldet werden. Es wurden viele sinnvolle Neuerungen umgesetzt, damit es die B�rger einfacher haben. So wurde die Rechtsprechung beispielsweise vereinfacht. ")
	
	ANSWER("WEITER",6)
NODE(6)
	SAY("Nun weiss jeder, was er darf und was nicht. Den Erfolg kann man im Plaza und in ViaRosso sehen, die Kriminalit�t ist gleich null. ")
	
	ANSWER("WEITER",7)
NODE(7)
	SAY("Dies alles trotz der grossen Schwierigkeiten, nachdem so viele Leute sich dem grossen Trek angeschlossen haben um nach Irata III zu fliegen. Damals hatte die Kriminalit�t explosionsartig zugenommen. Den CopBots von der CityAdmin ist es zu verdanken, dass hier immer noch Ordnung herrscht.")
	
	ANSWER("Wisst ihr, was aus den Teilnehmern am grossen Trek geschehen ist? Ich meine, nachdem der Kontakt zu Irata III abgebrochen ist.",8)
NODE(8)
	SAY("Das ist leicht zu beantworten, denn der grosse Trek ist noch lange nicht bei Irata III angekommen. Die CityAdmin konzentriert sich momentan einzig und allein auf die Sicherheit und um das Wohlergehen der B�rger von Neocron.")
	
	ANSWER("WEITER",9)
NODE(9)
	SAY("Aber genug von diesen alten Geschichten. Es gilt, eine kleine Lieferung zur NCPD zu bringen. Es mag auch sein, dass ihr der NCPD etwas unter die Arme greifen k�nnt. Neocron ist gross und es gibt immer etwas zu tun.")
	
	ANSWER("Gut, ich werde dieses Paket ausliefern. Was enth�lt es, wenn ich fragen darf?",10)
	ANSWER("Ich glaube ich bin f�r so etwas noch nicht bereit.",11)
NODE(10)
	GIVEITEM(9052)
	SAY("Es enth�lt ein paar sichergestellte Drogen, die im Zusammenhang mit einem Verbrechen registriert worden sind. M�glich, dass ihr bei der NCPD mehr davon erfahrt. Viel Spass bei eurem ersten Auftrag f�r die CityAdmin.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(200)
	ENDDIALOG()
	
NODE(11)
	SAY("Wie sie meinen. Kommen sie zur�ck, wenn sie bereit sind.")
	ENDDIALOG()
	

-----------------------------------------------------
--Officer Jenna, NCPD

NODE(50)
	TAKEITEM(9052)
	if(result==0)then
		SAY("Sie haben das Paket vergessen. Sie sehen besser zu, dass sie es besorgen.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(51)
		SAY("Hallo, Runner. Ich hoffe sie haben das Paket dabei? Gut, hier geht n�mlich alles drunter und dr�ber. Das heisst zwar normalerweise nichts, aber heute ist es besonders schlimm.")
	
		ANSWER("Hier bitte. Warum herrscht hier so eine Aufregung?",51)
	end
NODE(51)
	SAY("Ihr habt es noch nicht erfahren? Es wurde gestern morgen ein hohes Mitglied der CityAdmin ermordet aufgefunden. Stellen sie sich das vor, ein Mord in der CityAdmin. Da verstehen sie sicher, dass hier jetzt einiges an Aufruhr ist, oder?")
	
	ANSWER("Ein Mord in so hoher Position? Und gibt es schon einen Verdacht?",52)
NODE(52)
	SAY("Tja, die Spuren sind nicht besonders aufschlussreich. Es gibt auch keine Zeugen. Die einzigen, die offiziell in seiner N�he waren, waren Copbots. Ausserdem wurden noch die Drogen am Tatort gefunden, die sie hier gerade gebracht haben.")
	
	ANSWER("WEITER",53)
NODE(53)
	SAY("Die M�glichkeiten sind im Moment einfach so zahlreich. Es k�nnten Black Dragon gewesen sein, worauf die Drogen schliessen lassen k�nnten. Es k�nnten aber auch die Tsunamis, vielleicht eine T�nzerin oder sogar die Twilight Guardian gewesen sein.")
	
	ANSWER("WEITER",54)
NODE(54)
	SAY("Klartext heisst das, wir haben einfach zu viele Spuren momentan und dies f�hrt auch zu dem Chaos heute. Sie haben gerade erst bei der CityAdmin angefangen, nicht?")
	
	ANSWER("Ja, das stimmt so in etwa.",55)
NODE(55)
	SAY("Ich denke sie haben da eine gute Wahl getroffen, die CityAdmin ist ein sehr sicherer und gut bezahlter Arbeitsplatz. Nat�rlich muss man die diversen Regeln nat�rlich kennen und beachten. Falls sie eh im Moment nichts zu tun haben, k�nnten sie mir einen kleinen Gefallen tun.")
	
	ANSWER("Wenn ich helfen kann, so sagen sie nur ein Wort. Ich bin gerne bereit dazu.",56)
	ANSWER("Es tut mir leid, aber ich habe noch etwas dringendes zu erledigen.",58)
NODE(56)
	SAY("Diese Einstellung lobe ich mir. Es gibt da eine T�nzerin, die ab und zu mal Kontakt zu Defries hatte. Defries ist der Ermordete. Es ist zwar h�chst unwahrscheinlich, dass sie etwas mit dem Mord zu tun hatte, aber es ist besser alle losen Enden zu �berpr�fen. Wir haben so viele M�glichkeiten, dass wir jede Hilfe brauchen k�nnen.")
	
	ANSWER("Kein Problem, das kann ich ruhig �bernehmen. Wo kann ich denn diese T�nzerin treffen?",57)
NODE(57)
	SAY("Sie sollten sie irgendwo im Pepper Park finden k�nnen. Ihr Name ist Black Lily. Sie k�nnen mir danach noch einen kurzen Bericht erstatten und dann sind sie schon fertig.")
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	

NODE(58)
	SAY("Falls sie es sich noch �berlegen, k�nnen sie jederzeit wiederkommen.")
	ENDDIALOG()



-----------------------------------------------------
--Black Lily, Pepper Park

NODE(100)
	SAY("Hey, ich denke ich kann auch ausgefallene W�nsche erf�llen. Na, wie w�rs?")
	
	ANSWER("Vielleicht sp�ter, ich komme eigentlich aus einem anderen Grund hierher. Es ist gestern ein Mord geschehen und sie haben den ermordeten gekannt.",101)
NODE(101)
	SAY("Ein Mord? Das ist ein guter Witz. Die H�lfte aller Typen, die ich gekannt habe, sind tot. Da m�ssen sie schon etwas genauer sein.")
	
	ANSWER("Sein Name war Defries und er arbeitete bei der CityAdmin. War ein hohes Tier.",102)
NODE(102)
	SAY("Aha, ja, den kenne ich. Aber warum sollte ich mit ihnen �ber mein Privatleben reden?")
	
	ANSWER("Nun, die NCPD hat mich geschickt. Ist das nicht Grund genug?",103)
NODE(103)
	SAY("Das ist auch ein guter Witz. Wenn die NCPD mich ausfragt, kommt normalerweise ein Officer mit einem CopBot im Schlepptau. Manchmal ist sogar noch einer dieser gruseligen Psi M�nche dabei. Ich habe geh�rt die k�nnen Gedanken lesen. Aber ihr habt ja noch nicht einmal einen NCPD Ausweis oder Plakette.")
	
	ANSWER("Ich gebe zu, dass ist schon etwas seltsam, aber sie werden in der Aufregung vergessen haben, mir einen zu geben. Ich komme aber wirklich von der NCPD.",104)
NODE(104)
	SAY("Ich sage ihnen was, warum geben sie mir nicht ein bischen Motivation? So 300 vielleicht? Vielleicht weiss ich dann ja, was sie wollen...")
	
	ANSWER("Na gut, hier ist das Geld, aber das sollte es auch besser Wert sein.",105)
NODE(105)
	TAKEMONEY(300)
	if(result==0)then
		SAY("Tja, ohne Geld wird das aber nichts. Tut mir leid.")
		ENDDIALOG()
	else
		SETNEXTDIALOG(106)
		SAY("Das m�sst ihr dann schon selbst beurteilen. Danke. Ja ich habe diesen Defris gekannt. Das war vielleicht ein perverses Schwein! Ich bin froh, dass er jetzt endlich mal das bekommen hat, was er verdient. Aber ihr wollt sicher nicht so etwas h�ren, oder?")
	
		ANSWER("WEITER",106)
	end
NODE(106)
	SAY("Ich sage euch, auch die CityAdmin hat Ratten, die stinken. Defris war da bestimmt keine Ausnahme. Ich weiss, das er Drogen von den Black Dragon gekauft hat und ohne seine Pillen eh keinen mehr hoch gekriegt hat. ")
	
	ANSWER("WEITER",107)
NODE(107)
	SAY("Wenn sie mich nach m�glichen Feinden fragen, so sage ich, der Mann hatte zu viel Geld um wirklich pers�nliche Feinde zu haben. Ich habe ihn schon l�nger nicht mehr gesehen. ")
	
	ANSWER("WEITER",108)
NODE(108)
	SAY("Wenn sie nach meiner Meinung fragen, wollte da jemand die CityAdmin angreifen und Defris war nur im Weg.")
	
	ANSWER("Das ist nicht viel, aber danke trotzdem.",109)
NODE(109)
	SAY("War mir ein Vergn�gen und hey, falls sie sich es noch einmal �berlegen, ich bin immer hier zu finden.")
	SETNEXTDIALOGSTATE(110)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()	

NODE(110)
	SAY("Im Moment passt es mir leider gar nicht. Tut mir leid. Aber sie k�nnen ja zu ihrer Geliebten NCPD zur�ckkehren.")
	ENDDIALOG()
	


-----------------------------------------------------
--Officer Jenna


NODE(150)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Haben sie schon Black Lily besucht?")
		ENDDIALOG()
	else
		SAY("Da sind sie ja wieder. Und, was hat sie zu sagen?")
	
		ANSWER("Ich glaube nicht, dass sie besonders gut auf Defris zu sprechen war. Sie meinte, dass es wahrscheinlich kein Mord aus pers�nlichen Motiven war. Ist nicht viel, aber immerhin.",151)
	end
NODE(151)
	SAY("Ist schon klar. Wir werden vielleicht eine Drone zu ihrer �berwachung abstellen, aber ihre Vermutungen decken sich soweit mit den unseren. Danke, dass sie mir da ein bischen Arbeit abgenommen haben. Ich werde jetzt erst noch ein paar Berichte enfertigen m�ssen. *seufz*")
	
	ANSWER("Gut, ich muss eh noch einmal zur�ck zur CityAdmin, wegen des Lieferauftrags.",152)
NODE(152)
	SAY("Einen produktiven Tag noch.")
	SETNEXTDIALOGSTATE(153)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
	
NODE(153)
	SAY("Tut mir leid, aber die Berichte schreiben sich nicht von selbst. Warum gehen sie nicht zur CityAdmin zur�ck?")
	
	ENDDIALOG()

-----------------------------------------------------
--Human Resource Director

NODE(200)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Haben sie schon die NCPD besucht?")
		ENDDIALOG()	
	else
		SAY("Hat wohl l�nger gedauert, als sie gedacht haben, was? Was haben sie solange noch gemacht?")
	
		ANSWER("Keine Angst, das Paket ist rechtzeitig angekommen. Wie sie gesagt haben, habe ich der NCPD etwas helfen k�nnen. Ich bezweifle aber, ob meine Hilfe so viel gebracht hat.",201)
	end
NODE(201)
	GIVEMONEY(1000)
	SETNEXTDIALOGSTATE(202)
	SAY("Ehrlich? Nun, das ist nat�rlich ein triftiger Grund. Die 1000 Credits f�r diese Aufgabe sind schon auf ihr Konto �bwerwiesen worden. Kommen sie wieder, wenn sie etwas mehr ansehen bei uns geniessen. Dann werden wir ihnen auch noch weitere Auftr�ge �berantworten k�nnen.")
	EPICRUNFINISHED(1,0)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(202)
	SAY("Go away")
	ENDDIALOG()

end