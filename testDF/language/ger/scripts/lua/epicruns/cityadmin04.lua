--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Hontoka
--1,D,Kev Critter
--2,D,Human Resource MANN --- ARGHHH diese Scripterei bringt mich noch zum Wahnsinn
--Items

--Startnode, Person
--0,Human Resource
--50,Hontoka
--100,Kev Critter


-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Es sind Probleme aufgetaucht. Probleme, die leider direkt mit ihnen verbunden sind. Es wurde ein Datacube gefunden, ein Datacube mit Propagandamaterial von den Twilight Guardian.")
	
	ANSWER("WEITER",1)
NODE(1)
	SAY("An und für sich nichts aussergewöhnliches. Aber dieser Datacube befand sich zuletzt in ihrem Besitz und sie wissen was das bedeutet?")
	
	ANSWER("Aber das kann nicht sein! Ich würde doch niemals...",2)
NODE(2)
	SAY("Bleiben sie ruhig. Ich habe noch keinen CopBot verständigt. Aber sie verstehen sicherlich, dass auf so etwas normalerweise auch die Todesstrafe steht?")
	
	ANSWER("WEITER",3)
NODE(3)
	SAY("Propaganda der Twilight Guardian ist innerhalb von Neocron verboten.")
	
	ANSWER("Ja, aber dieser Datacube ist ein Trick! Das ist doch Sonnenklar. Ich habe nur einer Person einen Datacube gegeben in der letzten Zeit. Der muss es gewesen sein...",4)
NODE(4)
	SAY("Wir sind uns in solchen Fällen durchaus bewusst, dass jemand unserem Mitarbeiter eine Falle stellen könnte. Die Standardprozedur ist es, dem betroffenen eine gewisse Frist zu setzen.")
	
	ANSWER("WEITER",5)
NODE(5)
	SAY("Ich weiss, dass sie sich in der letzten Zeit sehr bemüht haben und ich gebe ihnen deshalb noch zusätzlich Zeit, ihre Unschuld zu beweisen. Aber sie fangen besser gleich damit an, diese Frist hält nicht ewig an.")
	
	ANSWER("Aber wie soll ich das?Ich wüsste doch nicht wo ich anfangen kann!",6)
NODE(6)
	SAY("Sie fangen am besten dort an, wo sie diesen Datacube verloren oder weitergegeben haben. Hier ist ihr Datacube.")
	
	ANSWER("Das muss dieser Hontoka im Industrial Sektor 02 gewesen sein, dem habe ich so einenCube gegeben.",7)
NODE(7)
	SAY("Das ist nun ihre Sache. CityAdmin kann es sich nicht leisten bei solchen Fällen eine Ermittlung einzuleiten. Falls sie ihre Unschuld nicht beweisen können, so sind sie schuldig. ")
	
	ANSWER("WEITER",8)

