--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--0,D,Dillan
--1, kill Cook, Raymon
--2,D,Gomez
--200

--Startnode, Person
--0 Human Resource
--50 crazy Dillan
--100 Raymon
--150 Taylor
--200
--250

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Es gibt einige aufschlussreiche Informationen über das Geschäft zwischen den Black Dragon und ProtoPharm. Wir wissen nun wann und wo es abgehandelt wird. Aber den Deal einfach nur platzen zu lassen wird uns nichts bringen, da er dann an einem anderen Ort stattfinden wird. Wir müssen den Representanten von ProtoPharm töten und es so aussehen lassen, als ob die Black Dragon ihn getötet haben. ")
		
		ANSWER("Ja, aber wie können wir das tun? Ich meine, ProtoPharm ist ja immerhin nicht so blöd, dass sie nicht zwischen Tsunami und Black Dragon unterscheiden könnten.",1)
		ANSWER("Ich glaube nicht, dass ich schon bereit für so etwas bin.",3)
	NODE(1)
		SAY("Wir haben einige Freunde bei der Anarchy Breed. Hauptsächlich, da sie unsere Clubs so sehr mögen. Ich bin mir ziemlich sicher, dass sie einige Waffen die einstmals die Black Dragon benutzten in ihrem Besitz haben. Diese Waffen könnten wir dazu verwenden, ProtoPharm auszutricksen. Triff dich mit Happy Gil.")
		
		ANSWER("Keine Angst, ich habe Erfahrung in so etwas.",2)
	NODE(2)
		SAY("Danach wartet ein gewisser Raymon in Dome of York Sektor 06 auf dich. Er hat Kontakte zu ProtoPharm und er mag Geld, was auch der Grund dafür ist, warum wir ihn so leicht überreden konnten mitzumachen. Es sollte ihm möglich sein, den Mord so aussehen zu lassen, als ob die Black dragon daran Schuld sind. Gib einfach die Waffe, die du von Gil bekommst an Raymon. Beim Treffpunkt in der Outzone solltest du dann diesen Mr Cook von ProtoPharm umlegen.")
		SETNEXTDIALOGSTATE(4)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(3)
		SAY("Es ist deine Entscheidung, aber du bist dir hoffentlich klar darüber, dass Tsunami Faulpelze nicht leiden kann.")
		
		ENDDIALOG()
	NODE(4)
		SAY("Führe den Plan aus. Triff die Anarchy Breed vor dem Hauptausgang vom Dome und statte Raymon in Dome of York Sektor 06 einen Besuch ab. Wenn alles getan ist, berichte Taylor, wie es gelaufen ist.")
		ENDDIALOG()
		


-----------------------------------------------------
--crazy Dillan

	NODE(50)
		SAY("Was is los, Runner? Yo, du siehst aus wie so ein beschissener Tsunami Bote. Nein, wirklich, war nur'n Witz.")
		
		ANSWER("Du hast Glück, dass wir deine Hilfe gebrauchen können, ansonsten würde ich dir deine Nase brechen.",51)
	NODE(51)
		SAY("Wohoo, der kleine Tsunami hat ja Mumm, was?! Ich mag das, ehrlich. Also was willst du von dem alten Crazy?")
		
		ANSWER("Ich brauche eine Waffe, die von den Black Dragon benutzt wurde. Hast du da etwas für mich?",52)
	NODE(52)
		SAY("Ja, ja, wir haben jede Menge Dragon Waffen. Sie sind ja immerhin fast so gute Freunde wie die Tsunamis es sind. Hey, aber vielleicht sind wir ja auch diejenigen, die euch beide mal von hinten über den Haufen schiessen. Hehee.")
		
		ANSWER("Erwähne nicht die Black Dragons mit uns in einem Satz. Das tut weh.",53)
	NODE(53)
		SAY("Nur weil du sie nicht magst? Es ist mir vollkommen egal ob ir euch gegenseitig das Gehirn rausblasen wollt. Die Breed haben ihre Freunde immer selbst gesucht. Was für eine Waffe willste jetzt haben? Bah, vergiss es, ich würde dir sowieso nur diese Submachine Gun geben. Zufrieden?")
		
		ANSWER("Ist das die einzige, die du im Angebot hast? Die sieht aber ziemlich beschädigt aus.",54)
	NODE(54)
		SAY("Vertraue mir. Sie funktioniert immer noch wie neu. Habe sie gestern erst an einem Mutanten getestet. Hehee. Diese wandelnde Leiche war mit Kugeln nur so gespickt... Ich sag dir, ein blutiges etwas ist das einzige was von dem übrig blieb.")
		
		ANSWER("Gut, ich werde sie dann nehmen.",55)
	NODE(55)
		SAY("Willst du ne letzte Info? Die Black Dragon planen irgendetwas. Sie kaufen Waffen wie blöd und handeln Allianzen an allen Ecken und Enden aus. Könnte was mit Tsunami zu tun haben. Falls ihr nicht so geile Clubs hättet wären wir vielleicht auch schon auf der Seite der Dragons. Eine Schande, dass ihr keine Drogen verhökert.")
		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(56)
		SAY("Man sieht sich in einem der netten Clubs in der Stadt, Runner. Hattest du nicht irgendwas von einem anderen Treffen in Dome of York gemurmelt?")
		ENDDIALOG()


