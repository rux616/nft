--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--(0),kill Warbot, Elias
--
--1,D,CityAdmin
--2,D,Mason



--Startnode, Person
--0 Human Resource
--50 Elias
--100 CityAdmin
--150 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Ich bin froh sie wieder in unseren Reihen zu sehen. Mason gab mir Instruktionen, ihnen seine Pl�ne bez�glich ProtoPharm und deren tolldreisten Unternehmungen mitzuteilen. Es wurde ein Weg gefunden, wie all dies R�ckg�ngig gemacht werden kann.")
		
		ANSWER("Das h�rt sich schon mal viel versprechend an, aber stimmt dies wirklich?",1)
	NODE(1)
		SAY("Ich weiss leider nicht alle Details des Plans. Ich weiss, dass ein Kontaktmann von den FallenAngels uns dabei helfen wird. Ein gewisser Elias.")
		
		ANSWER("Elias? Ja den kenne ich, recht hochn�sig, aber mal sehen was er sagt, wenn ich ihm wieder unter die Nase komme.",2)
	NODE(2)
		SAY("Wie dem auch sei, der Plan soll bald anlaufen und ich denke sie werden bei Elias gebraucht. Ich habe aber keinen blassen Schimmer warum. Viel Gl�ck, wir alle z�hlen auf sie. Wir wollen ja nicht unseren Arbeitspletz verlieren und in den Wastelands enden...")
		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
		
	NODE(3)
		SAY("Wollten sie nicht Elias in Tech Haven aufsuchen? Wenn alles gekl�rt ist, berichten sie es Mason.")
		ENDDIALOG()

-----------------------------------------------------
--Elias

	NODE(50)
		SAY("Ich habe von all dem geh�rt, was ihr f�r NEXT in der letzten Zeit getan habt. Ich bin beeindruckt. Jetzt geht es aber um etwas anderes. Die Fortschritte von ProtoPharm in den letzten Wochen zu eliminieren. Ich hoffe man hat euch schon gesagt, wie das geschehen soll?")
		
		ANSWER("Ich komme ganz unbedarft hierher. Nein, ich weiss den genauen Plan nicht.",51)
	NODE(51)
		SAY("Nun gut, da ich von Violet Derix selbst mit dieser Aufgabe betraut worden bin, erz�hle ich euch wie genau es geschehen soll. Aber nur weil Violet ausdr�cklich nach ihnen verlangt hat. Wir werden das Netzwerk von Neocron hacken und eine Fehlermeldung hervorrufen. Diese Fehlermeldung wird unsere Rettung sein.")
		
		ANSWER("WEITER",52)
	NODE(52)
		SAY("Violet und ich haben die Zeit genutzt und eine Art Virus konzipiert, dessen einziges Ziel es ist, alle Gesch�ftsdaten der letzten paar Wochen zu l�schen. Damit sind alle Dateien dieser Art im gesamten Netzwerk betroffen.")
		
		ANSWER("WEITER",53)
	NODE(53)
		SAY("Es ist die einfachste und sicherste L�sung. So wird der Fortschritt von ProtoPharm zunichte gemacht und NEXT weiss im Gegenzug allerdings die Schritte des Gegners schon im voraus. NEXT kann dann entsprechend darauf reagieren. Habt ihr all das jetzt verstanden?")
		
		ANSWER("Ahhh...was ist dann die Zusammenfassung?",54)
	NODE(54)
		SAY("Die Zusammenfassung w�re wohl, dass alle Daten auf bis vor ein paar Wochen zurckgesetzt werden. Zu dieser Zeit war alles noch beim alten.")
		
		ANSWER("Ja, so hatte ich das verstanden. Worauf warten wir dann noch?",55)
	NODE(55)
		SAY("Geht schon los... Moment... Das darf doch nicht ...Nicht schon wieder dieser Warbot. Dieses verdammte Biest st�rt in regelm�ssigen Abst�nden unseren Kontakt zu dem City Netzwerk. Wenn das so weitergeht und ich w�hrend des Hackvorgangs unterbrochen werde, so k�nnen wir diese ganze Aktion vergessen. Es ist wohl ein Gl�cksspiel, da kann man nichts machen.")
		
		ANSWER("Was w�re, wenn man den Warbot ausschaltet?",56)
	NODE(56)
		SAY("Sie meinen das ernst? ")
		
		ANSWER("Ja, ich werde den Warbot ausschalten.",57)
	NODE(57)
		SAY("Das w�re nat�rlich die beste L�sung. Der Warbot wird wohl direkt vor den Tech Haven Eing�ngen lauern. Sobald er erledigt ist, werde ich es wissen, und dann den Hackvorgang einleiten. Dann viel Spass mit dem Warbot und viel Gl�ck. ")
		
		ANSWER("WEITER",58)
	NODE(58)
		SAY("Ach ja, ihr k�nnt danach  noch einen CityAdmin angestellten Fragen, ob es funktioniert hat. Mir f�llt der Name gerade nicht ein, aber er befindet sich im CityAdmin Geb�ude. Danach wollte sich Mason auch noch mit euch treffen.")
		SETNEXTDIALOGSTATE(59)
		ENDDIALOG()
		
