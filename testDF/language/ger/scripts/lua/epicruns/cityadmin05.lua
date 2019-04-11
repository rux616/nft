--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--PvP 3 Twilight Guardian
--1,D,Cole
--2,D,Simmons

--Startnode, Person
--0,Human Resource
--50,Cole
--100,Grand
--150,Simmons

--Items
-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Ich habe jetzt eine Bestätigung von der NCPD. Es gibt nur zwei mögliche Zielpersonen, die als Hacker in Frage kommen. Sie wurden anhand eurer Liste indentifiziert. ")
	
	ANSWER("WEITER",1)
NODE(1)
	SAY("Ich schlage vor, da sie diese Liste auch organisiert haben kümmern sie sich darum, diesen Hacker zu finden.")
	
	ANSWER("Na gut, was ich anfange, dass bringe ich auch zuende.",2)
	ANSWER("Da muss ich passen, ich bin wirklich noch nicht so weit.",7)
NODE(2)
	SAY("Das höre ich gerne, CityAdmin braucht immer willensstarke Runner von eurem Schlag. Ihr solltet mit dem Kontaktmann reden, der euch diese Liste gegeben hat. Er könnte euch vielleicht noch mehr über die einzelnen Personen sagen.")
	
	ANSWER("Sie meinen diesen lästigen Ethan Cole, nicht wahr?",3)
NODE(3)
	SAY("Schon möglich. Denkt daran, der Hacker wird nicht alleine gearbeitet haben. Ich habe auch noch andere unerfreuliche Nachrichten, fürchte ich.")
	
	ANSWER("WEITER",4)
NODE(4)
	SAY("Es wurde noch ein Mord begangen seit dem letzten Mal. Die Ermittlungen stecken zur Zeit fest, obwohl jede neue Fährte genauestens analysiert wird.")
	
	ANSWER("WEITER",5)
NODE(5)
	SAY("Vielleicht kümmern sie sich am besten aber erst einmal um diesen Hacker und finden den CopBot wieder.")
	
	ANSWER("Geht klar, lassen sie das mal meine Sorge sein.",6)
