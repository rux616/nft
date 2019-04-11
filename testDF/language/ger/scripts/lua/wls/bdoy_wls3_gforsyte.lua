--************************
--name   : bdoy_wls3_gforsyte.lua
--ver    : 1.6
--author : Ferron
--date   : 2004/Aug/22
--lang   : de
--desc	 : Scenario "Herbal Hunt NC Gerald Forsyte"
--npc    : Gerald Forsyte: 4213, Plants: 4230,4231,4232,4233
--************************
--changelog:
--2004/11/01(1.6): logic rework(Ferron)
--2004/09/07(1.5): translated to german, Ferron
--
--2004/08/22(0.0): written
--************************

--mission id

missionid1 = 3800
missionid2 = 3806

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
-- Amphidextrine, Amphidextrine Big Pack

reward1_id = 11017
reward2_id = 11018


--##########################

function DIALOG()


NODE(0)
   if (node==state) then
		
	-- pro city id is wanted
	DOYALIGNMENT()
		if (result == -1) then
			
			GETFACTIONSYMPATHY(6)
			pp_symp = result 
			
			if (pp_symp > 50) then
				SAY("Hmpff, ein PP-Verbündeter, also. Was willst Du von mir?")
				SAY("Wow, dich habe ich ja seitdem ich ProtoPharm verlassen habe nicht mehr gesehen.")
				ANSWER("Rate mal... Ich wollte wissen, was aus einem unserer besten Assistenten geworden ist. Dir scheint es ja recht gut ergangen zu sein, nachdem du von PP gefeuert wurdest. Von was kommt das bloß? Bastelst du vielleicht Drogen mit den auf die Seite geschafften PP-Lagerbeständen? Es scheint jedenfalls als würdest du welche in Eigenproduktion herstellen.", 15)
				ANSWER("Eigentlich will ich nichts Besonderes. Ich habe mich nur gewundert was du hier treibst...", 32)
			end 
			
			SAY("Hallo, wie kann ich Ihnen helfen?")
			ANSWER("Hmm, ich weiß nicht. Eigentlich dachte ich Sie brauchen Hilfe.", 1)
			ANSWER("Halt’s Maul und belästige mich nicht!", 31)	
			
		else
			
			SAY("Verpiss Dich DoY Abschaum...")
			ENDDIALOG()			
			
		end
   end

-- the normal discussion path
NODE(1) 
	SAY("Ah du suchst etwas Arbeit vermute ich? ")
	ANSWER("Ja stimmt, was machst du und was kann ich für dich tun ? ", 2)
	ANSWER("Vielleicht wenn du mir genug bezahlst? ", 4)

NODE(2)
	SAY("Ich mache einige spezielle, hmm nennen wir sie mal chemische Zusätze.. Habe Protopharm verlassen und mein eigenes Geschäft gestartet da man gute Sachen nicht in so einer kleinkarierten Firma machen kann. ")
	ANSWER("Ok und du brauchst einige Leute die dir helfen diese Chemikalien herzustellen ? ", 3)
	ANSWER("Und du brauchst mich um dir die Chemikalien für deine Medizinproduktion zu bringen ? ", 4)

NODE(3)	
	SAY("Eigentlich wirst du mir helfen indem du mir die Chemikalien bringst damit ich meine .. hmmm ..Medizin herstellen kann. ")
	ANSWER("Ok sag mir was ich machen muss und ich sage dir ob ichs machen werde . ", 7)

NODE(4)
	SAY("Hey du bist der richtige Mann für mich, du scheinst schneller zu kapieren als die Anderen. ")
	ANSWER("Danke, also sag mir nun was ich machen muss und was ich dafür bekomme ? ", 7)
	
NODE(7)
-- description hunt 1
	SAY("Soo ok dann. Du musst einige spezielle Pflanzen finden und mir dann die geernteten Chemikalien bringen. Du brauchst von jeder Sorte mindestens 2, um meinen Anforderungen gerecht zu werden. ")
	ANSWER("Und was für Pflanzen brauchst du ? ", 8)

NODE(8)
	SAY("Die Pflanzen heissen : Herbalis Aurora Carnivoris, Herbalis Natura Carnivoris, Herbalis Agrimonia Carnivoris. ")	
	ANSWER("Verstanden. Wo kann ich sie finden? ", 9)

NODE(9)
	SAY("Mein letzter Lieferant fand sie in D 05, E 03 und F 04 . Wo es welche Pflanze gibt, kann ich Dir aber nicht sagen.")
	ANSWER("Das wird schon reichen. Ich werde selbst danach suchen. 2 Stück brauchst Du von jeder Pflanze, hast Du gesagt ?", 10)
	