--Spieler killt Warbot Trigger 0

	NODE(59)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Erledigen sie zuerst den Warbot, danach werde ich mit meiner Aktion starten.")
			ENDDIALOG()
		else
			SAY("So, jetzt ist alles so weit fertig. Besucht noch einmal den Zust�ndigen Angestellten in der CityAdmin und versichert euch, dass es auch wirklich geklappt hat. Dann k�nnt ihr NEXT bericht erstatten.")
			ENDDIALOG()
			
		end


-----------------------------------------------------
--CityAdmin


	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich bin sehr besch�ftigt im Moment. Versuchen sie es doch sp�ter noch einmal.")
			ENDDIALOG()
		else
			SAY("Hallo B�rger, was kann ich f�r sie tun?")
		
			ANSWER("Ich wollte fragen, wieviele Leute gestern dieses Geba�de betreten haben, falls es nichts ausmacht.",101)
		end
	NODE(101)
		SAY("Nein, das macht �berhaupt nichts aus, dank all unserer elektronischen �berwachungsm�glichkeiten ist es nur ein Augenblick. Nanu... das ist seltsam, da ist kein Eintrag f�r Gestern. Das ist aber nicht in Ordnung... f�r vorgestern auch nicht...")
		
		ANSWER("Das ist alles, was ich wissen wollte. Hahaha ... Auf Wiedersehen. ",102)
	NODE(102)
		SAY("Moment, da fehlen ja auch noch Daten...")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
	NODE(103)
		SAY("Ich hab jetzt keine Zeit! Irgendjemand hat das ganze Netz hier durcheinander gebracht. Viele Daten sind einfach irgendwohin verschwunden.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Jetzt nicht. Ich habe alle H�nde voll zu tun, diese ProtoPharm Aasgeier von NEXT fernzuhalten. ")
			ENDDIALOG()
		else
			SAY("Ahh, und schon wieder habt ihr den Tag gerettet. Wie f�hlt man sich dabei? Nun, ich soll einen ganz herzlichen Dank von Violet an sie weiterleiten, nicht zuletzt weil sie ihr das Leben gerettet haben. Auch Mr Digger pers�nlich hat mir aufgetragen ihnen seine Wertsch�tzung mitzuteilen. Nun, aber das Leben geht auch irgendwann weiter und irgendwann werden auch ihre Taten vergessen sein.")
		
			ANSWER("WEITER",151)
		end
	NODE(151)
		SAY("Also geniessen sie es solange sie k�nnen. NEXT hat es sich �brigens nicht nehmen lassen, ihnen ein besonderes Geschenk zu machen. Da sie ja um die Testfahrt betrogen worden sind, stellt ihnen NEXT dieses Experimental Fahrzeug zur Verf�gung. Nat�rlich kostenlos.")
		
		ANSWER("WEITER",152)
	NODE(152)
		GIVEITEM(9104,255)
		SAY("Ich denke in n�chster Zeit wird es wieder ruhiger werden, aber ich w�rde ihnen empfehlen einen Clan zu er�ffnen um mit ihrem Ruf noch mehr f�r NEXT tun zu k�nnen. Auftr�ge direkt von uns wird es so wohl nicht mehr f�r sie geben f�rchte ich. Aber es hat mich gefreut mit ihnen zusammenzuarbeiten.")
		EPICRUNFINISHED(3,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end