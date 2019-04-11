--************************
--name   : bdoy_wls3_aerol.lua
--ver    : 1.6
--author : Ferron
--date   : 2004/Aug/22
--lang   : de
--desc	 : Scenario "Herbal Hunt DOY Aerol"
--npc    : Aerol: 4214, Plants: 4230,4231,4232,4233
--************************
--changelog:
--2004/11/01(1.6): logic rework(Ferron)
--2004/09/08(1.5): translated to german, Ferron
--		   
--2004/08/22(0.0): written
--************************

--mission id

missionid1 = 3801
missionid2 = 3807

-- ids of chems to be brought

-- Auxin,Mesophyll,Cytokinin,Raw Proteine

chem0_id = 11007
chem1_id = 11011
chem2_id = 11012
chem3_id = 11014

-- Abscisinacid,Gibberellin,Petiolus,Ethylen

chem4_id = 11010
chem5_id = 11008
chem6_id = 11013
chem7_id = 11009


-- ids of reward items
-- Iceflash, Iceflash Big Pack

reward1_id = 11015
reward2_id = 11016


--##########################

function DIALOG()


NODE(0)
   if (node==state) then
		
	-- anti city id is wanted
	DOYALIGNMENT()
		if (result == 1) then
			
			SAY("Was willst Du? Iceflash ist gerade aus.")
			ANSWER("Oh, nein. Gerade das hätte ich gebraucht! ", 1)
			ANSWER("Iceflash? Davon habe ich noch gar nichts gehört.", 5)
			ANSWER("Halt's Maul und ärgere mich nicht!", 31)
			
		else
			
			SAY("Verpiss Dich, Reza-Abschaum...")
			ENDDIALOG()			
			
		end
   end

-- the normal discussion path
NODE(1) 
	SAY("Ich hab's Dir gerade gesagt: Es ist gerade aus, also hau' ab.")
	ANSWER("Ach, komm schon - ich BRAUCH das!", 2)
	ANSWER("Hast Du vielleicht welches, wenn ich Dich über Preis bezahle?", 4)

NODE(2)
	SAY("Mann, ich habe keines. Wenn Du mir aber die Chems bringst, dann könnte ich welches machen!")
	ANSWER("Oh, Du produzierst selbst? Was brauchst Du dafür?", 3)
	
NODE(3)	
	SAY("Du wirst mir helfen die notwendigen Grundstoffe zum herstellen meiner Drogen zu besorgen.")
	ANSWER("Ok, sag mir zuerst was ich tun muss - ich sag Dir dann, ob ich es mache.", 7)

NODE(4)
	SAY("Du kannst mir nur helfen, die notwendigen Chemikalien zu holen, wenn Du es riskierst sie aus recht weit entfernten Gegenden heranzuschaffen.")
	ANSWER("Klar mache ich das. Was springt für mich dabei raus und woher kann ich das Zeug überhaupt holen?", 7)
	ANSWER("Oh, da gibt es also auch Risiken zu tragen? Hmm, ich bin doch nur ein einfacher Kunde. Ich bezweifle, dass ich gut darin bin.", 32)
	
NODE(5)
	SAY("Das ist eine ganz seltene Droge, die es nur bei mir gibt. Es ist mit Abstand die stärkste Droge um Deine Constitution zu steigern. Wenn Du mir die Chems holst, die ich zur Herstellung brauche, dann wirst Du gut entlohnt. Aber um ehrlich mit Dir zu sein, es wird nicht ungefährlich.")
	ANSWER("Hört sich gut an. Ich werde es jedenfalls versuchen.", 7)
	ANSWER("Risiken tragen ist nichts für mich.", 32)
	
NODE(7)
-- description hunt 1
	SAY("Soo, also gut. Du wirst ganz besondere Pflanzen finden müssen und bestimmte Chemikalien aus ihnen gewinnen. Du brauchst von jeder Sorte mindestens 2, um meinen Anforderungen gerecht zu werden.")
	ANSWER("Und welche Pflanzen brauchst Du?", 8)

NODE(8)
	SAY("Die Pflanzen heißen: Herbalis Aurora Carnivoris, Herbalis Natura Carnivoris und Herbalis Agrimonia Carnivoris.")	
	ANSWER("Verstanden. Wo kann man die finden?", 9)

NODE(9)
	SAY("Mein letzter Lieferant fand sie in D 05, E 03 und F 04 . Wo es welche Pflanze gibt, kann ich Dir aber nicht sagen.")
	ANSWER("Das wird schon reichen. Ich werde selbst danach suchen. 2 Stück brauchst Du von jeder Pflanze, hast Du gesagt?", 10)

NODE(10)
	SAY("Ja, mindestens 2 von jeder.")
	ANSWER("Und die Bezahlung?", 11)
	
NODE(11)
	SAY("Tja, die Bezahlung... Ich werde Dir einen Anteil meiner Drogenproduktion überlassen. Das kannst Du dann entweder selbst aufbrauchen, oder verkaufen. Es ist immerhin Iceflash.")
	ANSWER("Das ist die Reise wert. Also Du kannst auf mich zählen.", 20)



	
NODE(20)
	SAY("Ok, ich bin schon gespannt was Du mir bringst. Und nicht vergessen: mindestens 2 Stück von jeder Pflanze!")
	-- start mission 1
	
	STARTMISSION(missionid1)
	SETNEXTDIALOGSTATE(21)	
	ENDDIALOG()