NODE(6)
	SAY("Viel Glück.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(8)
	ENDDIALOG()
	
NODE(7)
	SAY("Dann ruht euch aber nicht zu lange aus, bevor noch ein Mord geschieht.")
	
	ENDDIALOG()
NODE(8)
	SAY("Geht ihr schon der Spur nach? Viel Glück. Versuchen sie es doch bei diesem Cole in Outzone 01.")
	
	ENDDIALOG()



-----------------------------------------------------
--Cole

NODE(50)
	SAY("Willkommen, CityAdmin, wie kann ich heute zu diensten sein?")
	
	ANSWER("Wie wäre es, diesen Sarkasmus erst einmal sein zu lassen?",51)
NODE(51)
	SAY("Zu Befehl! Hey, was erwartest du? Ich lebe hier wie ein Hund, zwischen Mutanten und Gesetzlosen. Im Vergleich zu denen spreche ich mit einer Engelszunge.")
	
	ANSWER("Können wir zu wichtigerem übergehen? Ich brauche wieder Informationen...",52)
NODE(52)
	SAY("Warum ist es immer so, dass die Leute den Hals nie voll kriegen? Sie wollen immer mehr und mehr und mehr. Was soll es den dieses Mal sein?")
	
	ANSWER("Ich brauche mehr Informationen über zwei der Typen, die auf der Liste angegeben sind. ",53)
NODE(53)
	SAY("Geht klar! Wie immer gibt es aber vorher etwas für mich. Man kann sagen, was man will, nur nicht, dass ich mich zu billig verkaufe.")
	
	ANSWER("Was ist es dieses Mal? ",54)
NODE(54)
	SAY("Ganz einfach, du bist doch CityAdmin, richtig? Ich habe neulich beim Wetten eine kleinere Summe verloren und da ich das Geld nicht gleich aufbringen konnte, haben mich die Kerle fast tot geschlagen.")
	
	ANSWER("WEITER",55)
NODE(55)
	SAY("Ich war schon immer ein Verfechter, gleiches mit gleichem zu vergelten. Für ihre Frechheit werden sie bezahlen. Da ich aber ihre Namen nicht mehr genau im Kopf habe, muss ihre Fraktion, also die Twilight Guardian für sie büssen.")
	
	ANSWER("Ich soll Leute für sie umbringen?",56)
NODE(56)
	SAY("Ja, oder hast du ein Problem damit? Twilight Guardian bleiben nun mal Ratten. Da kann man ja mal drauftreten. Am besten du killst gleich 5 von den Schweinen.")
	
	ANSWER("Was?! So viele?! Ich soll wirklich fünf Twilight Guardian killen? Nein, drei, mehr nicht. Mein letztes Angebot.",57)
NODE(57)
	SAY("Nun gut, dann eben drei. Klar, dass es vorher aber auch keine Info gibt, oder? Sie können aber ruhig so deinen Fähigkeiten entsprechen. Bis später")

	ANSWER("Kann das vielleicht auch ein bischen genauer sein. Wen soll ich nun flatlinen?",63)
	
--Spieler killt drei Twilight Guardian seines Ranges

NODE(58)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Es sind noch keine drei Tod, komm wieder wenn der Job erledigt ist.")
		ENDDIALOG()
	else
		SAY("Super, das geschieht ihnen recht. Saubere Arbeit! Hatte nicht gedacht, dass du auch so gut im Flatlinen bist. Also, die zwei Namen, die du suchst sind Grand und Simmons. Der eine, Grand hält sich auch hier in der Outzone auf, gleich um die Ecke in Sektor  02.")
	
		ANSWER("WEITER",60)
	end
NODE(60)
	SAY("Der andere, Simmons, ist ein verfluchter Angsthase! So wie ich ihn in Erinnerung habe, lebt er im Pepperpark. Er ist vernarrt in Meeresfrüchte und isst fast täglich im Sektor 02 in Pepper Park bei Roccos Seafood.")
	
	ANSWER("WEITER",61)
NODE(61)
	SAY("Beide sind Elite Hacker, so wie ich sie in Erinnerung habe... Viel Spass noch.")
	SETNEXTDIALOGSTATE(62)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
	
NODE(62)
	SAY("Runner, mach dich lieber hinter den Hackern her. Grand und der andere heisst Simmons und ist im Pepper Park 02 zu finden.")
	ENDDIALOG()

NODE(63)
		SAY("Der Auftrag ist es, 3 Runner von den Twilight Guardian zu töten. Dabei dürfen diese keine Angestellten, Wachen oder offizielle Vertreter sein, sondern nur Runner.")
		
		ANSWER("Und ich kann dann irgendeinen Runner flatlinen?",64)
NODE(64)
		SAY("Nur, wenn diese sich auf deinem Niveau befinden oder dein Niveau übersteigen. Ansonsten kann ich es nicht gelten lassen.")
		SETNEXTDIALOGSTATE(58)
		ENDDIALOG()

-----------------------------------------------------
--Grand

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Verschwinde, keine Zeit, muss hacken!!")
		ENDDIALOG()
	else
		SAY("Was soll diese Scheisse, kommt hier einfach her und labert mich blöd an.")
	
		ANSWER("Ich bin von der CityAdmin...",101)
	end
NODE(101)
	SAY("Verdammte Admin! Hau bloss ab ...")
	ATTACK()
	ENDDIALOG()
		
--Spieler wird angegriffen


-----------------------------------------------------
--Simmons

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(2)
	if(result==0)then
		SAY("I..Ich esse gerade. Wenns recht ist?!")
		ENDDIALOG()
	else

		SAY("Ha... Hallo? Wwas kann ich für sie tun?")
	
		ANSWER("Sind sie Mr Simmons?",151)
	end

NODE(151)
	SAY("J...ja, der b...bin ich, warum?")
	
	ANSWER("Ich bin von der CityAdmin, ich habe ziemlich lange gebraucht um sie zu finden.",152)
NODE(152)
	SAY("Oh mein Gott! Was können sie von mir denn wollen? I..ich besitze doch gar nichts von Wert. ")
	
	ANSWER("Ich weiss aus sicherer Quelle, dass sie ein Hacker sind.",153)
NODE(153)
	SAY("Ich ? ... Ich und ein Hacker? Ich... was soll ich sagen? Schon möglich...")
	
	ANSWER("Dann waren sie es also, der den Copbot modifizierrt hat! Sie stecken hinter den Morden an den CityAdmin Angestellten!",154)
NODE(154)
	SAY("Ich habs gewusst, es ist alles aus! Ich gestehe! Nur tun sie mir nicht weh. Ich habe den CopBot modifiziert damit er all diese CityAdmin Angestellten umbringt.")
	
	ANSWER("WEITER",155)
NODE(155)
	SAY("Ich habe ihm den Sender entfernt und dann mit Hilfe eines modifizierten Law Enforcers umprogrammiert. Er läuft jetzt selbsständig.")
	
	ANSWER("WEITER",156)
NODE(156)
	SAY("Es war alles von den Twilight Guardian geplant! Man hatte mich gezwungen mitzuarbeiten. Ich konnte doch nicht anders, so glauben sie mir doch bitte! ")
	
	ANSWER("WEITER",157)
NODE(157)
	SAY("Sie wollten die CityAdmin langsam zermürben und durch ständige Todesfälle in die Enge treiben.")
	
	ANSWER("Sie haben gerade ein ausreichendes Geständnis abgelegt um ihre völlige Auslöschung zu garantieren, da bin ich mir  sicher. Sie wissen sicherlich, was ihnen jetzt bevorsteht?",158)
NODE(158)
	SAY("Bitte nicht!Ich tue alles, alles, nur bringen sie mich nicht um! Ich habe doch keinen Genrep Klon!... Ich weiss! Hier, ich gebe ihnen 10000 Credits, ja?")
	
	ANSWER("WEITER",159)
NODE(159)
	SAY("Und ich kann ihnen den Law Enforcer so umbauen, dass er wie ein Implantat wirkt, das ihre Fertigkeiten verbessert, ja? Bitte haben sie erbarmen, verraten sie mich nicht an die NCPD.")
	
	ANSWER("Hmm, sie sind schon ein armer Kerl, falls sie wirklich gezwungen worden sind.",160)
NODE(160)
	SAY("Ich bitte sie, ich werde alles tun, wirklich alles...")
	
	ANSWER("Nun gut, aber ich werde noch ihre Hilfe benötigen um den CopBot zu lokalisieren.",161)
NODE(161)
	SAY("Ja, das ist gut! Ich kann den genauen Ort, wo sich der CopBot aufhält ermitteln. Wenn sie ihn dann erledigt haben, dann werde ich ihnen den Law Enforcer modifizieren. ")
	
	ANSWER("WEITER",162)
NODE(162)
	SAY("Aber ich werde noch ein bischen Zeit brauchen um den genauen Ort zu lokalisieren.")
	
	ANSWER("WEITER",163)
NODE(163)
	SAY("Wie gesagt, er arbeitet jetzt völlig autonom und die Berechnung seiner Position wird ein bischen schwierig. Bitte haben sie dafür Verständniss.")
	
	ANSWER("Nun gut, ich werde ihnen ein paar Tage gewähren. Dann sollten sie aber den Ort genau ermittelt haben. Ich sollte bevor, ich sie wieder Besuche, noch einmal bei einen Resource Director vorbeisehen.",164)
NODE(164)
	GIVEMONEY(10000)
	SETNEXTDIALOGSTATE(165)
	SAY("Ich werde mein bestes tun, haben sie noch einmal vielen Dank.")
	EPICRUNFINISHED(1,4)
	ACTIVATEDIALOGTRIGGER(3)
	ENDDIALOG()

NODE(165)
	SAY("Go away")
	ENDDIALOG()

end