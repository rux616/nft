--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--
--0,D,Torben
--1,D,Max
--2,D, Gerard
--3,D,Torben



--Startnode, Person
--0 Human Resource
--50 Torben
--100 Gerard
--150 Max
--200 Gerard
--250 Torben

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Ahh, sie sind zur�ck. Dieses mal gibt es keinen offiziellen Auftrag von NEXT f�rchte ich. Aber ich wollte sie trotzdem fragen, ob sie nicht den alten Torben in der Pepper Park U-Bahn Station besuchen k�nnten. Mit mir wollte er nicht reden, aber er hat ein Problem, falls er seine Arbeit nicht bald wieder aufnimmt. ")
		
		ANSWER("WEITER",1)
	NODE(1)
		SAY("Ich meine, dies ist ja immerhin eine Firma und nicht die Wohlfahrt. Wir k�nnen es uns nicht leisten, Mechaniker durchzuf�ttern, die ihre Arbeit nicht tun. Deshalb frage ich sie, ob sie nicht nachsehen k�nnten und ihm vielleicht helfen k�nnen. Er war einer der Jungs, die die Neocron U-Bahn gebaut hatten. Sozusagen einer der Pioniere.")
		
		ANSWER("Na gut, ich werde mal nachsehen.",2)
		ANSWER("Ich kann im Moment wirklich nicht. Tut mir leid.",3)
	NODE(2)
		SAY("Danke schon mal im voraus. Er befindet sich dort im Gariots Diner.")
		SETNEXTDIALOGSTATE(4)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(3)
		SAY("Vielleicht �berlegen sie es sich ja noch.")
		ENDDIALOG()
		
	NODE(4)
		SAY("K�nnten sie Torben helfen? Sie k�nnen ihn in der Pepper Park Subway Station treffen.")
		ENDDIALOG()
		

-----------------------------------------------------
--Torben

	NODE(50)
		SAY("Hey! Kenne ich dich? Und ich dachte hier w�re ein Platz wo man mit seinen Sorgen ungest�rt w�re.")
		
		ANSWER("Das ist genau der Grund, warum ich hier bin.",51)
	NODE(51)
		SAY("Was? Um allein zu sein? allein mit deinen Sorgen...")
		
		ANSWER("Nein, nicht das. Ich komme von NEXT. Man fragt sich dort, warum du deine Arbeit nicht l�nger tust. NEXT k�nnte dich feuern, wenn das so weitergeht.",52)
	NODE(52)
		SAY("Wie gef�llt dir das U-Bahn System? Ich mag es. Es ist so sch�n beruhigend. Das Rauschen der Hovercabs und ihr leichtes Schwanken.")
		
		ANSWER("WEITER",53)
	NODE(53)
		SAY("Das sah hier noch anders aus, als wir es hier erst aufgebaut haben. Regenwasser legte manche Sch�chte lahm, riesige Gesteinsbrocken mussten aus dem Wege ger�umt werden und einmal hatten sich soggar Mutanten in einem Teil der Sch�chte verbarrikadiert. Wir konnten zwei Monate nur auf unseren H�nden sitzen und warten bis die NCPD das Problem gel�st hat. Ha, das waren noch Zeiten.")
		
		ANSWER("Irgendwie habe ich das gef�hl, du weichst meiner Frage aus.",54)
	NODE(54)
		SAY("NEXT hat immer gut f�r die Arbeit bezahlt. Selbst, als Mr Diggers all seine Anteile der Firma verkaufte und es einen riesen Tumult gab wurden die Zahlungen fortgesetzt.")
		
		ANSWER("Ich weiss, dass du ein Problem hast und bin bereit zu helfen, aber das geht nur mit deiner VERDAMMTEN KOOPERATION !!",55)
	NODE(55)
		SAY("...")
		
		ANSWER("Es tut mir leid, aber es stimmt.",56)
	NODE(56)
		SAY("Ok... ja, ich habe ein Problem, aber ich sollte es eigentlich niemanden sagen. Sie sagten, sie w�rden mir alle Gliedma�en einzeln brechen. Ich hasse Schmerzen. Ich kann sie nicht ertragen...")
		
		ANSWER("Du kannst mir vertrauen. Reiss dich zusammen und erz�hle mir, was passiert ist.",57)
	NODE(57)
		SAY("Diese ... Leute ... kamen zu mir nach meiner Arbeit und schlugen mich zusammen. Ich konnte mich dann gerade noch in das Appartment von mir und meiner Ex Frau retten, bevor ich zusammenbrach. Sie sagten, wenn ich weiter arbeiten w�rde, w�rden sie mir noch mehr weh tun... und... und ich kann doch keinen Schmerz vertragen. Bitte hilf mir...")
		
		ANSWER("Bastarde, einen hilflosen Mann einfach zusammenschlagen. Wer war es, weisst du das? Weiss NEXT davon?",58)
	NODE(58)
		SAY("Nein, ich habe mich nicht getraut. Ich hatte zu gro�e Angst. Aber ich h�rte von �hnlichen F�llen... Die Typen waren von den Black Dragon, kamen aus demOutzone Sektor 5. Kein Zweifel. Aber du alleine wirst niemals gegen sie ankommen. Sie sind ziemlich stark.")
		
		ANSWER("Vielleicht untersch�tzt du mich auch. Aber man k�nnte die CityMercs vielleicht auch zurate ziehen, die haben sicherlich Erfahrung mit diesem Abschaum.",59)
	NODE(59)
		SAY("Das kann gut sein. Ich kenne jemanden hier in Neocron. Gerard ist sein Name und du kannst ihn im  HQ der CityMercs finden. Aber bitte erw�hne mich nur, wenn es unbedingt n�tig ist, ich m�chte mein Leben noch auskosten k�nnen.")
		SETNEXTDIALOGSTATE(250)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	


