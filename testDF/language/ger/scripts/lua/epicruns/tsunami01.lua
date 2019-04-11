--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--50
--0,D,Foster
--1,D,Taylor
--200

--Startnode, Person
--0 Recruiter
--50 Maxime	
--100 Jester
--150 Taylor Gomez
--200
--250

-----------------------------------------------------
--Recruiter

	NODE(0)
		SAY("Du bist neu hier, richtig? Komm näher her, wir müssen reden.")
		
		ANSWER("Ich bin ganz Ohr.",1)
	NODE(1)
		SAY("Wir wissen jedes neue loyale Mitglied sehr zu schätzen. Tsunami ist eine grossartige Organisation wie du herausfinden wirst. Wir bieten unseren Mitgliedern viel aber man sollte sich immer im Gedächtnis behalten, dass es hier sehr starkes Konkurrenzdenken gibt. Fühlst du dich etwas Konkurrenz gewachsen?")
		
		ANSWER("Natürlich! Ich will mein bestes geben.",2)
	NODE(2)
		SAY("Dann verstehst du sicherlich, dass ich nicht jedem so einfach trauen kann. Ansonsten wäre ich schon lange Tod. Das heisst aber auch, dass ich dir nicht trauen kann. Noch nicht, auf jeden Fall. Wir werden deine Loyalität erst auf irgendeine Weise prüfen müssen.")
		
		ANSWER("Ich habe nicht den geringsten Zweifel daran, dass ich diese Prüfung bestehen werde.",3)
	NODE(3)
		SAY("Es sollte einfach genug sein. Wir wollen dich ja immerhin nicht gleich im ersten Auftrag aufreiben, oder? Aber wenn du trotzdem nicht mal diese erste Prüfung schaffst bist du draussen. Es ist wirklich ganz einfach. Also sieh zu, dass du immer gut in Form bist.")
		
		ANSWER("Ich bin kein Versager. Ihr werdet das schon früh genug herausfinden.",4)
	NODE(4)
		SAY("Du solltest schon wissen, dass Veronique Duchamps der Kopf von Tsunami ist. Sie zieht all die Fäden im Hintergrund und sie kann so boshaft sein wie keine zweite. Falls irgendetwas los ist, kannst du drauf wetten, dass sie auch darin verwickelt ist. Und da sie sich um so viele Geschäfte und Beziehungen kümmern muss, braucht sie ab und zu einen Boten.")
		
		ANSWER("Verstehe, was ist dann also mein Auftrag?",5)
	NODE(5)
		GIVEITEM(9250)	
		SETNEXTDIALOGSTATE(6)
		SAY("Es ist ein einfacher Lieferauftrag, also versau ihn nicht. Bringe dieses Paket zu Maxime. Sie wird dafür sorgen, dass es an Eric Danmund höchstpersönlich geliefert wird. Maxime hat lange Jahre Erfahrung darin für Neocron und Dome of York zu arbeiten. Du kannst sie in Sektor 10 finden.")	
		ANSWER("Also wirklich, dass ist doch fast zu einfach. Betrachtet es als schon erledigt.",6)
	NODE(6)
		SAY("Du wirst etwas zurückbekommen, das du Jester in Sektor 07 bringen sollst. Er arbeitet auch für uns. Zumindest manchmal. Er ist ein Freelancer. Jetzt sieh zu, dass du deine Aufgabe erledigst.")
		SETNEXTDIALOGSTATE(7)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(7)
		SAY("Was ist denn daran so schwierig? Gehe in den 10ten Sektor, liefere das Paket ab und liefere das Paket, das du bekommst Jester in Sektor 07. Danach meldest du dich bei Gomez in der Secret Passage 2 zu unserem versteckten Neocron Hauptquartier.")
		ENDDIALOG()
		