NODE(10)
	SAY("Ja, mindestens 2 von jeder.")
	ANSWER("Und die Bezahlung?", 11)
	
NODE(11)
	SAY("Tja, die Bezahlung... Ich werde Dir einen Anteil meiner Drogenproduktion überlassen. Das kannst Du dann entweder selbst aufbrauchen, oder verkaufen. Es ist Amphedextrine, die stärkste Constitution verstärkende Droge der Welt. Und ich bin der einzige der das Rezept kennt .")
	ANSWER("Das ist die Reise wert. Also Du kannst auf mich zählen.", 20)
	


--the PP discussion path
NODE(15)
	SAY("Bah ICH HABE PP VERLASSEN niemand hat mich gefeuert! Und ja mir gehts sehr gut ohne diese dumme Firma. Nun habe ich meinen EIGENEN Laden. ")
	ANSWER("Hm hört sich gut an. Und woher bekommst du nun ..ermm.. die Chemikalien? ", 16)

NODE(16)
	SAY("Ich bezahle Runner um mir die Chemikalien von den originalen Pflanzen zu bringen. So bekomme ich die besten Chems die es gibt. ")
	ANSWER("Hmm da du ja auf bestimmte Drogen spezialisiert bist kein schlechter Gedanke. ", 17)
	ANSWER("Ah und darum stehst du hier, du brauchst neue Runner um dir dir Chemikalien zu bringen, richtig? ", 18)

NODE(17)
	SAY("Ja und es funktioniert sehr gut und ich bin mein eigener Boss. Da wir schon mal dabei sind, du scheinst ja in die Wastelands zu gehen... ")
	ANSWER("Ja eigentlich will ich da hin, was würdest du zahlen damit ich dir die Chems bringe die du brauchst ? ", 19)
	ANSWER("Nicht wirklich aber wenn du gut bezahlst werde ich es versuchen. ", 19)
	ANSWER("Nein nein ich werde nicht für dich arbeiten Gerald... ", 33)
	
NODE(18)
	SAY("Hmm du hast recht ich brauch welche. Wenn du mir welche besorgen willst werde ich gut bezahlen. ")
	ANSWER("Oh nein Gerald ich werde nicht für dich arbeiten auch wenn du mir viel bezahlst, ich kenne deine Gepflogenheiten. ", 33)
	ANSWER("Sag mir was du bezahlst und ich werde darüber nachdenken. ", 19)
	
NODE(19)
	SAY("Hmm ich würde dir dasselbe bezahlen was die anderen bekommen. Meine eigene gute Arbeit. Ich denke dass Amphedextrine, meine selbst hergestellte Droge, der stärkste Constitution Verstärker der Welt, sollte dir bei der Entscheidung helfen oder ? ")
	ANSWER("Nein ich benutze keine also nutzlos für mich aber sicher nicht für Andere. Sag mir was gemacht werden muss. ", 7)
	ANSWER("Ich will nichts mit Drogen zu tun haben, also werde ich dir nicht helfen. ", 32)
	ANSWER("Wow Amphedextrine! Du bist gut mein Lieber, was muss ich tun. ", 7) 	
	
	
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
				
		if (gotchem0 == 1 and gotchem1 == 1 and gotchem2 == 1 and gotchem4 == 1 and gotchem5 == 1 and gotchem6 == 1) then
			-- killed all	
			-- and has chems in inv
			-- gets first reward
			
			GIVEITEM(reward1_id)
			ACTIVATEDIALOGTRIGGER(0)
			ACTIVATEDIALOGTRIGGER(1)
						
			SAY("Ok, Danke. Willst Du vielleicht mehr? Ich könnte meine Produktion erweitern, wenn ich eine Chemikalie zur Veredelung hätte. Aber die gibt es auch nur draußen, in den Wastelands. Möchtest Du sie mir holen?")
			
			-- start mission part 2
        		STARTMISSION(missionid2)
			
			ANSWER("Klar doch, wenn es mir mehr Amphedextrine bringt.", 25)
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
	SAY("Ok, ich brauche Raw Proteine von 2 Herbalis Melaleuca Carnivoris, welche man in I02 findet. Wenn Du mir das Raw Proteine bringst, überlasse ich Dir ein großes Pack Amphedextrine.")
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
			-- and has chems in inv
			-- gets second reward
			
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