-----------------------------------------------------
--Raymon

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich hatte sie noch nicht so früh erwartet. Es ist noch nicht sicher. Kommen sie später wieder...")
			ENDDIALOG()
		else
			SAY("Willkommen! Sie sollten unbedingt das Essen hier probieren. Der mutierte Tintenfisch ist erste Klasse, aber wahrscheinlich nicht jedermanns Sache.")
		
			ANSWER("Mr. Masterson. Ich habe gehört, dass sie ein Mitglied von ProtoPharm sind, ja?",101)
		end
	NODE(101)
		SAY("Mehr oder weniger, aber ich kenne sehr viele Leute dort. Also sind sie nicht hier um das Essen zu geniessen?")
		
		ANSWER("Nein, ich bin hier um ihnen einen Vorschlag vom Tsunami Syndikat zu überbringen. Einen wertvollen Vorschlag, wenn ich das so sagen darf.",102)
	NODE(102)
		SAY("Ich hätte wissen müssen, dass sie Tsunami sind. ProtoPharm ist nicht besonders interessiert an Kontakt zu Tsunami. Besonders jetzt nicht.")
		
		ANSWER("Was meinen sie?",103)
	NODE(103)
		SAY("Ich kann ihnen das jetzt nicht sagen. Es ist... koompliziert. Aber was ist denn dieser Vorschlag?")
		
		ANSWER("Ich habe hier eine Waffe eines Black Dragon Mitglieds und wir wollen...",104)
	NODE(104)
		SAY("Nicht weiterreden. Es soll so aussehen, als ob es von den Black Dragon gemacht wurde, richtig? Vergessen sie es.")
		
		ANSWER("Aber, aber, es könnte sehr viel Geld dabei für sie herausspringen. Es wäre ihre Bemühungen wert.",105)
	NODE(105)
		SAY("Wenn ich gewusst hätte, dass es um so etwas geht, hätte ich niemals zugestimmt einen Tsunami hier zu treffen. Wenn ich zu viel Aufsehen auf mich lenke werde ich noch so enden wie dieser mutierte Tintenfisch den ich gerade gegessen habe. Ausserdem gibt es wirklich nichts, was sie tun könnten um die Beziehung zwischen den Dragons und ProtoPharm zu stören. Im Moment auf jeden Fall.")
		
		ANSWER("Vielleicht würden sie es sich noch einmal überdenken, falls ihnen sehr viel Geld geboten würde?",106)
	NODE(106)
		SAY("Nein, mit den heutigen Geschäft wird das Band zwischen den Black Dragon und ProtoPharm zu stark sein um es mit einem solchen Plan zu zerschneiden. Bei dem Geschäft geht es um irgedeine Art von Chemikalie. Ich weiss den Namen im Moment nicht, aber es ist sehr wertvoll und sobald Mr Cook es den Dragons geliefert hat wird der Bund zwischen den Dragons und ProtoPharm zu stark sein. Selbst wenn sie die fragliche Person töten würden, würde es nichts bringen die Dragons zu beschuldigen. ProtoPharm weiss sehr gut, wie wichtig sie für die Black Dragon sind. Im Moment könnten sie sich solch einen Patzer nicht erlauben. Ich weiss sonst nichts über die Chemikalie, aber sie hat irgendeine besondere Aufgabe. ")
		
		ANSWER("Also hat dieser Mr Cook diese Chemikalie bei sich?",107)
	NODE(107)
		SAY("Ja, aber... warum erzähle ich ihnen das überhaupt? Es sei denn Tsunami zahlt mir etwas für diese Information.")
		
		ANSWER("Sie können von Glück sagen, wenn sie morgen nicht Tot aufwachen. Es sei denn, sie sagen mir, was sie wissen.",108)
	NODE(108)
		SAY("Nun gut, Mr Cook ist schon auf dem Weg und er hat die Chemikalie bei sich. ProtoPharm hat eh schon einen anonymen Anruf erhalten, dass dem Geschäft eine Falle gestellt werden würde. Fragen sie mich nicht wo ich das her habe. Wenn sie Cook immer noch töten wollen, überlegen sie es sich noch einmal. Er wird nicht unvorbereitet in die Outzone 03 kommen. Jetzt gehen sie aber endlich und lassen mich in Ruhe mein Mahl geniessen.")
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
		
	NODE(109)
		SAY("Wagen sie es nicht mir auch noch mein Dessert zu vermiesen. Cook befindet sich immer noch in der Outzone 03 und ja, ich weiss, dass es ein sehr weiter Weg ist.")
		SETNEXTDIALOGSTATE(110)
		ENDDIALOG()
		
	NODE(110)
		SAY("Cook befindet sich in der Outzone Sektor 03. Und jetzt entschuldigen sie mich, ich versuche wirklich mein Dessert zu geniessen! Hau ab!")
		ENDDIALOG()

