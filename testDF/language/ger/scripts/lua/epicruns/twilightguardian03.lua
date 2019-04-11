--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,SIMMONS
--1,D,FIGARO 150
--2,D,DONNOVAN 200
--3
--
--Startnode, Person
--0, Contact Person
--50, DONNOVAN 2262
--100, SIMMONS 1628
--150, FIGARO 1624
--200, DONNOVAN 2262
--250,
--
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--2262	1628	1624		3	1	0	0	3	2	1	0	3	0	2	0				
--START	START	START	START
--50	100	150	
--Items
--PROPAGANDA CUBE 50

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Die Anarchy Breed haben mal wieder �rger mit den CityAdmins. Reza scheint ihnen ganz sch�n zuzusetzen. Sie haben nur Gl�ck, dass Reza seine Schosshund CopBots nicht alle auf sie hetzt. Ansonsten s��en unsere Verb�ndeten ganz sch�n in der Klemme. ")

		ANSWER("Die Anarchy Breed? Wieso sind wir eigentlich mit denen alliiert?",1)
	NODE(1)
		SAY("Ganz einfach, im Grunde genommen wollen sie Reza auch st�rzen. Vielleicht haben sie andere Pl�ne f�r danach, aber das ist dann etwas anderes. Es ist genauso mit dem B�ndnis zu den Crahn. Es ist einfach gesagt zweckm��ig. ")

		ANSWER("Nun gut, eigentlich wollte ich ja wissen, ob Donnovan wieder eine Verwendung f�r mich hat. Ich versumpfe hier sonst ja doch nur.",2)
	NODE(2)
		SAY("Am besten du fragst Donnovan mal selbst. Du wei�t ja, wo du ihn normalerweise finden kannst, oder?")
		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(3)
		SAY("Donnovan sollte sich hier irgendwo aufhalten. Du wirst ihn schon finden, da bin ich mir sicher. Unser Hauptquartier ist nicht so gross wie manche es gerne h�tten.")
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--50
	NODE(50)
		SAY("Mann, Mann, das kann so nicht weitergehen. Ich habe mir ein paar der Berichte durchgelesen und die Lage ist bedr�ckend. Es verschwinden immer wieder Twilight Guardian, die versuchen wollen, die Bev�lkerung von Neocron auf unsere Seite zu ziehen. �rgerlich, aber wenn wir gegen dieses Schwein Reza gewinnen wollen, m�ssen wir auch die Neocron Bev�lkerung von seinen Missetaten �berzeugen.")

		ANSWER("Ich dachte, wir brauchen nur unsere gesammelte St�rke um Reza zu zeigen, wo es lang geht.",51)
	NODE(51)
		SAY("Tja, sch�n w�rs. Aber wir brauchen nun einmal die Bev�lkerung als Verst�rkung um gegen Reza vorzugehen. Deswegen auch die vielen Propaganda Bl�tter, die wir produzieren. Du wei�t ja noch, was da drauf steht, oder?")

		ANSWER("Klar, alles �ber Rezas Verbrechen. ",52)
	NODE(52)
		SAY("Richtig, ich finde ja, dass ein Mann f�r seine Verbrechen auch gerade stehen muss. Reza ist nicht nur ein Diktator und Verbrecher, sondern auch ein Feigling. Denk mal dr�ber nach, wer von Neocron profitiert und dir wird im Endeffekt nur ein Name einfallen. Reza.")

		ANSWER("Ich wundere mich, dass sich die Bev�lkerung das gefallen l�sst.",53)
	NODE(53)
		SAY("Haben sie denn eine andere Wahl? Ihre einzige Chance w�re, wenn alle gleichzeitig den Aufstand proben w�rden. Und das geht nur, wenn alle wissen, wie es wirklich aussieht. Deshalb geben wir Neocron die Wahrheit. Dieses Mal bist du damit an der Reihe.")

		ANSWER("Ich? Und was ist genau meine Aufgabe dabei?",54)
	NODE(54)
		SAY("Du musst nach Neocron und dort drei Bl�tter verteilen, zwei auf Anfrage und eines wie du w�nschst. Also, was du machst ist, du suchst dir einen der geheimen Eing�nge nach Neocron und begibst dich dort in den Pepper Park. Pass auf die CopBots auf, denn so einen Zettel auch nur zu besitzen ist so gut wie die Todesstrafe.")

		ANSWER("Wo sind denn diese Eing�nge?",55)
	NODE(55)
		SAY("Einer ist im Sektor des Haupteingangs. Dann gibt es aber auch noch andere. Einer der Eing�nge nach Neocron f�hrt in die Outzone und ist auch nicht bewacht. Ein anderer f�hrt zur Kirche Crahns und ich kann mir nicht vorstellen, dass sie was dagegen haben, wenn wir ihn ab und zu mal benutzen. Pass auf jeden Fall auf, auch die Outzone ist kein freundlicher Ort.")

		ANSWER("Gut, ich werde es versuchen.",56)
	NODE(56)
		GIVEITEM(9482)
		GIVEITEM(9482)
		GIVEITEM(9482)
