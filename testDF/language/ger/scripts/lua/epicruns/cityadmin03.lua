--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Elias
--1,D, Cole
--2,D,Jenna

--Startnode, Person
--0,Human Resource
--50,Elias
--100,Ethan Cole
--150,Jenna


--Items
-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Die NCPD hat im Moment immer noch alle Hände voll zu tun, diese myteriösen Morde genauer unter die Lupe zu nehmen. Aber unterdessen können wir die Sicherheit von Neocron natürlich auch nicht ganz vergessen. ")
	
	ANSWER("WEITER",1)
NODE(1)
	SAY("Deshalb haben wir beschlossen einen jungen dynamischen Runner mit einem Auftrag zu betrauen. Ich denke, dass sie die CopBots schon ausführlich auf den Strassen von Neocron beobachten konnten, nicht wahr?")
	
	ANSWER("Ja, in der Tat. Sie sind recht beeindruckend.",2)
NODE(2)
	SAY("Ja, und doch gibt es etwas, was viele Leute nicht wissen. Es gibt eine Dunkelziffer von CopBots, die einfach von den Strassen verschwinden. In den Wastelands gibt es sogar Berichte von CopBots, die Amok laufen.")
	
	ANSWER("Nicht vorstellbar, falls ein CopBot innerhalb von Neocron anfangen würde Amok zu laufen.",3)
NODE(3)
	SAY("Keine Angst. Das CopBot System ist darauf ausgelegt so etwas abzufangen. Aber es gibt da auch noch andere Fälle. Fälle von CopBots, die noch vor der Aktivierung geklaut werden. So etwas kommt höchst selten vor und wird normalerweise in null komma nichts aufgeklärt. ")
	
	ANSWER("WEITER",4)
NODE(4)
	SAY("Doch... in diesem Fall wurde das Fehlen des CopBots erst entdeckt, als er aktiviert werden sollte. Das ist jetzt nun schon zwei Monate her und es gibt nicht den Hauch einer Spur.")
	
	ANSWER("Wie werden denn solche Sachen normalerweise zrurückverfolgt?",5)
NODE(5)
	SAY("Es gibt einen Mikrosender, der gut in den CopBots versteckt ist. Dieser sendet ein Signal an die Zentrale sobald der CopBot aktiviert wird. Aber dieses Mal ist er entweder nicht aktiviert worden, oder der Sender wurde entfernt. ")
	
	ANSWER("WEITER",6)
NODE(6)
	SAY("Falls letzteres der Fall ist, so muss an dieser Sache ein ziemliches Hacker Genie arbeiten. Selbst unsere Hacker können so etwas nur mit Hilfe von speziellem Equipment knacken.")
	
	ANSWER("Tja, aber wo findet man einen solchen Hacker? ...vielleicht ...  Die Fallen Angels!!",7)
NODE(7)
	SAY("Ja genau, ihre Scharfsinnigkeit ist genau das, was wir hier brauchen. Ihr Auftrag ist es, einen gewissen Elias in Tech Haven aufzusuchen und ihn über eine mögliche Verbindung zwischen den Fallen Angels und dem geklauten CopBot zu befragen. ")
	
	ANSWER("Erzählen sie ruhig weiter.",8)
	ANSWER("Ich bin noch nicht bereit für einen weiteren Auftrag.",9)
NODE(8)
	SAY("Ihren Bericht sollten sie dann, wie üblich, Officer Jenna vorlegen. CityAdmin dankt ihnen schon jetzt, viel Glück. Die Fallen Angels stehen neutral zu uns und sollten sich deshalb wohl kooperativ zeigen.")
	STARTMISSION()	
	SETNEXTDIALOGSTATE(10)
	ENDDIALOG()	


NODE(9)
	SAY("Dann kehren sie zurück, wenn sie sich ausreichend vorbereitet haben.")
	ENDDIALOG()
	
NODE(10)
	SAY("Ich dachte sie wollten sich um diese Sache mit dem verschwundenen CopBot kümmern? Treffen sie Elias bei den Fallen Angels, Ergebnisse geben sie an Jenn im NCPD HQ.")
	ENDDIALOG()


-----------------------------------------------------
--Elias

NODE(50)
	SAY("Ich habe keine Zeit für so etwas. Ich bin hier sehr beschäftigt.")
	
	ANSWER("Es wird nicht lange dauern, ich bin von der CityAdmin geschickt worden.",51)