-----------------------------------------------------
--Gerard

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich habe besseres zu tun, als mich mit ihnen zu unterhalten.")
			ENDDIALOG()
		else
			SAY("Was habt ihr hier zu suchen? Das hier ist CityMerc Gebiet.")
		
			ANSWER("Ich weiss, ich weiss, ich m�chte gerne mit Gerard sprechen.",101)
		end
	NODE(101)
		SAY("Ich bin Gerard.")
		
		ANSWER("Das trifft sich gut. Ich kenne da jemanden, der arbeitet bei NEXT und wird von Black Dragon Abschaum erpresst.",102)
	NODE(102)
		SAY("So etwas kenne ich, kommt hier �fters vor. Erpressungen sind praktisch an der Tagesordnung. Die Black Dragon haben meistens irgendein Motiv dabei. Ich meine, sie erpressen nicht jeden, wann sie gerade Lust haben. Obwohl das auch ab und zu mal vorkommt. Hab mal gesehen, wie sie einem armen Wicht bei lebendigem Leibe das Augenimplantat herausgeschnitten haben. Rauhe Burschen.")
		
		ANSWER("K�nnt ihr da nichts dagegen tun? Ich bin mir sicher die Firma w�rde es auch bezahlen.",103)
	NODE(103)
		SAY("Ich denke, da l�sst sich was machen. Aber wir brauchen noch einmal den genauen Ort, wo dieses Pack sich aufh�lt. Outzone Sektor 5 ist dabei ein bischen wage. Vielleicht kann man sogar mit ihnen reden, soll auch schon vorgekommen sein. Aber da war noch etwas anderes. Ja, es kursieren ein paar Ger�chte, dass ProtoPharm die Black Dragon etwas gegen NEXT aufstachelt, weiss aber nicht ob das stimmt.")
		
		ANSWER("ProtoPharm stachelt die Dragons gegen uns auf?",104)
	NODE(104)
		SAY("So sagt man zumindest. Ok, h�r zu, wir k�mmern uns darum. Aber wir m�ssen genau wissen wo sie sich aufhalten, wir k�nnen ja nicht die ganze Outzone durchk�mmen. Und versucht mal mit ihnen zu reden, vielleicht wollen sie auch nur ein bischen Geld. Im Gef�ngnis Sektor sagtet ihr. Viel Gl�ck.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		


-----------------------------------------------------
--Max

	NODE(150)
		SAY("Sieh an, sieh an. Eine weitere Memme, die sich hier auf unser Gebiet wagt. Schiess los, vielleicht kannst du uns ja �berzeugen, dir nicht gleich vor Ort und Stelle dein Licht auszublasen.")
		
		ANSWER("Ich bin hier, weil ihr ein paar Leute von NEXT erpresst und ohne Grund einfach zusammenschlagt.",151)
	NODE(151)
		SAY("Naja, das werden dann wohl so ein paar h�ssliche Hackfressen gewesen sein, die nur danach gebettelt haben.  NEXT sagst du? Ja, ich glaube du hast recht. Wir haben ProtoPharm einen kleinen unofiziellen Gefallen getan. Die haben euch wohl auch nicht mehr sehen k�nnen.")
		
		ANSWER("Ihr handelt euch damit ganz sch�nen �rger ein. Gibt es keine M�glichkeit, dies anders zu regeln? Mit Geld vielleicht?",152)
	NODE(152)
		SAY("Naja, falls das Angebot stimmt... klar. Wir sind ja vern�nftige Leute. Was bietest du denn?")
		
		ANSWER("Ich pers�nlich kann im Moment nichts bieten, aber NEXT...",153)
	NODE(153)
		SAY("Na der reisst ja ganz sch�n sein Maul auf. Erst verspricht er uns das blaue von Himmel und dann vertr�stet er uns. Als ob du uns etwas von NEXT versprechen k�nntest.  Ich glaube, er hat nicht ganz erkannt, dass er hier ganz alleine ist... ")
		
		ANSWER("Ich meine es wirklich ernst, es muss einen Weg aus dieser Situation geben.",154)
	NODE(154)
		SAY("Ja und der Weg f�hrt �ber deine Leiche ...")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(155)
		ATTACK()
		ENDDIALOG()
	NODE(155)
		SAY("Lebst du immer noch?!")
		ATTACK()
		ENDDIALOG()


-----------------------------------------------------
--Gerard

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Geht schon und findet heraus, wo sie sich aufhalten und sprecht ersteinmal mit ihnen.")
			ENDDIALOG()
		else

			SAY("Und? Waren die Black Dragon dort?")
		
			ANSWER("Aber klar, sieht man das nicht? Die verdammten Hunde wollten mich abmurksen!",201)
		end
	NODE(201)
		SAY("Ganz ruhig, ich mache hier auch nicht die Regeln. Aber jetzt k�nnen wir gezielt gegen sie vorgehen. Jetzt kennen wir ja ihren Aufenthaltsort. Normalerweise schicken wir einen unserer eigenen Scouts, aber ich dachte mir ihr seht hart genug aus f�r diesen Job. Ihr k�nntet uns noch einen Gefallen tun...")
		
		ANSWER("Von wegen, ab jetzt mache ich da nicht mehr mit, entweder ihr k�mmert euch darum oder ich bin weg hier.",202)
	NODE(202)
		SAY("Ist ja gut. Na klar k�mmern wir uns jetzt darum, ich geh�re immerhin zu den CityMercs. Ist ja nicht das erste Mal, dass wir gegen die Black Dragon vorgehen. Ich erinnere da nur mal an 2735. Mann, das muss ein Gemetzel gewesen sein. Unser Boss hatte sich da die Black Dragons mal so richtig vorgekn�pft.Ich denke wir werden hier nur ein White Ribbon Platoon brauchen. Machen sie sich mal keine Kopfschmerzen, ab jetzt werden sie so sicher sein, wie in Plaza 1.")
		SETNEXTDIALOGSTATE(203)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

	NODE(203)
		SAY("Ich habe doch schon gesagt, wir k�mmern uns darum. Seid unbesorgt. Ihr k�nnt eurem Freund sagen, dass wir uns darum k�mmern.")
		ENDDIALOG()


-----------------------------------------------------
--Torben

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Gibt es schon Neuigkeiten? Habt ihr Gerard im CityMercs HQ besucht?")
			ENDDIALOG()
		else
			SAY("Hast du mit den CityMercs gesprochen? Was sagen sie?")
		
			ANSWER("Ja, nachdem die Dragons mich umbringen wollten. Jetzt scheinen sie sich darum zu k�mmern. Hoffentlich stimmt das auch.",251)
		end
	NODE(251)
		SAY("Die Mercs k�mmern sich darum? Wirklich?")
		
		ANSWER("Ja, so haben sie es mir gesagt.",252)
	NODE(252)
		SAY("Dann bin ich gerettet! Wenn die Mercs erst einmal etwas anpacken, dann machen sie das auch richtig. Danke, Runner! Ich h�tte nicht gedacht, dass du mir helfen k�nntest. Ich hatte nicht gedacht, dass mir irgendjemand noch helfen k�nnte. Aber da lag ich wohl falsch. Ich werde meine Arbeit sofort wieder aufnehmen!")
		
		ANSWER("WEITER",253)
	NODE(253)
		GIVEMONEY(5000)
		GIVEITEM(1535)
		SAY("Und falls es mir m�glich ist, werde ich mich sp�ter erkenntlich zeigen. Momentan habe ich nur diese 5000 Credits hier. Aber die sollen dich ja auch nur vertr�sten. Ich werde mich auch daf�r einsetzen, dass man euch wichtigere Aufgaben zuweisen wird. Hier ist noch ein Geschenk des Hauses, ein Motorrad.")
		EPICRUNFINISHED(3,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end