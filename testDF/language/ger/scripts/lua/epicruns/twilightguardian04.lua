--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D, JOHNSON
--1,PvP vs CityMerc
--2,D, Donnovan
--3
--
--Startnode, Person
--0, Contact Person
--50, DONNOVAN 2262
--100, JOHNSON 2253
--150, cont P
--200, DONNOVAN
--250,
--
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--2262	2253			3	1	0	0	9	11	1	10	3	0	2	0				
--START	START	START	START
--50	100		
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Es gehen immer mehr Ger�chte um, die von einer neuen Geheimpolizei von Reza handeln. Angeblich haben sie schon viele Twilight Guardian umgebracht. Sie sollen angeblich unheimlich r�cksichtslos vorgehen.")

		ANSWER("Weiss man irgendetwas Genaueres?",1)
	NODE(1)
		SAY("Weshalb meinst du, sage ich dir das? Ich hatte gehofft, du wei�t etwas genauer bescheid, aber ich sehe du stehst genauso im Dunkeln wie ich.  Ach ja, Donnovan hat etwas besonderes f�r dich.")

		ANSWER("Gut, ich werde ihn sofort aufsuchen.",2)
	NODE(2)
		SAY("Tu das. Vielleicht wei�t du ja sp�ter mehr. Mann, ich bin schon fast so weit, dass ich jedem was springen lassen w�rde, wenn er mir Neuigkeiten bringt.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--50
	NODE(50)
		SAY("Tut mir leid, dieses Mal habe ich ganz sch�n viel f�r dich auf einmal. Ich h�tte es gerne anders geregelt, aber nachdem ich mir vorgestern ein Bein gebrochen habe, kann ich erstmal keinen Einsatz leiten. Das Implantat muss angeblich noch geschont werden bis die Nanomaschinen ihre Arbeit getan haben.")

		ANSWER("Das geht schon in Ordnung, je eher ich meine Sachen gemacht habe, desto eher wird Reeza fallen.",51)
	NODE(51)
		SAY("Erstmal gibt es Probleme mit unseren alten Widersachern. Die CityMercs n�hern sich immer mehr unseren Gebieten und gehen immer in Platoons vor. Das ist eine Gruppe von je sechs verdammten Mercs. Zwei K�mpfe haben wir schon verloren. Es ist Zeit den Spiess umzudrehen und sie dort zu treffen wo es weh tut.")

		ANSWER("Am besten wir heuern sie an, was?",52)
	NODE(52)
		SAY("Mach dich nicht l�cherlich, die CityMercs sind zu allen neutral, nur zu uns nicht. Der Plan ist es, einzelne Runner, ausserhalb dem Schutz ihrer Platoons, zu erledigen. Das w�re deine erste Aufgabe, finde einen Runner, der ungef�hr deiner St�rke entspricht und t�te ihn. Wichtig ist, dass es ein Runner ist, denn die sind ihre Nachschubtruppen.")

		ANSWER("Kapiert, ich lege also einen Runner der CityMercs um, der mir ungef�hr ebenb�rtig ist.",53)
	NODE(53)
		SAY("Genau. Du erinnerst dich an Simmons? Er hat dieses Treffen arrangiert, von dem er gesprochen hat. Allerdings solltest du trotzdem aufpassen, da wir nicht sagen k�nnen, worauf der Informant es abgesehen hat. Der Treffpunkt ist in den Wastelands, F 06 um genau zu sein. Sein Name ist Johnson. Besuche ihn nachdem du den CityMerc erledigt hast und vergiss nicht mir einen ausf�hrlichen Bericht zu geben.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


--------------------------------------------------------------------
--JOHNSON
--100
	NODE(100)
		SAY("Ich nehme an sie sind der Twilight Guardian Kontaktmann?")

		ANSWER("Wenn du Mr Johnson bist, dann ja. Ich hoffe unser Vertrauen in dich wird nicht unbegr�ndet sein.",101)
	NODE(101)
		SAY("Gut, gut. Nat�rlich werde ich mein bestes tun, immerhin m�chte ich es Reza auch heimzahlen.")

		ANSWER("Genau das ist es, was auch wir im Sinn haben. Dann spucks aus, was hast du f�r uns?",102)
	NODE(102)
		SAY("Ich bitte darum, dass sie mich siezen. Etwas Respekt vor mir kann ich doch wohl verlangen.")

		ANSWER("Also gut, wenn SIE meinen.",103)
	NODE(103)
		SAY("Also folgendes, Reza hat eine neue Art von Geheimpolizei ins Leben gerufen. Sie wird Neokorps genannt. Der derzeitige Anf�hrer ist wohl nur Reza selbst bekannt. Mehr als das sie sehr radikal und brutal vorgehen, kann ich auch nicht sagen. Aber ich weiss etwas anderes �ber sie.")

		ANSWER("Das w�rde die �bergriffe in der letzten Zeit erkl�ren.",104)
	NODE(104)
		SAY("Unterbrechen sie mich nicht. Es wird in n�chster Zeit ein Treffen zwischen dem F�hrer von Neokorps und den Offizieren geben. Das ist eine einzigartige M�glichkeit Neokorps vernichtend zu schlagen.")

		ANSWER("Das h�rt sich sehr verlockend an, aber was haben sie von all dem? Sie riskieren ganz sch�n viel dabei uns diese Information zu geben.",105)
	NODE(105)
		SAY("Keine Angst, mein Lohn ist es, die Reza Regierung gest�rzt zu sehen. Ich werde ihnen noch zus�tzliche Informationen �ber den Ort des Treffens geben. Gehen sie jetzt oder sie riskieren, dass uns jemand verr�t.")

		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
	NODE(106)
		SAY("Ich habe doch schon zugestimmt, ihnen Informationen �ber den Treffpunkt zukommen zu lassen.")

		ENDDIALOG()
--SPIELER BRINGT EINEN CITYMERC UM 2
--------------------------------------------------------------------
--cONTACT pERSON
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Versuch es mal bei Donnovan.")
			ENDDIALOG()
		else

			SAY("Gut dich zu sehen. Und? Hast du was herausbekommen?")

			ANSWER("Ja, ich kann dich doch nicht einfach an Informationsmangel sterben lassen, oder?",151)
		end
	NODE(151)
		SAY("Danke, du bist ein echter Menschenfreund. Hier, ich geb dir auch 2000 credits daf�r.")

		ANSWER("Das l�st meine Zunge doch betr�chtlich. Also, Reza hat in der Tat eine neue Geheimpolizei. Sie wird Neokorps genannt und es gibt einen CityAdmin Verr�ter, der uns den Anf�hrer dieser Polizei verraten will.",152)
	NODE(152)
		GIVEMONEY(2000)
		SAY("Danke noch mal. Ich bin jederzeit offen f�r solche News.")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		SAY("Falls du noch mehr interessantes herausfindest, dann komm ruhig wieder.")

		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Du weisst doch, dass du einen CityMerc umbringen sollst und den Kontaktmann Johnson in F-06 treffen sollst, oder?.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("Du weisst doch, dass du einen CityMerc umbringen sollst und den Kontaktmann Johnson in F-06 treffen sollst, oder?")
				ENDDIALOG()
			else
				SAY("Hast du Johnson aufgesucht?")

				ANSWER("Warum fragst du mich nicht zuerst �ber den CityMerc, den ich abknallen sollte?",201)
			end
		end
	NODE(201)
		SAY("Ich bin mir sicher, dass du nicht hier stehen w�rdest, wenn du es nicht geschafft h�ttest. Also, was ist mit Johnson?")

		ANSWER("Also, er berichtete von einer Neokorp Geheimpolizei, die Reza neu ins Leben gerufen hat. ",202)
	NODE(202)
		SAY("Daher stammen dann wohl die radikalen und brutalen �berf�lle auf unsere Leute. War das alles? Das alleine ist ein bisschen wenig.")

		ANSWER("Nein, er meinte au�erdem noch, dass er uns den Chef dieser Geheimpolizei auf einem Silbertablett pr�sentieren wird.",203)
	NODE(203)
		SAY("Echt? Der Mann weiss verd�chtig viel, aber diese Chance k�nnen wir nicht einfach sausen lassen. Wie und wann soll das passieren?")

		ANSWER("Er wollte uns Zeit und Ort noch zukommen lassen.",204)
	NODE(204)
		GIVEMONEY(10000)
		SAY("Gute Arbeit, du entwickelst dich noch zu dem ausschlaggebenden Nagel im Sarg von Reza. Hier, ich geb dir meinen Sold noch zus�tzlich, da du ja meinen Job mit erledigt hast. Haste dir auch verdient. Du wei�t ja, an wen du dich wenden musst f�r das n�chste Mal. (n�chste Mission ab Level 40)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(15,3)
		ENDDIALOG()
end