NODE(51)
	SAY("Ach, sie sollen der Ermittler sein? Kann ja nicht so wichtig sein, wenn sie mir nur einen einfachen Runner schicken.")
	
	ANSWER("Jetzt werden sie mal nicht ausfallend. Es geht um den entwendeten CopBot. Sie wurden sicherlich schon informiert...",52)
NODE(52)
	SAY("Ja, das wurde ich. Ich wurde auch darauf hingewiesen, wie wichtig diese Sache für die CityAdmin ist. Auch wenn ich es nicht ganz verstehe. Ein CopBot mehr oder weniger macht doch auch nichts.")
	
	ANSWER("Das ist vielleicht ihre Meinung. Haben die Fallen Angels einen CopBot der CityAdmin?",53)
NODE(53)
	SAY("Sehr witzig. Da muss ich sie leider enttäuschen, die Fallen Angel Wachroboter sind viel effektiver und ausserdem noch billiger in der Produktion. CopBots sind nichts im direkten Vergleich. Wozu bräuchten die Fallen Angels bitte schön einen CopBot? Nein, wirklich.")
	
	ANSWER("WEITER",54)
NODE(54)
	SAY("Ich habe auch, wie die CityAdmin mich darum gebeten hat, unsere Personal und Arbeitsakten durchgesehen. Ich kann ihnen versichern, dass kein Fallen Angel Mitglied in so etwas verwickelt ist.")
	
	ANSWER("Na, dann ist das hier schon wieder eine Sackgasse?",55)
NODE(55)
	SAY("Warten sie. Ich habe gesagt, es gäbe kein Mitglied, dass so etwas tun würde. Es gibt aber einige paar Ex Mitglieder, denen ich so etwas durchaus zutrauen würde.")
	
	ANSWER("Das klingt schon viel besser! Sagen sie mir bitte, wo ich sie finden kann...",56)
NODE(56)
	SAY("Das wird nicht so einfach sein. Die Fallen Angels speichern leider die Aufenthaltsorte von Ex Mitgliedern nicht. Das bedeutet, sie müssen sich vielleicht an Leute im Untergrund wenden.")
	
	ANSWER("Einfacher gesagt als getan, der Untergrund ist so gewaltig. Ich würde Jahre brauchen, da den richtigen zu finden.",57)
NODE(57)
	SAY("Das stimmt allerdings. Besonders bei eurer Naivität. Aber vielleicht können sie ja noch einen gewissen Cole finden. Man munkelt, er befinde sich in der Outzone bei dem Schwarzmarkt Umschlagplatz.Ich weiss nicht ob das stimmt, und falls sie ihn finden sollten, trauen sie ihm nur so weit sie sehen können. ")
	
	ANSWER("WEITER",58)
NODE(58)
	SAY("Dieser Verräter hatte auch einmal für die Angels gearbeitet, hat damals eine Menge an wichtigen Unterlagen mitgehen lassen. Diese versuchen teilweise immer noch, den Schaden der er anrichtete wieder gut zu machen..")
	
	ANSWER("Danke, ich werde mich dort mal umsehen.",59)
NODE(59)
	SAY("Seid vorsichtig. Wie gesagt, die Fallen Angels haben nichts damit zu tun.")
	SETNEXTDIALOGSTATE(60)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
	
NODE(60)
	SAY("Fragen sie jemand anderen. Fallen Angels haben nichts damit zu tun. Vielleicht weiss Ethan Cole in Outzone 01 ja etwas.")
	ENDDIALOG()

-----------------------------------------------------
--Ethan Cole

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Haub blos ab, Runner!")
		ENDDIALOG()		
	else
		SAY("Hallo, wen haben wir denn hier? Ein neugieriger Runner?")
	
		ANSWER("Ethan Cole? Das sind sie doch, oder?",101)
	end
NODE(101)
	SAY("Das kommt darauf an, für wen? Ich habe nämlich eine gewisse Allergie auf feindlich gesinnte Leute.")
	
	ANSWER("Das kann ich gut verstehen in der heutigen Zeit.",102)
NODE(102)
	SAY("Also, sprich, was willst du von mir?")
	
	ANSWER("Man hatte mir gegenüber fallen lassen, dass sie sich im Untergrund recht gut zurecht finden würden.",103)
NODE(103)
	SAY("Nun, man braucht zwar etwas Geduld und natürlich ein geniales Hirn wie meins, aber dann ist es recht einfach.")
	
	ANSWER("Ich möchte gerne eine Liste von Hackern, die aus dem Untergrund heraus operieren. Am besten wohl Ex Fallen Angels Mitarbeiter.",104)

