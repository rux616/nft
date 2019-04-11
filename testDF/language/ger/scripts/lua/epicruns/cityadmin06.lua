--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Simmons
--1,D,Jenna

--Startnode, Person
--0,Human Resource
--50,Simmons
--100,Jenna


--Items
-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Die Ermittlungen scheinen wohl länger zu dauern als geplant, was? Zumindest gab es im Moment keine neuen Mordfälle, aber bleiben sie am Ball.")
	
	ANSWER("Keine Sorge, ich werde mich jetzt sofort um den Aufenthaltsort dieses gestohlenen CopBots kümmern.",1)
NODE(1)
	SAY("Heisst das, sie haben eine Spur?")
	
	ANSWER("Ich denke schon, aber ich muss noch eine... ahem... Kontaktperson treffen, die mir den Aufenthaltsort preisgeben wird.",2)
NODE(2)
	SAY("Viel Erfolg")
	STARTMISSION()
	SETNEXTDIALOGSTATE(3)	
	ENDDIALOG()
NODE(3)
	SAY("Ich dachte sie hätten eine Spur, der sie nachgehen wollten. Besuchen sie Jenna im NCPD HQ wenn sie mehr wissen.")
	ENDDIALOG()

-----------------------------------------------------
--Simmons

NODE(50)
	SAY("H..hallo, ich habe extra für sie den Aufenthaltsort des Bots ermittelt.")
	
	ANSWER("Ja, und? Wo ist er jetzt?",51)
NODE(51)
	SAY("Er befindet sich in Sektor F 03. Das ist ein Sumpfgebiet. Er hat es sich wahrscheinlich ausgesucht, um unentdeckt zu bleiben. Das wurde ihm so einprogrammiert.")
	
	ANSWER("Gut, ich werde mich um ihn kümmern.",52)
NODE(52)
	SAY("Viel Glück ... Ich werde hier warten... um dann den Law Enforcer zu ... verbessern.")
	SETNEXTDIALOGSTATE(53)
	ENDDIALOG()
	
--Spieler tötet CopBot, Kann man einen Roboter töten?

