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
		SAY("Es gehen immer mehr Gerüchte um, die von einer neuen Geheimpolizei von Reza handeln. Angeblich haben sie schon viele Twilight Guardian umgebracht. Sie sollen angeblich unheimlich rücksichtslos vorgehen.")

		ANSWER("Weiss man irgendetwas Genaueres?",1)
	NODE(1)
		SAY("Weshalb meinst du, sage ich dir das? Ich hatte gehofft, du weißt etwas genauer bescheid, aber ich sehe du stehst genauso im Dunkeln wie ich.  Ach ja, Donnovan hat etwas besonderes für dich.")

		ANSWER("Gut, ich werde ihn sofort aufsuchen.",2)
	NODE(2)
		SAY("Tu das. Vielleicht weißt du ja später mehr. Mann, ich bin schon fast so weit, dass ich jedem was springen lassen würde, wenn er mir Neuigkeiten bringt.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--50
	NODE(50)
		SAY("Tut mir leid, dieses Mal habe ich ganz schön viel für dich auf einmal. Ich hätte es gerne anders geregelt, aber nachdem ich mir vorgestern ein Bein gebrochen habe, kann ich erstmal keinen Einsatz leiten. Das Implantat muss angeblich noch geschont werden bis die Nanomaschinen ihre Arbeit getan haben.")

		ANSWER("Das geht schon in Ordnung, je eher ich meine Sachen gemacht habe, desto eher wird Reeza fallen.",51)
	NODE(51)
		SAY("Erstmal gibt es Probleme mit unseren alten Widersachern. Die CityMercs nähern sich immer mehr unseren Gebieten und gehen immer in Platoons vor. Das ist eine Gruppe von je sechs verdammten Mercs. Zwei Kämpfe haben wir schon verloren. Es ist Zeit den Spiess umzudrehen und sie dort zu treffen wo es weh tut.")

		ANSWER("Am besten wir heuern sie an, was?",52)
	NODE(52)
		SAY("Mach dich nicht lächerlich, die CityMercs sind zu allen neutral, nur zu uns nicht. Der Plan ist es, einzelne Runner, ausserhalb dem Schutz ihrer Platoons, zu erledigen. Das wäre deine erste Aufgabe, finde einen Runner, der ungefähr deiner Stärke entspricht und töte ihn. Wichtig ist, dass es ein Runner ist, denn die sind ihre Nachschubtruppen.")

		ANSWER("Kapiert, ich lege also einen Runner der CityMercs um, der mir ungefähr ebenbürtig ist.",53)
	NODE(53)
		SAY("Genau. Du erinnerst dich an Simmons? Er hat dieses Treffen arrangiert, von dem er gesprochen hat. Allerdings solltest du trotzdem aufpassen, da wir nicht sagen können, worauf der Informant es abgesehen hat. Der Treffpunkt ist in den Wastelands, F 06 um genau zu sein. Sein Name ist Johnson. Besuche ihn nachdem du den CityMerc erledigt hast und vergiss nicht mir einen ausführlichen Bericht zu geben.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


--------------------------------------------------------------------
--JOHNSON
--100
	NODE(100)
		SAY("Ich nehme an sie sind der Twilight Guardian Kontaktmann?")

		ANSWER("Wenn du Mr Johnson bist, dann ja. Ich hoffe unser Vertrauen in dich wird nicht unbegründet sein.",101)
	NODE(101)
		SAY("Gut, gut. Natürlich werde ich mein bestes tun, immerhin möchte ich es Reza auch heimzahlen.")

		ANSWER("Genau das ist es, was auch wir im Sinn haben. Dann spucks aus, was hast du für uns?",102)
	NODE(102)
		SAY("Ich bitte darum, dass sie mich siezen. Etwas Respekt vor mir kann ich doch wohl verlangen.")

		ANSWER("Also gut, wenn SIE meinen.",103)
	NODE(103)
		SAY("Also folgendes, Reza hat eine neue Art von Geheimpolizei ins Leben gerufen. Sie wird Neokorps genannt. Der derzeitige Anführer ist wohl nur Reza selbst bekannt. Mehr als das sie sehr radikal und brutal vorgehen, kann ich auch nicht sagen. Aber ich weiss etwas anderes über sie.")

		ANSWER("Das würde die Übergriffe in der letzten Zeit erklären.",104)
	NODE(104)
		SAY("Unterbrechen sie mich nicht. Es wird in nächster Zeit ein Treffen zwischen dem Führer von Neokorps und den Offizieren geben. Das ist eine einzigartige Möglichkeit Neokorps vernichtend zu schlagen.")

		ANSWER("Das hört sich sehr verlockend an, aber was haben sie von all dem? Sie riskieren ganz schön viel dabei uns diese Information zu geben.",105)
	NODE(105)
		SAY("Keine Angst, mein Lohn ist es, die Reza Regierung gestürzt zu sehen. Ich werde ihnen noch zusätzliche Informationen über den Ort des Treffens geben. Gehen sie jetzt oder sie riskieren, dass uns jemand verrät.")

		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
	NODE(106)
		SAY("Ich habe doch schon zugestimmt, ihnen Informationen über den Treffpunkt zukommen zu lassen.")

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
		SAY("Danke, du bist ein echter Menschenfreund. Hier, ich geb dir auch 2000 credits dafür.")

		ANSWER("Das löst meine Zunge doch beträchtlich. Also, Reza hat in der Tat eine neue Geheimpolizei. Sie wird Neokorps genannt und es gibt einen CityAdmin Verräter, der uns den Anführer dieser Polizei verraten will.",152)
	NODE(152)
		GIVEMONEY(2000)
		SAY("Danke noch mal. Ich bin jederzeit offen für solche News.")
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

				ANSWER("Warum fragst du mich nicht zuerst über den CityMerc, den ich abknallen sollte?",201)
			end
		end
	NODE(201)
		SAY("Ich bin mir sicher, dass du nicht hier stehen würdest, wenn du es nicht geschafft hättest. Also, was ist mit Johnson?")

		ANSWER("Also, er berichtete von einer Neokorp Geheimpolizei, die Reza neu ins Leben gerufen hat. ",202)
	NODE(202)
		SAY("Daher stammen dann wohl die radikalen und brutalen Überfälle auf unsere Leute. War das alles? Das alleine ist ein bisschen wenig.")

		ANSWER("Nein, er meinte außerdem noch, dass er uns den Chef dieser Geheimpolizei auf einem Silbertablett präsentieren wird.",203)
	NODE(203)
		SAY("Echt? Der Mann weiss verdächtig viel, aber diese Chance können wir nicht einfach sausen lassen. Wie und wann soll das passieren?")

		ANSWER("Er wollte uns Zeit und Ort noch zukommen lassen.",204)
	NODE(204)
		GIVEMONEY(10000)
		SAY("Gute Arbeit, du entwickelst dich noch zu dem ausschlaggebenden Nagel im Sarg von Reza. Hier, ich geb dir meinen Sold noch zusätzlich, da du ja meinen Job mit erledigt hast. Haste dir auch verdient. Du weißt ja, an wen du dich wenden musst für das nächste Mal. (nächste Mission ab Level 40)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(15,3)
		ENDDIALOG()
end