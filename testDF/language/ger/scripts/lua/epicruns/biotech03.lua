--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Andressa
--6(1), PvNPC, Mutanten Beckert
--2, D, Beckert
--3,D, McMillan


--Startnode, Person
--0 Human Resource
--50 Andressa
--100 Beckert
--150 McMillan
--

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("BioTech h�tte ihnen gerne eine neue Aufgabe �bergeben. Es geht dabei um den Inhalt des Datacubes, den sie uns beschafft haben. Es gab dort ein paar Aufschlussreiche Informationen. Es wurden dort einige Decknamen von Personen genannt, die offensichtlich Informationen direkt von innerhalb BioTechs erhalten. ")
		
		ANSWER("Dann gibt es also jemanden, der all diese Geheimnisse ausplaudert? Ich dachte diese Ger�chte w�ren auch nur Ger�chte und nicht wahre Geschichten.",1)
	NODE(1)
		SAY("Diese Geschichten sind auch nicht wahr! Sie wurden stark ver�ndert, um so BioTech mehr Schaden zu k�nnen. ")
		
		ANSWER("WEITER",2)
	NODE(2)
		SAY("Allerdings haben wir keinen richtigen Anhaltspunkt gefunden, um jemanden spezielles dabei herausfiltern zu k�nnen. Sprich, wir wissen nicht wer all diese Informationen ausgibt. Besonders da es wahrscheinlich mehrere sind.")
		
		ANSWER("Und was kann man dagegen tun?",3)
		ANSWER("Ich kann diesen Auftrag jetzt nicht �bernehmen.",7)
	NODE(3)
		SAY("Es ist ein aufwendiger Prozess, aber es wird geplant verd�chtige Leute zu �berwachen und sie zu �berf�hren. Dazu brauchen wir ihre Hilfe. BioTech will, dass sie eine gewisse Andressa aufsuchen. Sie befindet sich hier im selben Sektor, da sie oft bei Chez Sypher essen geht. Sie arbeitet in unserer Forschungsabteilung und einige ihrer Aktivit�ten sind verd�chtig.")
		
		ANSWER("So weit kann ich folgen, aber was soll ich dann tun? Soll ich sie einfach fragen, ob sie all diese Informationen weiter gibt?",4)
	NODE(4)
		SAY("Nein, das w�re auch etwas tollpatschig. Sie sollen ihr ein Angebot machen, und wenn sie anbeisst, dann haben wir schon mal eine der Personen gefunden. Bieten sie ihr einfach 50000 Credits an um sie dazu zu bewegen etwas auszuplaudern. Sie m�ssen sie ja nicht bezahlen.")
		
		ANSWER("Was geschieht mit ihr, falls sie Informationen ausgegeben hat?",5)
	NODE(5)
		SAY("Ich denke mit all dem Wirbel, den es hier gegeben hat, wird man sie zur�ckstufen. Eine Entlassung w�rde nur noch mehr unn�tigen Schmutz aufwirbeln.")
		
		ANSWER("Gut, ich mache es.",6)
	NODE(6)
		SAY("Sie befindet sich hier im Sektor, sie geht gerne in den Pausen etwas essen.  Berichten sie alles, was sie von ihr erfahren k�nnen direkt an Mr McMillan.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
		
	NODE(7)
		SAY("Schade. Falls sie es sich anders �berlegen, melden sie sich einfach.")
		ENDDIALOG()
		
	NODE(8)
		SAY("Sie haben doch ihren Auftrag schon. Besuchen sie Andressa im Restaurant auf der R�ckseite des BioTech Geb�udes.")
		ENDDIALOG()
		


-----------------------------------------------------
--Andressa

	NODE(50)
		SAY("Ja, was ist? Ich versuche hier gerade meine Mahlzeit zu geniessen.")
		
		ANSWER("Sie arbeiten doch bei BioTech nicht wahr?",51)

	NODE(51)
		SAY("Ja, das tue ich. Warum wollen sie das wissen?")
		
		ANSWER("Wie soll ich es sagen... ich bin sehr an BioTech interessiert und fragte mich, ob sie etwas von dort drinnen wissen. So wie Ger�chte oder schmutzige Machenschaften...",52)
	NODE(52)
		SAY("F�r wen halten sie mich, ich arbeite bei BioTech doch nicht um herumzuschn�ffeln.")
		
		ANSWER("Sind sie da ganz sicher? Es k�nnte sehr lukrativ sein, sagen wir  50000, falls die Information stimmt?",53)

	NODE(53)
		SAY("50000? Das ist ja eine ganz sch�n hohe Summe. Woher kann ich wissen, dass sie mich nicht irgendwie verarschen wollen?")
		
		ANSWER("K�nnen sie nicht. gehen sie auf den Deal ein, oder nicht?",54)
	NODE(54)
		SAY("... Ich falle doch nicht auf diesen uralten alten Trick herein. Ich denke nicht, dass sie an Informationen �ber BioTech wollen, oder? Ich denke viel eher, dass sie hinter denjenigen her sind, die diese Ger�chte ins Netz stellen, nicht wahr?")
		
		ANSWER("Aber auf keinen Fall ... oder wissen sie, wer dahinter steckt? Und woher wissen sie dar�ber?",55)

	NODE(55)
		SAY("Nun, ich habe mir schon gedacht, dass BioTech mich nicht ungestraft mit all dem davonkommen lassen w�rde. Ich meine, sie sind doch sicher von BioTech geschickt worden um mich auszuhorchen. Habe ich recht?")
		
		ANSWER("Das kommt darauf an...",56)
	NODE(56)
		SAY("Gut, dann sage ich ihnen was. Ich weiss, dass meine Stelle hier bei BioTech auf dem Spiel steht und werde ihnen deswegen freiwillig erz�hlen, was ich �ber diese Geschichten weiss. So wird man mir zumindest anrechnen k�nnen, dass ich sofort die Wahrheit gesagt habe.")
		
		ANSWER("Das klingt akzeptabel. Dann sprechen sie mal...",57)

	NODE(57)
		SAY("Nun gut, vor ein paar Monaten hat es angefangen. Ich sa� wie �blich hier beim Mittagessen, als ich auch von jemandem angesprochen wurde. Es wurde mir viel Geld versprochen, wovon ich dann allerdings nur die H�lfte immer bekam. Zuerst war ich z�gerlich, da meine Arbeit bei BioTech mir sehr gef�llt und ich dem Konzern nicht in den R�cken fallen wollte. ")
		
		ANSWER("WEITER",58)
	NODE(58)
		SAY("Viele BioTech Mitarbeiter sind sehr nette Kollegen und das Klima innerhalb der Firma ist auch gut. Aber die Verlockung des Geldes war zuviel f�r mich. Ich konnte diesem Angebot nicht wiederstehen. Also verriet ich ihnen einige wenige Informationen.")
		
		ANSWER("Soweit h�tte ich mir das auch zusammenreimen k�nnen, k�nnen sie nicht etwas spezifischer sein?",59)

	NODE(59)
		SAY("Nun, es gibt nicht viel, dass ich �ber diese Leute weiss. Ich weiss nur, dass sie meine Infos �ber eine Verteilerstation draussen in den Wastelands geleitet haben. Irgendwo in der W�ste bei alten Ruinen.")
		
		ANSWER("Wissen sie noch wo diese Verteilerstation war?",60)
	NODE(60)
		SAY("Ja, es ist entweder die Ancient Yucida Village oder die Ancient Loba Village. Mehr weiss ich aber auch nicht. Selbst die Person, die zu mir geschickt wurde, hat keinen Namen erw�hnt und er taucht auf keiner Registrierung auf. Vielleicht ist das aber ihr bester Anhaltspunkt.")
		
		ANSWER("Ich werde pers�nlich mal nachsehen...",61)

	NODE(61)
		SAY("Viel Gl�ck dabei.")
		SETNEXTDIALOGSTATE(62)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(62)
		SAY("Haben sie schon in der Ancient Loba Ruine nachgesehen?")
		ENDDIALOG()
		



-----------------------------------------------------
--Beckert

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Verschwinden sie, sehen sie nicht, dass ich zu tun habe?")
			ENDDIALOG()
		else	
			SAY("Sie wollen mit mir sprechen?")
		
			ANSWER("Ja, richtig. Dies hier ist doch eine Verteilerstation, oder?",101)
		end
	NODE(101)
		SAY("Nun ja, sie ist klein aber mein. Ich verdiene mein Geld damit, sie zu vermieten. Meistens wollen die Kunden Kan�le, die keinem Gesetz unterliegen und hier draussen herrscht kein Gesetz. Sind sie vielleicht daran interessiert, meine Station zu mieten?")
		
		ANSWER("Nein, nicht wirklich. Ich bin viel eher daran interessiert, wer diese Station in letzter Zeit von ihnen gemietet hat...",102)
	NODE(102)
		SAY("Aber, aber, das kann ich doch nicht machen! Meine Kunden verlassen sich doch darauf, dass ich diskret vorgehe.")
		
		ANSWER("Es w�re mir aber ziemlich wichtig.",103)
	NODE(103)
		SAY("Lassen sie mich mal �berlegen. Es g�be da etwas, was sie tun k�nnen. Es gibt hier draussen einiges an ekligen und gemeinen Tieren und Mutationen. Ich habe schon seit Tagen kein Auge mehr zugemacht. Wenn sie ein paar von den Mistviechern abknallen, dann sage ich ihnen, was sie wissen wollen.")
		
		ANSWER("Wenn sie darauf bestehen...",104)
	NODE(104)
		SAY("Sehr gut. Bringen sie einfach 5 von den Mutanten um. Dann kann ich vielleicht wieder vern�nftig schlafen. ")
		
		ANSWER("WEITER",105)
	NODE(105)
		SAY("Diese Mutanten sind hier �brigens mit Implantaten ausgestattet, was wohl auch f�r ihre Aggressivit�t verantwortlich ist. Ich kann ihnen ja eines davon geben, wenn sie wiederkommen. Hab sie haufenweise hier, kann sie aber nicht gebrauchen.")
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
--Spieler t�tet 5 Mutanten trigger 6

	NODE(106)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ich habe sie genau beobachtet, sie habe noch keine 5 Mutanten gekillt.")
			ENDDIALOG()
		else
			SAY("Sehr sch�n, h�rt ihr das? Kein Knurren und Br�llen mehr... Hier habt ihr erst einmal eines dieser Implantate, da steht BioTech drauf. Ich weiss aber nicht, was das bedeuten soll. Ich habe auch durch meine Gesch�ftslisten gesehen und ich konnte die Leute nicht so schnell finden. ")
		
			ANSWER("WEITER",107)
		end

--Spieler bekommt Mutanten Implantat
	NODE(107)
		GIVEITEM(9202)
		SAY("Ich kann sie ihnen aber gerne schicken. Wohin soll ich sie denn senden?")
		
		ANSWER("Einfach an BioTech, es wird dann schon den Weg zu mir finden.",108)
	NODE(108)
		SAY("BioTech, huh? Was solls, ich sende ihnen, wer diese Station benutzt hat.")
		SETNEXTDIALOGSTATE(109)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()		


	NODE(109)
		SAY("Das geht nicht so schnell, immer mit der Ruhe. Ein bischen Zeit m�ssen sie mir schon lassen. Warum gehen sie nicht zu ihrem Hauptquartier zur�ck und warten dort?")
		ENDDIALOG()


-----------------------------------------------------
--McMillan

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if (result==0)then
			SAY("W�rden sie sich noch etwas gedulden, ich habe im Moment noch keine Zeit. Danke.")
			ENDDIALOG()
		else
			SAY("Verzeihung, aber ich bin im Moment sehr besch�ftigt. Also machen wir es kurz. Die Ger�chte im Netz, sie erinnern sich, sind �brigens weniger geworden. Es scheint so langsam abzuklingen.")
		
			ANSWER("Ich habe einige Nachforschungen angestellt, im Auftrag von BioTech. Dabei habe ich herausgefunden, dass eine gewisse Andressa interne Informationen von BioTech verkauft hat.",151)
		end
	NODE(151)
		SAY("Na, das ist doch ein Fortschritt. Je weniger es von solchen Leuten gibt, desto weniger schlechte Publicity gibt es.")
		
		ANSWER("Ausserdem habe ich eine Sendestation entdeckt, die f�r den Datentransfer dieser Ger�chte verwendet wurde. Der Besitzer hat mir zugesichert, dass er eine Liste mit den Personen, die die Station genutzt haben an BioTech schickt.",152)
	NODE(152)
		SAY("Ausgezeichnet, gute Arbeit.")
		
		ANSWER("Da ist aber noch etwas. Ich habe da einen Chip gefunden, der in Mutanten eingepflanzt war. Diese Mutanten waren besonders aggressiv. Kann es sein, dass BioTech versuche an Mutanten ausf�hrt?",153)
	NODE(153)
		SAY("Aber nat�rlich. Laut Gesetz sind Mutanten weniger wert als Tiere. Man darf mit denen machen was man will.")
		
		ANSWER("Aber das waren doch auch mal Menschen...",154)
	NODE(154)
		TAKEITEM(9202)
		if(result==0)then
			SAY("Wo haben sie denn den Chip gelassen? Sie m�ssen ihn mir schon �bergeben, damit ich damit etwas anfangen kann.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(155)
			SAY("Ja, so ein Geschw�tz h�re ich oft, Runner, aber ich mache die Regeln nicht, ich halte mich nur an sie. Gebt den Chip einfach mir, und ich werde die Informationen da drinnen auswerten lassen. ")
		
			ANSWER("Gut, ich melde mich dann wieder, sobald die Information von der Verteilerstation angekommen ist.",155)
		end
	NODE(155)
		GIVEMONEY(10000)
		SAY("Tut das, hier ist ein Lohn von 10000 Credits. Haltet euch derweil etwas in Form.")
			EPICRUNFINISHED(5,2)
		ACTIVATEDIALOGTRIGGER(3)		
		ENDDIALOG()
		

end