NODE(53)
	TAKEITEM(9050)
	if(result==0)then
		SAY("Aber, sie haben den Law Enforcer ja gar nicht dabei.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(54)
		SAY("Das ging ja richtig schnell! Haben sie den Law Enforcer?")
	
		ANSWER("Ja, aber ich behalte ihn lieber, als Beweis für diese Mordfälle.",54)
	end
NODE(54)
	SAY("Bitte geben sie ihn mir. Es ist sehr wichtig für mich.")
	
	ANSWER("Ich verstehe nicht, warum dieses Implantat so wichtig für sie ist.",55)
NODE(55)
	SAY("Nun gut, behalten sie das blöde Ding. Aber ich flehe sie an, verraten sie mich nicht an die NCPD. Die würden mich dafür umbringen.")
	
	ANSWER("Ich muss ihnen auf jeden Fall mitteilen, wer die Morde begangen hat.",56)
NODE(56)
	SAY("Aber das bin ja nicht ich, also müssen sie mich auch nicht verraten. Bitte tun sie mir diesen Gefallen.")
	
	ANSWER("Ich werde darüber nachdenken, auf Wiedersehen.",57)

--advanced law enforcer

NODE(57)
	GIVEITEM(9050)
	SAY("Viel Glück noch...")
	SETNEXTDIALOGSTATE(58)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
NODE(58)
	SAY("Was wollen sie noch von mir? Ich bin, ich meine ... ich ihnen doch schon den Law Enforcer gegeben...")
	ENDDIALOG()


-----------------------------------------------------
--Jenna

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Es tut mir leid, aber im Moment habe ich keine Zeit. Die Arbeit geht mir nicht aus.")
		ENDDIALOG()
	else
		SAY("Haben sie schon etwas neues herausgefunden?")
	
		ANSWER("Sagen wir mal so, ich habe den Fall gelöst. Die Morde werden aufhören.",101)
	end
NODE(101)
	SAY("Sie haben die Mordserie gelöst? Nein, jetzt lügen sie aber! Das kann ich nicht glauben.")
	
	ANSWER("Doch, wenn ich es ihnen sage. Der Copbot der gestohlen wurde, wurde umprogrammiert um all diese Leute zu töten.",102)
NODE(102)
	SAY("Wirklich? Das würde zumindest erklären, warum nie ein Tatverdächtiger gefunden wurde.")
	
	ANSWER("Ja, ausserdem war das alles unter dem Kommando der Twilight Guardian geschehen, wie schon vermutet wurde. Ich habe hier sogar den Beweis in Form eines modifizierten Law Chips.",103)
NODE(103)
	TAKEITEM(9050)
	if(result==0)then
		SAY("Ohne den Beweis ist diese Geschichte sehr Fadenscheinig, tut mir leid.")
		ENDDIALOG()
	else
		SAY("Aber, was wollten sie durch diese einzelnen Morde erreichen, und wo befindet sich der CopBot?")
	
		ANSWER("Die Twilight Guardians wollten die CityAdmin Regierung langsam mit diesen vielen Todesfällen zermürben, was ihnen ja auch fast gelungen ist. Der CopBot befindet sich immer noch im Sumpf in Sektor F 03. Sie können ihn dort abholen.",104)
	end
NODE(104)
	SAY("Erstaunlich... warten sie ... ich habe ein Satellitenbild von Sektor F 03 hier. Sie haben recht, dort ist der CopBot. Haben sie ihn ausser Gefecht gesetzt? Er sieht so zerstört aus.")
	
	ANSWER("Ja, ich wollte mich versichern, dass es auch der richtige ist. Nicht, dass ich etwas falsches Berichte.",105)
NODE(105)

	SAY("Dann haben sie sich die Belohnung ja redlich verdient. NCPD und CityAdmin überweist ihnen sehr gerne 50 000 Credits für diese grossen Dienst.")
	
	ANSWER("Vielen Dank, es war mir ein Vergnügen.",106)
NODE(106)
	SAY("Sie können sich ja erst einmal eine lange Pause gönnen, vielleicht sollten sie mit ihren Fähigkeiten auch einen Clan gründen um die CityAdmin zu unterstützen.")
	
	ANSWER("Ich werde darüber nachdenken... Ach ja, der Hacker, der hinter all dem steckt, sitzt im Pepper Park bei Roccos Seafood, sein Name ist Simmons. Macht mit ihm, was ihr wollt. Immerhin hat er dieses Verbrechen mitbegangen.",107)
	ANSWER("Dann auf Wiedersehen und vielen Dank, es war mir ein Vergnügen.",108)
NODE(107)
	GIVEMONEY(50000)
	GIVEMONEY(30000)
	GIVEITEM(9055,255)
	SETNEXTDIALOGSTATE(109)
	SAY("Viel Glück noch in ihrem weiteren Werdegang. Für die Ergreifung des Hackers waren auch noch mal 30 000 Credits angesetzt. Da sie so viel für Neocron getan haben verleihen wir ihnen diese PowerArmor. Sie ist eine Entwicklung aus der CopBot Technologie und wird nur den loyalsten Bürgern überreicht. Aber denken sie dran sich so zu verhalten, dass es der Stadt nutzt.")
	EPICRUNFINISHED(1,5)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
NODE(108)
	GIVEMONEY(50000)
	GIVEITEM(9055,255)
	SETNEXTDIALOGSTATE(109)
	SAY("Viel Glück noch auf ihrem weiteren Werdegang. Da sie so viel für Neocron getan haben verleihen wir ihnen diese PowerArmor. Sie ist eine Entwicklung aus der CopBot Technologie und wird nur den loyalsten Bürgern überreicht. Aber denken sie dran sich so zu verhalten, dass es der Stadt nutzt.")
	EPICRUNFINISHED(1,5)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()

NODE(109)
	SAY("Go away")
	ENDDIALOG()

end