--PROPAGANDACUBES
		SAY("Hier sind die drei Datacubes mit den Infos.  Einer geht an Simmons und einer an Figaro, beide kannst du im Pepper Park finden. Den dritten Datacube gibst du einem Runner und versuchst ihn von unserer Seite zu �berzeugen. Such dir einfach jemanden aus, der dir auf der Strasse begegnet. Und komm mir ja lebendig wieder.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	

--------------------------------------------------------------------
-- SIMMONS
--100
	NODE(100)
		TAKEITEM(9482)
		if(result==0)then
			SAY("Verschwinden sie hier, man soll mich nicht mit einem Twilight Guardian zusammen sehen.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(101)
			SAY("Ja? Was ist? Wieso redest du nicht?")

			ANSWER("Ich habe hier einen Datacube vollgestopft mit der Wahrheit �ber Rezas Diktatur. Interessiert?",101)
		end
	NODE(101)
		SAY("Klar bin ich das. Ich h�tte ja schon l�ngst mehr f�r die Twilight Guardian getan, aber ich h�nge doch sehr an meinem Leben. Aber ich kann euch jemanden liefern, der mehr f�r euch tun kann. ")

		ANSWER("So? Dann lass mal h�ren. ",102)
	NODE(102)
		SAY("Ich kenne da diesen ehemaligen CityAdmin Angestellten. Er hat anscheinend genug von denen und ist so skrupellos, dass er seine eigene Mutter verkaufen w�rde. Falls du willst, arrangiere ich ein Treffen.")

		ANSWER("Wenn das alles stimmt, w�re es ideal f�r unsere Zwecke. Geh aber auf Nummer Sicher und vergewissere dich, dass er es ernst meint. ",103)
	NODE(103)
		SAY("Gut, sorgt ihr nur daf�r, dass dieser Reza bald ein Ende findet. Ich werde den Treffpunkt dann direkt an euch �bermitteln.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(104)
		SAY("Besser wir werden nicht zusammen gesehen. Wenn ich den Treffpunkt kenne, werde ich ihn euch sofort �bermitteln.")
		ENDDIALOG()

--------------------------------------------------------------------
--FIGARO
--150
	NODE(150)
		TAKEITEM(9482)
		if(result==0)then
			SAY("Ich habe hier ein paar ganz spezielle Drogen. Allerdings gibt es da schon ne Menge Leute die darauf warten. Also bis sp�ter.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Ahh, du bist sicher hier um dir meine Ware anzusehen, nicht wahr? ")

			ANSWER("Nicht wirklich, aber ich habe hier einen Datacube, der deinen Namen tr�gt.",151)
		end
	NODE(151)
		SAY("Endlich. Wei�t du eigentlich, wie lange ich schon darauf gewartet habe? Jetzt erfahre ich dann hoffentlich mehr dar�ber, was die CityAdmin wirklich tut.")

		ANSWER("Du sitzt doch eigentlich direkt an der Quelle, wie kommt es, dass du Informationen von uns brauchst?",152)
	NODE(152)
		SAY("Ja, ja, das stimmt aber nur teilweise. Die CityAdmin ist sehr gut dabei, dass zu verstecken, was sie verstecken will. Ich bekomme nur ab und zu etwas mit, was interessant ist.")

		ANSWER("Beispielsweise?",153)
	NODE(153)
		SAY("Die NCPD hat in letzter Zeit einige sehr brutale Razzias in der Gegend durchgef�hrt. Vor ein paar Tagen erst haben sie einen Appartement Block gest�rmt und ausger�uchert. Danach haben sie sechs Twilight Guardian aufgereiht und exekutiert. Die kennen keine Gnade, sag ich dir.")

		ANSWER("Einfach exekutiert? Diese Bastarde�",154)
	NODE(154)
		SAY("Mach dir nichts draus, es vergeht kein Tag wo nicht ein oder zwei Neocron B�rger einfach auf offener Strasse exekutiert werden. Jetzt verschwinde lieber, bevor uns jemand zusammen sieht.")
		SETNEXTDIALOGSTATE(155)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(155)
		SAY("Habe ich schon gesagt, dass auch ich fast einmal exekutiert wurde?")
		ENDDIALOG()


--------------------------------------------------------------------
-- DONNOVAN
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Bring erstmal die Informationen zu Simmons in den Pepper Park.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Bring erstmal die Informationen zu Figaro in den Pepper Park.")
				ENDDIALOG()
			else
				TAKEITEM(9482)
				if(result==0)then
					SETNEXTDIALOGSTATE(201)
					SAY("Alles erledigt? Gut gemacht, ich hoffe es gab keine grossen Probleme. Ich pers�nlich bin immer wieder froh, wenn ich hierher zur�ckkommen kann. Die Stadt ist widerlich verzerrt durch die Sklaven von Reza. Da ist der Dome doch ganz anders. Ein Zeichen daf�r, dass auch eine m�chtige Stadt fallen kann.")

					ANSWER("Ich habe alle Propaganda Cubes weitergegeben. Dieser Simmons scheint ein geheimer Verfechter unserer Sache zu sein. Er wollte sogar ein Treffen mit einem ehemaligen CityAdmin organisieren.",201)
				else
					GIVEITEM(9482)
					SAY("Versuch mit dem Datacube jemanden auf unsere Seite zu ziehen. Danach kannst du wiederkommen.")
					ENDDIALOG()
				end
			end
		end
	NODE(201)
		SAY("Simmons? Ja, das einzige was dem fehlt ist ein bischen Mumm. Wann soll dieses Treffen sein?")

		ANSWER("Er wollte es uns rechtzeitig wissen lassen.",202)
	NODE(202)
		GIVEMONEY(10000)
		SAY("Gute Arbeit, Hagen w�re stolz auf dich. Hier ist dein Sold, aber versauf nicht alles. Trainiere lieber etwas und such dann eine Contact Person auf, wenn du dich wieder Fit f�hlst. (n�chste Mission ab Level 35)")
		EPICRUNFINISHED(15,2)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()


end