NODE(21)
   if (node == state) then
	
	ISMISSIONTARGETACCOMPLISHED(0) 
	target0 = result

	if (target0 == 1) then
		
		TAKEITEM(chem0_id)
		gotchem0 = result
		
		TAKEITEM(chem1_id)
		gotchem1 = result
		
		TAKEITEM(chem2_id)
		gotchem2 = result
		
		TAKEITEM(chem4_id)
		gotchem4 = result

		TAKEITEM(chem5_id)
		gotchem5 = result

		TAKEITEM(chem6_id)
		gotchem6 = result

				
		if (gotchem0 == 1 and gotchem1 == 1 and gotchem2 == 1 and gotchem4 == 1 and gotchem5 == 1 and gotchem6 == 1)  then
			-- killed all	
			-- and has chems in inv
			-- gives first reward
			
			GIVEITEM(reward1_id)
			ACTIVATEDIALOGTRIGGER(0)
			ACTIVATEDIALOGTRIGGER(1)
						
			SAY("Ok, Danke. Willst Du vielleicht mehr? Ich könnte meine Produktion erweitern, wenn ich eine Chemikalie zur Veredelung hätte. Aber die gibt es auch nur draußen, in den Wastelands. Möchtest Du sie mir holen?")
			
			-- start mission part 2
        		STARTMISSION(missionid2)
			
			ANSWER("Klar doch, ich mache alles für Iceflash.", 25)
			ANSWER("Nein, Danke. Ich bin noch gut versorgt, durch den letzten Job für Dich.", 24)
		
		else
			--give items he had back to him
			if (gotchem0 == 1) then
				GIVEITEM(chem0_id)
			end
			if (gotchem1 == 1) then
				GIVEITEM(chem1_id)
			end
			if (gotchem2 == 1) then
				GIVEITEM(chem2_id)
			end
			if (gotchem4 == 1) then
				GIVEITEM(chem4_id)
			end
			if (gotchem5 == 1) then
				GIVEITEM(chem5_id)
			end
			if (gotchem6 == 1) then
				GIVEITEM(chem6_id)
			end
					
		end
		-- all killed, but not all chems in inv  
		
		SAY("Ich brauche ALLE Grundstoffe, nicht nur ein paar. Los, hol' mir alles, oder es gibt keine Bezahlung!")
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
	else
		SAY("Du hast noch nicht alles erledigt. Komm wieder, wenn Du alles hast, was ich brauche.")
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
	end
   end
   
--it ends with the first mission
NODE(24)
	SAY("Ok, auch gut. Komm später wieder, wenn Du Lust hast noch ein wenig für mich auf die Jagd zu gehen.")
	ACTIVATEDIALOGTRIGGER(0)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
   
--mission part 2
NODE(25)
	
	SAY("Ok, ich brauche Ethylen von 2 Herbalis Melaleuca Carnivoris, welche man in I02 findet. Wenn Du mir das Ethylen bringst, überlasse ich Dir ein großes Pack Iceflash.")
	ANSWER("Ok, das mache ich. Jetzt kenne ich mich ja schon aus mit dem Ausreißen der Pflanzen.", 26)
	ANSWER("Oh, nein, lieber nicht. Danke nochmals.", 41)
	    
       	SETNEXTDIALOGSTATE(28)
	ENDDIALOG()

NODE(28)
   if (node == state) then
	
	ISMISSIONTARGETACCOMPLISHED(0) 
	target3 = result
	
	if (target3 == 1 ) then
		TAKEITEM(chem3_id)
		gotchem3 = result
		TAKEITEM(chem7_id)
		gotchem7 = result
				
		-- killed all
		
		if (gotchem3 == 1 and gotchem7 == 1) then
			-- and has chems in inv  2
			--gives second reward
			
			GIVEITEM(reward2_id)
			ACTIVATEDIALOGTRIGGER(0)
			ACTIVATEDIALOGTRIGGER(1)
						
			SAY("Ok, Danke und tschüß.")
			ENDDIALOG()			
		else
			--give items he had back to him
			if (gotchem3 == 1) then
				GIVEITEM(chem3_id)
			end
			if (gotchem7 == 1) then
				GIVEITEM(chem7_id)
			end
		end
		-- all killed, but not all chems in inv 
		
		SAY("Wo sind die Chemikalien? Ich dachte Du wolltest mir alle bringen?")
		SETNEXTDIALOGSTATE(28)
		ENDDIALOG()
	else
		SAY("Ich brauche die Grundstoffe. Störe mich doch nicht, wenn Du das Zeug, das ich brauche gar nicht hast.")
		SETNEXTDIALOGSTATE(28)
		ENDDIALOG()
	end
   end

-- no answers mission part 1
NODE(30)
	SAY("Sorry, sorry. Du bist ja so gut angezogen...")
	ANSWER("Hey do you want trouble?", 31)
	
NODE(31)
	SAY("Ok, ich sage nichts mehr..")
	ENDDIALOG()

NODE(32)
	SAY("Dann lass mich in Frieden und verschwinde!")
	ENDDIALOG()

NODE(33)
	SAY("Schade eigentlich. Ich hätte gut bezahlt... in Drogen. Dann nicht. Jetzt brauch ich einen neuen Laufburschen.")
	ENDDIALOG()

-- no answers mission part 2	
NODE(40)
	SAY("Ok, wenn Du nicht willst...")
	ENDDIALOG()

NODE(41)
	SAY("Ok, auch egal...")
	ENDDIALOG()

end