-----------------------------------------------------
--Maxime

	NODE(50)
		SAY("Ich bin mir sicher sie können auch jemand anderen belästigen. Ich bin sehr beschäftigt.")
		
		ANSWER("Ich habe eine Lieferung, die du an Mr. Danmund liefern sollst. Ich nehme an, du weisst schon bescheid?",51)
		
	NODE(51)
		TAKEITEM(9250)
		if(result==0)then
			SAY("Ich hätte Zeit, wenn sie wirklich ein Paket hätten.")
			ENDDIALOG()
		else
			SAY("Sie haben eine Lieferung für Mr. Danmund? Hrmph, nun gut, als ob dies das erst mal wäre. Geben sie mir das Paket und ich werde mich darum kümmern.")
		
			ANSWER("Hier ist es. Mir wurde gesagt ich würde noch etwas anderes wieder zurückbekommen.",52)
		end
	NODE(52)
		SAY("Wirklich? Ja, das hätte ich fast vergessen. Lass mich nur kurz etwas nachsehen.")
		
		ANSWER("Aber bitte. Ich warte solange.",53)
	NODE(53)
		SAY("Interessant. Cecil Stone hat offensichtlich veranlasst, dass dir dieser Mikrochip ausgehändigt werden soll. Ein experimentaler X-OR chip. Das ist nun wirklich seltsam.")
		
		ANSWER("Was meinst du?",54)
	NODE(54)
		GIVEITEM(9251)
		SAY("Nun, Diamond Real Estate handelt normalerweise nur mit Immobilien. Da ist es recht seltsam, dass du einen Mikrochip bekommen sollst. Besonders, da er von Stone persönlich gesandt wurde.")
		
		ANSWER("Was ist so besonders an diesem Chip? Das sieht ziemlich wichtig aus.",55)
		
	NODE(55)
		SAY("Ich handele nicht mit Chips, das ist nicht mein Gebiet. Vielleicht fragst du da besser einen anderen.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()
		
	NODE(56)
		SAY("Ich bin sehr beschäftigt und wenn sie nicht schon wieder eine Lieferung abzugeben haben, stören sie mich nicht.")
		ENDDIALOG()
		

-----------------------------------------------------
--Jester

	NODE(100)
		TAKEITEM(9251)
		if(result==0)then
			SAY("Gehen sie weiter, ich warte hier auf eine wichtige Lieferung.")
			ENDDIALOG()
		else
			GIVEITEM(9251)
			SAY("Einen produktiven Tag wünsche ich. Gott, wie ich diese Phrase hasse. Sind sie derjenige, der mir etwas von den Tsunamis bringen sollte? Sie scheinen auch noch recht neu in dieser Gegend zu sein. Haben sie den Chip?")
		
			ANSWER("Vorsichtig, ich mag es nicht, wenn man mich mit einem Neuling vergleicht. Ich habe den Chip hier. Er kommt direkt von Cecil Stone.",101)
		end
	NODE(101)
		SAY("Exzellent, immerhin habe ich schon lange genug auf diesen Chip gewartet. Das wurde aber auch Zeit. Worauf warten sie noch, gehen sie. Oder haben sie eine Frage?")
		
		ANSWER("Was genau übernehmen sie für Aufgaben für die Tsunami?",102)
	NODE(102)
		SAY("Ich arbeite nicht ausschliesslich für Tsunami, um ehrlich zu sein. Ich habe viele Auftraggeber und alle verlassen sich darauf, dass ich diskret vorgehe. Das heisst ich werde ihnen nichts über meinen Job sagen. Aber ich denke ich kann ihnen etwas über diesen Chip erzählen. Es ist ein neuraler Lichtchip. Er kann nicht nur immense Datenmengen speichern, sondern sogar die Gedanken einer Person steuern. Theoretisch natürlich.")
		
		ANSWER("Interessant, aber wofür braucht Tsunami so etwas?",103)
		
	NODE(103)
		SAY("Es gehört in ein Gerät, dass ich für die Tsunami entwickle. Ich kann und will ihnen nicht mehr darüber sagen. Gehen sie jetzt. Berichten sie Taylor, dass ich den Chip bekommen habe.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(104)
		SAY("Nein, ich habe ihnen doch schon gesagt, dass ich nicht über meine Arbeit rede! Sonst würde ich noch tod in irgendeiner dunklen Strassenecke wieder auftauchen. Nun berichten sie schon endlich gomez im HQ.")
		ENDDIALOG()

-----------------------------------------------------
--Taylor Gomez
		
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Du hast deinen Auftrag noch nicht erfüllt. Hast du das Paket schon an Maxime weitergegeben? Wenn alles erledigt ist, komm zurück zu mir.")
			ENDDIALOG()
		else
			SAY("Was hat da so lange gedauert? Das war ein einfacher Lieferauftrag. Wenn du nicht lernst, deine Gedanken auf die Aufgabe zu konzentrieren, dann gehörst du nicht hierher.")
		
			ANSWER("Kommen sie schon, es dauert eine ganz schöne Weile durch die ganze Stadt zu hetzen.",151)
		end
	NODE(151)
		SAY("Diese Ausrede ist nicht akzeptabel. Tsunami Mitglieder sollten immer 110 Prozent geben können. Wenn du für uns arbeiten willst, dann solltest du schon ein bischen zuverlässiger sein.")
		
		ANSWER("Ich werde das nächste Mal versuchen schneller zu sein, auch wenn ich nicht weiss, wie ich es hätte schneller schaffen können. Ach ja, mich würde interessieren, was in dem Paket für Diamond war.",152)
		
	NODE(152)
		SAY("Es war ein einfaches Geschenk an den CEO von Diamond Real Estate. Ein Geschenk, dass als Tarnung für die eigentliche Aufgabe gedacht war. So konnte man ihnen den Mikrochip aushändigen, ohne zu viel Aufmerksamkeit zu erregen. Cecil Stone, der System Administrator von Diamond, hat einige beträchtliche Schulden bei uns und deswegen hat er uns auch diesen Mikrochip besorgt. Nur weil wir nicht mehr viel in Neocron zu sagen haben, bedeutet dies nicht, dass wir so einfach auf unsere Beziehungen verzichten werden.")
		
		ANSWER("Und was macht Jester denn dann mit dem Chip?",153)
	NODE(153)
		SAY("Er ist ein Freelancer, der manchmal Geschäfte mit uns macht. Er wird uns etwas besonderes aus diesem Chip herstellen. Etwas ganz besonderes. Dein erster Job ist getan. Du hat deine Loyalität zu uns bewiesen. Mache nicht den Fehler eine Bezahlung zu verlangen. Nicht du hast uns einen Gefallen getan, sondern wir haben dir einen Gefallen getan. Wir werden deine Schritte auch weiterhin verfolgen und wenn deine Loyalität zu uns ganz ausser Frage steht, dann werden wir noch ein paar Aufträge für dich haben. Auf Wiedersehen und bis zum nächsten Mal.(nächste Mission Level 20)")
        EPICRUNFINISHED(8,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		


end