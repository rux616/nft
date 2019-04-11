--************************
--name   : SINGLE_DEL_AB_01.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/14
--lang   : de
--desc   : terminal mission
--npc    : 
--************************
--changelog:
--2004/09/14(0.1): translated from en(Arbiter, Ferron)
--************************

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Hey man! Was soll das? Warum st�rst mich?")
				SAY("Ey! Was bringst mich so aus dem Takt?")
				SAY("Bissu etwa von den Bullen?")
				SAY("Ich hoff du hast 'nen triftigen Grund daf�r, mir aufen Wecker zu fallen.")
				SAY("Du hast zehn Sekunden Zeit zu Sprechen bevor ich dir den Hals umdrehe!")
				SAY("Hey dude, brauchst 'nen F�hrer? Ich zeig dir alles was du brauchst. Ich wei�, wo alles versteckt ist... alles, man!")
		
				ANSWER("Schau, ich hab eine einfache Liefermission aus dem Netz angenommen. Bist du die Person, die ich treffen soll?",1)
				ANSWER("Ich soll hier ein Paket abholen. Bist du der Kontakt?",1)
				ANSWER("Ich hab hier zu arbeiten, also mach hier jetzt kein Stress. Bist du der Verbindungsmann f�r diese Liefermission?",1)
				ANSWER("Entschuldige, wollt dich nicht st�ren, suche wen anderen.",4)
				ANSWER("Mein Fehler, ich dachte du w�rest wer anders.",4)
				ANSWER("Ups, falsche Person. Tut mir leid wegen der St�rung.",4)
			else
				SAY("Hey Baby! Was st�rst mich?")
				SAY("Ey! Was bringst mich so aus dem Takt?")
				SAY("Bissu etwa von den Bullen?")
				SAY("Ich hoff du hast 'nen triftigen Grund daf�r, mir aufen Wecker zu fallen.")
				SAY("Du hast zehn Sekunden Zeit zu Sprechen bevor ich dir den Hals umdrehe!")
				SAY("Hey Baby, brauchst 'nen F�hrer? Ich zeig dir alles was du brauchst. Ich wei�, wo alles versteckt ist... alles, Baby!")
		
				ANSWER("Schau, ich hab eine einfache Liefermission aus dem Netz angenommen. Bist du die Person, die ich treffen soll?",1)
				ANSWER("Ich soll hier ein Paket abholen. Bist du der Kontakt?",1)
				ANSWER("Ich hab hier zu arbeiten, also mach hier jetzt kein Stress. Bist du der Verbindungsmann f�r diese Liefermission?",1)
				ANSWER("Entschuldige, wollt dich nicht st�ren, suche wen anderen.",4)
				ANSWER("Mein Fehler, ich dachte du w�rest wer anders.",4)
				ANSWER("Ups, falsche Person. Tut mir leid wegen der St�rung.",4)
			end
	NODE(1)
		GIVEQUESTITEM()
		SAY("Gut, gut! Sitzt hier schon ewig rum. Dieser Mistjob macht keen Spa�, auch wenn er f�r de Breed gut ist. Se hamm mir sagt dir %NPC_NAME(2) zu nennen und dir's Paket aufzudr�cken. Un' dann noch, dass der Empf�nger vermutlich in %NPC_WORLD() ist, joa. Bis sp�ter dann.")
		SAY("Punkt f�r dich, aber wart hier schon zu lang. Die hamm mir das Paket hier f�r dich gegeben. Sollst's zu %NPC_NAME(2) in %NPC_WORLD() bringen. Wenn de schnell bist, geb'sch dir vielleicht die Creds, die se mir f�r dich gegeben hamm.")
		SAY("Hier hast die Box. Brings zu %NPC_NAME(2) - sollt in %NPC_WORLD() sein. Und Runner, du beeilst dich gef�lligst hier wieder herzukomm', sonst geh ich shoppen, aber nich' auf meine Kosten!")
		SAY("Die Breed braucht dieses Paket wo anners. W�r Zeitverschwendung f�r uns, deswegen hamm wa dich gerufen. Brings zu %NPC_NAME(2) in %NPC_WORLD(), und vielleicht gibbet 'n paar Creds als Belohnung, wenn de wiederkommst.")
		SAY("Ah, darauf k�nn' wa aufbauen! Okay, du bekommst die Kohle, wenn de dies Paket %NPC_NAME(2) inne Hand dr�ckst. Du solltst in %NPC_WORLD() anfangen zu suchen, vielleicht hast da ja Gl�ck und findst'n, ne? Die Creds bleiben hier bisse zur�ck bist. Und Tsch��!")
		SAY("Gut, die Sch�fchen trudeln langsam ein... Hab'n P�ckchen hier, geht an %NPC_NAME(2). Hab geh�rt, er sei in %NPC_WORLD(). Und nun spurte dich, hab besseres zu tun als hier den ganzen Tag rumzusitzen.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Verschwinde jetzt! Brauch mal etwas Freizeit klar ? Bin im V Club Broadcast drin, suuper angenehm, sag ich dir.")
				SAY("Die Breed hat mir gesagt, dass ich keine Creds rausr�cken soll, bis ich den Best�tigungscode erhalten hab. Kein Code in Sicht, also erledige deinen job!")
				SAY("Pass auf, ich bin hier nicht dein Alleinunterhalter. Verschwinde oder ich ruf meine Kumpels!")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Sai ho! Der Versender kommt wieder. Code ist da also hier die %REWARD_MONEY() credits f�r dein Konto. Bis dann Runner!")
				SAY("Gaaaaaaah! Warum kommst du wenn der V Club so abgeht! Hier, die %REWARD_MONEY() creds und nun lass mich in alleine!")
				SAY("Zur�ck von einem heissen run? Der p�se Krieger hat es durch den Versand geschafft! Vermutlich musst du Elite sein . Ich hoffe %REWARD_MONEY() creds halten dich weiter auf der Schnellversand Spur!")
				SAY("Package either get there or you got fast heavy hacker crew. Here %REWARD_MONEY() credits for work, and be sure check back if you need more job. Breed always too busy!")
				SAY("Look this, you ain`t total only business I run. Go do job or big crew with big guns be here flat nothing... Oh, there code for delivery pop up. Guess you not rad fried after all. Make your account %REWARD_MONEY() creds bigger now. Thanks for delivering package!")
				SAY("Thanks much, code got sent in steps before you. Here`s %REWARD_MONEY() creds for the job. Try not to spend it on anything Reza man owns. Besides, the Black Dragon or Tsunami could probably hook you up with some feel goods.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM()
			if (result==0) then
				SAY("Geh zur�ck und hol das Paket. Meine G�te sind diese neuen Runner dumm!")
				SAY("Ich seh einen dummen Runner, aber keine Sicht auf ein Paket. Geh und hols!")
				SAY("Der Job war das Paket zu mir zu bringen. Nun geh und bring mir meine Lieferung.")
				ENDDIALOG()
			else	
				SAY("Super, scheint so als ob die Breed endlich soweit organisiert ist um dieses Paket versenden zu k�nnen. Danke f�r die Lieferung, du musst wieder zur�ck um bezahlt zu werden. Sorry.")
				SAY("Schnell warst du mit diesem Paket. Das ging ab wie Schmitzs Katze. Danke f�r die Eile, nun lass mich meine Gesch�fte weitermachen. Geh lieber wieder zur�ck um die creds zu bekommen oda ?")
				SAY("Da hab ich aber lang gewartet. Danke das dus gebracht hast. Pass auf das du %NPC_NAME(1) meine Gr�sse ausrichtest wenn du wieder zu ihm gehst um dir die credits zu holen.")
				SAY("Cool! %NPC_NAME(1) hat dich gesendet ? Perfekt, das ist ein extra spezial Paket. Ha! W�rd gern noch was bleiben Runner, aber muss gehen und ein paar Leute sehen nachdem diese Lieferung nun da ist.")
				SAY("Diese Lieferung? Perfektion total! %NPC_NAME(1) hat n paar creds oder zweit f�r dich. Schalt n Gang h�her und geh zu ihm w�hrend ich den code hinschicke.")
				SAY("Ho! Verr�ckte Party wird das mit dem Geschenk das du bringst! Die Credits warten auf dich bei deinem Kontaktmann. Nun lass mich in Ruhe damit ich planen kann. Muss sichergehen das es cool wird.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Besser du verschwindest! Breed ist numero uno gang und pl�ttet jeden der in unserem Weg steht.")
		SAY("Ha! Besser du rennst schneller Runner oder die Anarchy Breed holt dich!")
		SAY("Fixer hat mir gesagt hierherzukommen und hier zu sitzen. Habs buchstabengetreu gemacht aber bisher kam kein richtiger Runner hierher. Das ist soo langweilig hier!")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machst Du noch hier? Los geh zu %NPC_NAME(0) um Deine Belohnung abzuholen.")
		ENDDIALOG()
end

