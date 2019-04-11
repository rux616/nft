--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--1,D,Figaro
--6(0),PvP,Figaro
--2,D,Benjamin
--3,D,Mazzaro

--Startnode, Person
--0
--50, Figaro
--100,Benjamin
--150,Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Sie kommen gerade rechtzeitig. Es ist etwas unvorhergesehenes geschehen. Man hat unsere Forschungsanlage sabotiert und einige Subsysteme des Netzwerks gehackt. Chester Cohor konnte zum Gl�ck gerade noch die ID der Hacker scannen.")

		ANSWER("WEITER",1)
	NODE(1)
		SAY("�berhaupt nicht �berraschend ist dabei, dass die Hacker BioTech Mitglieder sind. Allerdings haben wir keinerlei Handfeste Beweise, da die relevanten Daten durch den Hack Angriff besch�digt worden sind. Auch unsere Forschung wurde um Tage zur�ckgesetzt.")

		ANSWER("Das h�tte man sich doch denken k�nnen, dass BioTech mit denselben Mitteln arbeitet wie Tangent.",2)
	NODE(2)
		SAY("Das mag schon sein, aber sie untersch�tzen dabei die Komplexit�t solcher Systeme und Versuchsaufbauten. Diese k�nnen n�mlich durch selbst geringste Einfl�sse stark gest�rt werden. Auch war  man gerade dabei, das Netzwerk umzukonfigurieren. Immer noch als Reaktion auf die Hack Attacke der Fallen Angels.")

		ANSWER("Was wurde nun von Tangent daraufhin beschlossen? Irgendeine Antwort muss doch darauf erfolgen.",3)
	NODE(3)
		SAY("Ja, in der Tat. Die Konsequenz ist, dass wir auch Mitglieder von direkt angreifen werden. Das soll nat�rlich als Warnung gelten. Da ihr schon das letzte Mal so eine grosse Kompetenz bei einer solchen Mission bewiesen habt werdet ihr diese Aufgabe �bernehmen")

		ANSWER("Es ist nicht so, dass ich mich um solche Auftr�ge gerissen habe. Aber ich tue es.",4)
		ANSWER("Ich denke hier muss ich passen.",7)
	NODE(4)
		SAY("Ja, noch etwas. Die Tsunamis haben anscheinend auch ihre Finger im Spiel. Sie sollten deswegen noch einmal mit Figaro sprechen. Wir geben ihnen freie Hand, welche Handlungsweise sie ihm gegen BioTech empfehlen. H�ren sie sich an, was den Black Dragons m�glich ist und entscheiden sie entsprechend. ")

		ANSWER("WEITER",5)
	NODE(5)
		SAY("Auch hat ihr Kontakt, Benjamin, ausdr�cklich darauf bestanden mit ihnen zu verhandeln. Seine Worte waren, Feinde, die ich kenne sind mir lieber als unbekannte Feinde. Er hat es geschafft einen Teil des Prototypen der BioTech Strahlen Kanone zu entwenden und hat zugesagt es uns zu verkaufen.")

		ANSWER("Ich bin ja inzwischen ganz sch�n gefragt. Aber wen genau soll ich jetzt umbringen?",9)
	NODE(6)
		SAY("Ihre Erfolge sprechen sich eben doch herum, nicht wahr? Es gibt viel zu tun, packen sie es an. Zuerst sollten sie Figaro besuchen und nachdem sie ein BioTech Mitglied geflatlined haben, wartet Benjamin noch auf sie.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()


	NODE(7)
		SAY("Wenn sie es sich noch anders �berlegen, z�gern sie nicht uns zu kontaktieren.")
		ENDDIALOG()
		
	NODE(8)
		SAY("Sie haben doch ihren Auftrag schon, machen sie sich an die Arbeit. Treffen sie sich mit Figaro in Pepper 03 und Benjamin in Industrial 02. Ach ja, vergessen sie nicht einen BioTech Employee als Warnung umzulegen. Wenn alles erledigt ist, sie Benjamin besucht haben, dann berichten sie Mazarro.")
		ENDDIALOG()

	NODE(9)	
		SAY("Der Auftrag ist es, Einen Employee von BioTech zu t�ten. Dabei darf es kein Runner sein.")
		
		ANSWER("Und ich kann dann irgendeinen Biotech Employee flatlinen, egal welchen?",10)
	NODE(10)
		SAY("Nur einen Employee. Ansonsten k�nnen wir es nicht gelten lassen.")

		ANSWER("CONTINUE",6)

-----------------------------------------------------
--Figaro

	NODE(50)
		SAY("Habe lange nichts mehr von dir gesehen, Runner. Aber daf�r umso mehr geh�rt. Du kommst ganz sch�n rum.")

		ANSWER("Ja, ich hatte alle H�nde voll in der letzten Zeit.",51)
	NODE(51)
		SAY("Hab schon geh�rt, wie du es den Fallen Angels reingedr�ckt hast, nicht schlecht. Vielleicht wird aus dir noch mal was. Aber genauso funktioniert es hier in der Unterwelt. Black Dragon und Tsunami liegen st�ndig im Krieg miteinander. Die Tsunamis spielen sich immer so auf, als h�tten sie ein Vorrecht auf alles.")

		ANSWER("WEITER",52)
	NODE(52)
		SAY("Und dann gibt es gelegentlich auch noch Reibereien mit Twilight Guardian oder der Anarchy Breed. Es ist eigentlich selten, dass eine Firma offen in einen solchen Konflikt eingreift. ")

		ANSWER("WEITER",53)
	NODE(53)
		SAY("Es ist oft eher so, dass die Firmen uns anheuern, um ihre Drecksarbeit zu erledigen. Und sie zahlen gut dabei. Also was gibt es? Mir wurde gesgt, deine Entscheidung z�hlt. Deswegen befiehlt uns und wir werden BioTech dementsprechend Schaden zuf�gen.")

		ANSWER("Was f�r M�glichkeiten habt ihr denn?",54)
	NODE(54)
		SAY("Nun, lass mich �berlegen. Sabotage, Morde und Erpressung. Also so ziemlich das �bliche, was? HA!")

		ANSWER("Eigentlich sollte man Sabotage mit Sabotage begleichen. Ich schlage vor, ihr nehmt euch mal ein paar BioTech Installationen vor.",55)
		ANSWER("Sie sind schon aufs�ssig genug, es wird Zeit denen eine Lehre zu erteilen. Bringt ein paar von diesen Mistkerlen um.",56)
		ANSWER("Erpresst ein paar Wissenschaftler, damit sie keinen Vorsprung gewinnen k�nnen. Tangent wird diesen Auftrag von der CityAdmin bekommen und nicht BioTech.",57)
	NODE(55)
		SAY("Gerne, das machen wir mit links. Einen produktiven Tag noch.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(56)
		SAY("Gerne, das machen wir mit links. Einen produktiven Tag noch.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(57)
		SAY("Gerne, das machen wir mit links. Einen produktiven Tag noch.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(58)
		SAY("Die Informationen wurden schon weitergeleitet und die Aktion ist am rollen. Sie brauchen sich darum nicht mehr zu k�mmern. Sagten sie nicht irgendwas von einem Treffen in Industrial 02?")
		ENDDIALOG()
		
--Spieler killt zwei Biotechler 6

-----------------------------------------------------
--Benjamin

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Wir waren erst sp�ter verabredet, ich erwarte erst noch jemand anderen.")
			ENDDIALOG()	
		else
			SAY("Da seid ihr ja endlich! Ich habe den Verdacht beobachtet zu werden. Der Deal ist mit Tangent schon ausgehandelt. Per Zufall rutschte auch ein Teil des Prototypen in meine Tasche, als ich das Geb�ude verlies. Hier, er geh�rt nun Tangent.")

			ANSWER("Wortkarg wie immer. Gut, danke f�r das Teil...",101)
		end

--Spieler bekommt Prototyp 9154

	NODE(101)
		GIVEITEM(9154)
		SETNEXTDIALOGSTATE(102)
		SAY("Haut endlich ab... wartet!! Ich habe noch etwas, was euch interessieren k�nnte. Ich habe einige schmutzige Sachen �ber Andressa herausgefunden, sie arbeitet bei BioTech. Ich habe auch ein paar Dokumente, die dies belegen. Interessiert?")

		ANSWER("Aber nat�rlich, alles gegen BioTech ist bei Tangent herzlich willkommen.",102)
	NODE(102)
		SAY("Das kostet aber noch einmal 5000. ")
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
	NODE(103)
		TAKEMONEY(5000)
		if(result==0)then
			SAY("Kommt wieder, wenn ihr 5000 habt...")
			SETNEXTDIALOGSTATE(104)
			ENDDIALOG()
		else
			GIVEITEM(9155)
			SAY("Sie ist eine der Wissenschaftlerinnen, die die Waffe designt haben und ist ma�geblich an allen Stufen der Entwicklung beteiligt. Allerdings hat sie auch eine recht dunkle Seite. Vielleicht reicht es, wenn ich sage sie steht auf Mutanten... den Rest findet ihr in der Akte.")

			ANSWER("Zeigt mal her. ... Meine G�te! Das ist ja wiederlich... Genau das, was wir brauchen! Gute Arbeit, Mann.",105)
		end
	NODE(104)
		SAY("Und? Habt ihr jetzt 5000 Credits dabei?")

		ANSWER("Ja, ich musste sie m�hsam zusammenkratzen.",103)


	NODE(105)
		SAY("Ja, ja, jetzt verzieht euch aber. Berichten sie ihren Vorgesetzten.")
		SETNEXTDIALOGSTATE(106)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(106)
		SAY("Ihr habt jetzt aber wirklich schon alles, was ich bieten kann! Also verschwindet jetzt wieder!! Gehen sie zur�ck zu ihrer Fraktion.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mazzaro

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Sie haben noch nicht alle ihre Aufgaben erf�llt. Einen BioTech Employee t�ten ,mit Benjamin in Industrial 02 treffen und Figaro in Pepper 03 sagen, was er zu tun hat. Ist denn das so schwierig?")
			ENDDIALOG()	
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Sie haben noch nicht alle ihre Aufgaben erf�llt. Einen BioTech t�ten ,mit Benjamin in Industrial 02 treffen und Figaro in Pepper 03 sagen, was er zu tun hat. Ist denn das so schwierig?")
				ENDDIALOG()	
			else
				SAY("Ich bin immer noch �ber diesen dreisten Sabotageakt erz�rnt. Sie haben unsere Forschung um einiges zur�ckgeworfen. Aber ich bin immer noch zuversichtlich. Unser Entwurf ist vielversprechender, meiner Einsch�tzung nach.")

				ANSWER("WEITER",151)
			end
		end

	NODE(151)
		SAY("Nachdem ich mir die BioTech Blaupausen angesehen habe bin ich zu dem Schluss gekommen, dass wir nichts bef�rchten m�ssen.Ich hoffe die Antwort auf diesen Sabotage Akt ist entsprechend ausgefallen?")

		ANSWER("Ja, BioTech wird noch lange daran knabbern m�ssen, denke ich. Bevor ich es vergesse. Mein Kontaktmann konnte mir ein Teil des BioTech Prototypen liefern. Ich denke es wird recht aufschlussreich sein.",152)

--Spieler verliert Prototype

	NODE(152)
		TAKEITEM(9154)
		if(result==0)then
			SAY("Aber sie haben den Prototypen gar nicht bei sich.")
			ENDDIALOG()
		else
			SAY("Ausgezeichnet. Sie haben sich schon jetzt einen sicheren Platz bei Tangent verschafft. Neulich habe ich selbst Damion Jordan eine Anekdote von euch erz�hlen h�ren. ")

			ANSWER("WEITER",153)
		end
	NODE(153)
		SAY("Der Kampf gegen die Fallen Angels Mitglieder stand im Mittelpunkt  Es gibt dabei aber verschiedene Versionen, wie ihr die Fallen Angels fertig gemacht habt. Aber ihr habt sie nicht wirklich alle auf einmal bek�mpft, oder?")

		ANSWER("Aber nat�rlich habe ich das und jeder der was anderes behauptet ist ein L�gner, ha haha!",154)
	NODE(154)
		GIVEMONEY(20000)
		SAY("Nehmt diese 20000 Credits als kleine Entsch�digung f�r die M�he, die ihr euch gemacht habt. Bis zum n�chsten Mal, wenn wir wieder ihre Hilfe brauchen.")
		EPICRUNFINISHED(4,4)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end