--Spieler bekommt Datacube 9054
NODE(8)
	GIVEITEM(9054)
	SAY("Gehen sie und sammeln sie Beweise für ihre Unschuld, oder tragen sie die Konsequenzen.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	
NODE(9)
	SAY("Ich füchte dieses Mal bleibt ihnen keine Zeit für Pausen. Aber wie sie meinen.")
	ENDDIALOG()
	


-----------------------------------------------------
--Hontoka

NODE(50)
	SAY("Na, den kenne ich doch. Ich habe mich schon gefragt, was aus dem kleinen CityAdmin geworden ist.")
	
	ANSWER("Ich habe noch ein oder zwei Fragen zu dem Datacube, den ich ihnen gegeben habe.",51)
NODE(51)
	SAY("Genialer Einfall, nicht? Auf diese Weise werden sie schon bald von den CopBots gejagt und zur Strecke gebracht , ohne dass ich einen Finger rühren muss.")
	
	ANSWER("Also waren sie die falsche Schlange! Warum wollen sie mich ruinieren? Ich wette sie stecken auch hinter den Morden! ",52)
NODE(52)
	SAY("So weit würde ich nun nicht gehen. Sie haben einfach nur ein bischen zu lange an Orten herumgeschnüffelt, die sie nichts angehen. ")
	
	ANSWER("WEITER",53)
NODE(53)
	SAY("Deshalb habe ich ein paar Freunden einen Gefallen getan. Ganz einfach.")
	
	ANSWER("Dafür wirst du büssen! Ich werde mich noch an dir rächen.",54)
NODE(54)
	SAY("Hahahaa. Das möchte ich gerne sehen. Von CopBots gejagt und sich dann mit den Tsunamis anzulegen. Ganz schön dreist. Wo die einzige Hoffnung auf sinnvolle Beweise gegen die Anschuldigungen doch bei einem alten Runner weit draussen in den Wastelands bei einer Müllhalde liegt.")
	
	ANSWER("WEITER",55)
NODE(55)
	SAY("Das ist amüsant. Aber so weit wird es gar nicht erst kommen. Ich werde meinen Freunden jetzt nämlich noch einen Gefallen erweisen und sie töten. Dann gibt es auch keine weiteren Probleme mehr. ")
	
	ANSWER("Was soll das heissen? Meinen sie den Blakkmist Garbage Dump?",56)
NODE(56)
	SAY("Was spielt das schon für eine Rolle, stirb!")
	SETNEXTDIALOGSTATE(57)
	ATTACK()
	ENDDIALOG()
NODE(57)
	SAY("Du wirst hier nicht lebend davon kommen!")
	ATTACK()
	ENDDIALOG()
--Spieler wird angegriffen

-----------------------------------------------------
--Kev Critter

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Nicht noch so ein Bittsteller, geh weg, Runner.")
		ENDDIALOG()
	else
		SAY("Es ist selten, dass ich Besucher aus Neocron selbst bekomme, in diesen Zeiten.")
	
		ANSWER("Bitte, es ist sehr wichtig, ich brauche ihre Hilfe.",101)
	end
NODE(101)
	SAY("Da, haben sie das gesehen!? Dieses verdammte Moskito! Na, aber da gibt es ja noch schlimmere. Vor allen Dingen die Riesenbiester aus den Sümpfen im Westen.")
	
	ANSWER("Hören sie mir doch mal zu.",102)
NODE(102)
	SAY("Ich höre ja! Aber es ist immer dasselbe! Wenn mal Besuch kommt, dann will der garantiert etwas von mir. Bitte, bitte, ich brauch das und das... oder, ich brauche Hilfe oder ein ähnlicher Mist. Ich hab das langsam satt.")
	
	ANSWER("WEITER",103)
NODE(103)
	SAY("Ausserdem ist das Leben hier draussen kein Zuckerschlecken, manche meinen ich würde hier nur warten um IHNEN einen Gefallen zu tun.")
	
	ANSWER("Nein, den Eindruck wollte ich wirklich nicht erwecken. Sie scheinen wirklich meine einzige Hoffnung zu sein.",104)
NODE(104)
	SAY("Ich habe doch schon gesagt, mir reicht es! Hauen sie ab...")
	
	ANSWER("Oh nein, so leicht lass ich mich nicht abspeisen. Ich werde hier warten, bis sie mir helfen.",105)
NODE(105)
	SAY("Hrmph")
	
	ANSWER("Ich werde hier warten.",106)
NODE(106)
	SAY("Ach, na gut. Penetranter Stadtmensch! Aber wenn ich ihnen helfen soll, dann müssen sie auch mir helfen.")
	
	ANSWER("Gerne, aber bei was?",107)
NODE(107)
	SAY("Nun ja, ich bin im Moment dabei, mit verschiedenen Drogen zu experimentieren. Die Nächte hier draussen sind halt immer ziemlich einsam. Bringt mir einfach je zwei der folgenden Dinge")
	
	ANSWER("WEITER",108)
NODE(108)
	SAY("... lasst mich überlegen, ja, Snake Minion Teeth, das klingt gut. Die gibt es unter einer alten Ruine in der Wüste, Ancient Yucida Village, glaube ich. Und dann noch...")
	
	ANSWER("Moment, moment! Das klingt schon hart genug, findet ihr nicht?",109)
NODE(109)
	SAY("Ach, was solls. Dann bringt mir halt nur die zwei, aber nicht weniger! Dann werde ich sehen, was ich für sie tun kann. Falls du es nicht alleine schaffst, hol dir ein paar Freunde zur Hilfe. Vielleicht verkauft sie ja auch jemand.")
	SETNEXTDIALOGSTATE(110)
	ENDDIALOG()

--sPIELER ORGANISIERT SNAKE MINION TEETH X2 8152
-- NOCH NACHSCHAUEN


NODE(110)
	TAKEITEMCNT(8152,2)
	if(result==0)then
		SAY("Wo sind denn meine 2 Snake Minion Teeth? Man kann sie in der Ruine unter der Ancient Yucida Village finden.  Falls du es nicht alleine schaffst, hol dir ein paar Freunde zur Hilfe. Vielleicht verkauft sie ja auch jemand.")
		ENDDIALOG()	
	else
		SETNEXTDIALOGSTATE(111)
		SAY("Ahh, da seid ihr ja wieder.")
	
		ANSWER("Ja, was hattet ihr denn gedacht? Das ihr mich in diese Schlangengrube schickt und nie wieder seht?",111)
	end
NODE(111)
	SAY("Kann nicht leugnen, dass mir dieser Gedanke noch nie gekommen wäre.")
	
	ANSWER("So, jetzt müsst ihr aber mir helfen! Ich habe ein Problem...",112)
NODE(112)
	SAY("Ja, so war die Abmachung. Ich helfe euch, dann legt mal los.")
	
	ANSWER("Um es kurz zu machen, ich habe ein Problem weil man die Daten in einem Datacube direkt mit mir in Verbindung bringt. Aber diese Daten sind nicht von mir...",113)
NODE(113)
	SAY("Ja, Datenextraktion auf der Basis der Entstehungszeit wird nicht mehr gemacht, dass stimmt. Im Klartext, eure ID ist immer noch auf dem Datacube, aber es gibt keine Angaben wann die Daten geändert worden sind.")
	
	ANSWER("WEITER",114)
NODE(114)
	SAY("Das heisst, ihr werdet es schwer haben, alleine mit dem Datacube eure Unschuld zu beweisen.")
	
	ANSWER("Ich müsste halt irgendwie beweisen können, dass es nicht ich war, der die Daten auf diesen Cube gespielt hat.",115)
NODE(115)
	SAY("Das ist knifflig, aber nicht unmöglich. Auf jeden Fall aber nur machbar, wenn ihr es wirklich nicht wart.")
	
	ANSWER("Nein, ich möchte nur wieder eine reine Akte haben. Ich war es ganz bestimmt nicht, der die Twilight Guardian Propaganda auf den Cube geladen hat.",116)
NODE(116)
	SAY("Aber es gibt haufenweise solcher Propagande cubes in diesen Gegenden. Seid ihr sicher, dass dies nicht eurer ist?")
	
	ANSWER("Ganz sicher...",117)
NODE(117)
	TAKEITEM(9054)
	if(result==0)then
		SAY("Ich brauche leider den Datacube damit ich euch helfen kann.")
		SETNEXTDIALOGSTATE(117)
		ENDDIALOG()	
	else
		SETNEXTDIALOGSTATE(118)
		SAY("Nun gut, ich denke ich kann die Daten so extrahieren, dass ihre Entstehungsdaten auch mit angezeigt werden. Wartet mal und gebt mir das Ding.")
	
		ANSWER("Hier bitte.",118)
	end
NODE(118)
	SAY("Das haben wir gleich. Nanu... hier sind einige getarnte Daten drauf. Jetzt habe ich erst einmal Kopien von allen Daten die dort gespeichert waren. Ich schicke diese Daten dann an eure Fraktion, ja? Was war die Fraktion noch gleich...??")
	
	ANSWER("Die CityAdmin natürlich...",119)
NODE(119)
	SAY("Natürlich. Also, ich schicke die Auswertung dann an die CityAdmin. Das sollte eure Unschuld beweisen. Aber wartet noch ein wenig bis ihr euch wieder bei der CityAdmin sehen lasst.  Viel Glück weiterhin.")
	
	SETNEXTDIALOGSTATE(120)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()


NODE(120)
	SAY("Ich habe euren Wunsch doch bereits ausgefüllt. Geht nun. Ihr müsst schon selbst im CityAdmin HQ jemanden aufsuchen, der eure Unschuld bestätigt.")
	ENDDIALOG()	


-----------------------------------------------------
--Human Resource Director

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Sie wagen es, hier aufzutauchen? Haben sie vergessen, dass sie im Moment als krimineller dastehen? Suchen sie diesen Typen in Industrial 02 auf, von dem sie geredet haben.")
		ENDDIALOG()
	else

		SAY("Ich bin froh, dass sie den Weg zurückgefunden haben. Vor etwa einer halben Stunde haben wir unwiderlegbare Beweise für eure Unschuld erhalten. ")
	
		ANSWER("WEITER",151)
	end
NODE(151)
	SAY("Damit sind sie natürlich vor jedweger Verfolgung durch die CopBots ausgenommen.")
	
	ANSWER("Ich bin nur froh, dass das jetzt ausgestanden ist.",152)
NODE(152)
	SAY("Wir werden sie aber jetzt auf jeden Fall noch als Freelance Ermittler in dieser Mordserie benötigen... Die Ermittlungen laufen immer noch auf hochtouren.")
	
	ANSWER("WEITER",153)
NODE(153)
	SAY("Allerdings können wir sie im Moment nicht speziell irgendwohin schicken, daher sollten sie eine kleine Pause nehmen. ")
	
	ANSWER("WEITER",154)
NODE(154)
	GIVEMONEY(10000)
	SETNEXTDIALOGSTATE(155)
	SAY("Als Entschädigung, dass die CityAdmin sie fälschlicherweise angeklagt hat geben wir ihnen 10000 Credits. Diese können sie ja in ihren Urlaub investieren.")
	EPICRUNFINISHED(1,3)	
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()
	
NODE(155)
	SAY("Go away")
	ENDDIALOG()








end