NODE(104)
	SAY("Ahhh, ja, irgendwo habe ich den Begriff der Fallen Angels schon einmal gehört...")
	
	ANSWER("Heben sie sich ihre Schauspielkünste auf, Cole! Ich weiss, was sie mit den Fallen Angels verbindet.",105)
NODE(105)
	SAY("Ach ja? wie praktisch, dann kann ich ja meine Scharade fallen lassen. Ich nehme an, ich soll dir die Liste gleich aushändigen?")
	
	ANSWER("Ja, das wäre mir am liebsten...",106)

NODE(106)
	SAY("Ja, das hättest du wohl gerne, was? Nein, ganz so leicht ist es nicht. Bring mir zwanzig Flaschen von diesem Synthetic Wine Plus und dann sehen wir mal. Dieses Zeug ist hier in der Outzone recht schwer zu erstehen. Also, mach dich ran.")
	SETNEXTDIALOGSTATE(107)
	ENDDIALOG()

--Spieler organisiert 24 Synthetic Whine 807
	
NODE(107)
	TAKEITEMCNT(807,20)
	if(result==0)then
		SAY("Ohne Synthetic Wine Plus sage ich überhaupt nichts.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(108)
		SAY("Na bitte. Geht doch. Zeig mal her.")
	
		ANSWER("Hier, aber vergiss unseren Deal nicht...",108)
	end
NODE(108)
	SAY("Ja, ja, keine Angst. Ja, der Wein scheint genau nach meinem Geschmack zu sein... ")
	
	ANSWER("Wir hatten aber trotzdem eine Abmachung und mein Teil ist erfüllt...",109)
NODE(109)
	GIVEITEM(9053)
	SAY("Ich halte diese Abmachung zwar für nicht so wichtig, aber weil ich ein so netter Mensch bin, gebe ich dir diese Liste trotzdem. Nun geh mir aus der Sicht.")
	ACTIVATEDIALOGTRIGGER(1)
	SETNEXTDIALOGSTATE(110)
	ENDDIALOG()
	


NODE(110)
	SAY("Ich hab doch gesagt, ich will nicht so oft mit dir gesehen werden.")
	
	ENDDIALOG()


-----------------------------------------------------
--Jenna

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Nichts neues? Das ist schade.")
		ENDDIALOG()
	else
		SAY("Hier ist ja unser fleissigster freier Mitarbeiter wieder. Und was für Neuigkeiten gibt es?")
	
		ANSWER("Ich habe mit Mühe etwas über verschiedene potentielle Hacker herausgefunden. Hat mich ganz schön durch die Welt getrieben.",151)
	end
NODE(151)
	SAY("Hat es sich wenigstens gelohnt?")
	
	ANSWER("Ich weiss es nicht. Ich habe eine Liste mit vielen Namen, aber diese Liste durchzusehen ist wohl dann doch eure Arbeit. Hier bitte.",152)
NODE(152)
	TAKEITEM(9053)
	if(result==0)then
		SAY("Das ist kein guter Witz. Eine solche Liste wäre sehr hilfreich gewesen. Schade, dass sie keine haben.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(153)
		SAY("Lassen sie mal sehen. Ja, ich erkenne einige bekannte Namen wieder. Manche von denen haben aber auf keinen Fall etwas mit Hacken zu tun. So viel ist sicher. Ich denke es wird einige Zeit brauchen, bis wir diese Namen durchgegangen sind.")
	
		ANSWER("Habt ihr hier etwas neues feststellen können?",153)
	end
NODE(153)
	SAY("Wie man es nimmt. Wir haben die Spuren nicht weiter verfolgen können für die Morde. Aber wir haben ein Statement von den Twilight Guardian in dem sie sich zu diesen Morden bekennen. Dies alleine hilft uns allerdings nicht viel. Aber machen sie sich darüber keine Sorgen. ")
	
	ANSWER("WEITER",154)
NODE(154)
	GIVEMONEY(8000)
	SETNEXTDIALOGSTATE(155)
	SAY("Hier ist erst einmal ihr Lohn, 8000 Credits. Es wird einige Zeit dauern, bis wir etwas neues wissen, also trainieren sie hart. Man kann nie wissen, wann man wieder gebraucht wird. Fragen sie, wenn sie wieder bereit sind einfach einen Human Resource Director.")
	EPICRUNFINISHED(1,2)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(155)
	SAY("Go away")
	ENDDIALOG()

end