--Spieler grillt Cook und nimmt die die Chemikalie Trigger 1
		

-----------------------------------------------------
--Taylor Gomez

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ich habe noch keine Nachricht von deinem Erfolg bekommen. Ich nehme einfach mal an, dass du noch daran arbeitest.")
			ENDDIALOG()
		else
			SAY("Ich wurde über den Deal informiert. Hat dein kleiner Plan soweit funktioniert? Konntest du die Abwicklung des Geschäfts zwischen den Black Dragon und ProtoPharm stören?")
		
			ANSWER("Ja, obwohl die Black Dragon für den Mord nicht verantwortlich gemacht werden können. Ausserdem würde ich gerne hinzufügen, dass ProtoPharm darüber informiert war, dass wir dem Deal eine Falle stellen wollten.",151)
		end
	NODE(151)
		SAY("Sie wurden gewarnt? Aber das kann doch nicht sein! Oder es gibt ein Sicherheitsleck innerhalb von Tsunami. Beunruhigend, aber es nicht so überraschend. Es gibt anscheinend immer Leute in jeder Position, die Informationen preisgeben werden. Glaub mir, ich weiss, wovon ich spreche.")
		
		ANSWER("Ist von einem Spion in unseren Reihen die Rede?",152)
	NODE(152)
		SAY("Oder es könnte sogar einer dieser PSI Mönche gewesen sein. Manche Leute behaupten sie können Gedanken lesen und in die Zukunft sehen. Reginald Axom glaubt, dass die Crahn zu einem gewissen Teil auch an dem Geschäft beteiligt waren, das sie verhindert haben. Er war einst ein PSI Mönch aber zum Glück arbeitet er nun für uns. Aber wenn du schon wusstest, dass es nicht so aussehen würde, als ob die Dragons diesen Mord begangen haben, warum hast du es dann trotzdem gemacht?")
		
		ANSWER("Dieser Mr Cook von ProtoPharm hatte eine unbekannte Chemikalie bei sich. Sie scheint recht wichtig für die Black Dragon zu sein und deswegen bschloss ich es zu Tsunami Eigentum zu machen. Was sollte ich damit tun?",153)
	NODE(153)
		GIVEMONEY(15000)
		SAY("Sehe ich aus wie ein Wissenschaftler? Du kannst es ja Jester zeigen, wenn du ihn das nächste Mal siehst. Er weiss vielleicht etwas darüber. Aber das sollte bis zum nächsten Mal warten. Du solltest dich weiter fort bilden und dir ein paar schöne Tage mit den 15000 credits Belohnung machen. Pass gut auf diese Chemikalie auf.")
        EPICRUNFINISHED(8,2)		
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
-----------------------------------------------------
--Cook

	NODE(200)
		SAY("Tut mir leid, aber ich warte auf jemanden.")
		ENDDIALOG()		


end