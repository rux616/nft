--************************
--name   : bdoy_wls1_devlinjones.lua
--ver    : 2.08
--author : Ferron
--date   : 2004/09/07
--lang   : de
--desc	 : Missionscript for "The Juggernaut Facility"
--npc    : Devlin Jones, Frank McCoy , Dr. Morrison
--************************
--changelog:
--2004/11/04(2.09): forgot 2 ENDDIALOG in node 50 , fixed , cleaned some comments out(Ferron)
--2004/10/25(2.08): farril forgot to change the 1st mccoy check to -1 too (node 120), fixed (Ferron)
--
--2004/10/12(2.07): coin giving fixed, was wrong function, Givemoney instead of giveitem (Ferron)
--2004/10/03(2.06): no prim reward, runner can choose on second if coin or money
--2004/09/26(2.05): changed reward money to 50k(Ferron)
--2004/09/26(2.04): header added(Ferron)
--************************

-- Basic Structure

-- Info:
-- NPC: Questgiver: NODE(0) - REWARDGIVER: NODE(50) - DECRYPTGUY: NODE(100)
-- Description IDs 11100 / 11101

missionid1 = 3804



-- Definitions
-- *** Rewards
prim_goal_reward_credits = 0 ;	        -- no credits
prim_goal_reward_item = -1 ;		-- no item
sec_goal_reward_credits = 50000 ;	-- 50k credits
sec_goal_reward_item = 11002 ; 		-- old coin

-- *** FlagIDs
prim_goal_flag = 0 ;
sec_goal_flag = 1 ;
morrison_flag = 0 ;

-- *** ItemIDs
encrypted_diary = 11000 ;
encrypted_diary2 = 11025 ;
decrypted_diary = 11001 ;

-- *** temp vars within one dialog
took_encrypted = 0 ;

-- functions
-- *********

function REGIVE_DIARY()
	if (state==node) then
		if (took_encrypted==1) then
			GIVEITEM(encrypted_diary2) ;
			took_encrypted = 0 ;
		end
	end
end

function TAKE_DIARY()
        if (state==node) then
                TAKEITEM(encrypted_diary) ;
                if (result==1) then
                        took_encrypted = 1 ;
                        result = 1 ;
                else
                        TAKEITEM(encrypted_diary2) ;        
                        if (result==1) then
                                result = -1 ;
                        else
                                result = 0 ;
                        end
                end
        end
end

function TAKE_FINAL_DIARY()
	if (state==node) then
		TAKEITEM(decrypted_diary) ;
		if (result==1) then
			result = 1 ;
		else
			result = 0 ;
		end
	end
end

function GIVEREWARD(which)
-- 0 = prim
-- 1 = sec reward
	if (state==node) then
		if (which==0) then
			if (prim_goal_reward_credits>0) then
				GIVEMONEY(prim_goal_reward_credits) ;
			end
			if (prim_goal_reward_item>-1) then
				GIVEITEM(prim_goal_reward_item) ;
			end
		elseif (which == 1) then
			GIVEMONEY(sec_goal_reward_credits) ;
		elseif (which == 2) then
			GIVEITEM(sec_goal_reward_item) ;
		end
	end
end

-- DIALOG
-- ******

function DIALOG()
	-- *** this on his first contact
	NODE(0)
		-- normal barkeeper behavior
		-- First only speak with him
		SAY("Was m�chtest Du als N�chstes trinken?") 
		ANSWER("Ein Glas Synthetic Milk, bitte.",  2)
		ANSWER("Reich mir ein Cron 55, aber ein Kaltes.", 5)
		ANSWER("Habt Ihr eisgek�hlte Warbot Cola?", 7)
		ANSWER("Jack Whisky h�tte ich gern, habt Ihr den?", 9)
		ANSWER("Preachers Choice", 15) 
	
	--milk path
	NODE(2)
		SAY("Milch? Mann, wie hast Du es blo� bis hier her geschafft? Mein Gott ein Milchtrinker! Da muss ich erstmal nachschauen, ob wir welche haben.")
		ANSWER("Hmm, was hast Du gegen Milch? Ist das Beste, das man trinken kann und noch dazu gesund.", 3)
		ANSWER("Oh, wenn Du keine hast nehme ich auch eine Cola.", 7)
		ANSWER("Gib mir die Milch und halt's Maul.", 18)
	
	NODE(3)
		SAY("Ok, hier hast Du Deine Milch, Gesundheitsfanatiker.")
		TAKEMONEY(70)
		GIVEITEM(811)
		ANSWER("Die Wastelands sind ungesund genug, also...", 4)
		ENDDIALOG()
	
	NODE(4)
		SAY("Hmm, da hast Du recht.")
		ANSWER("Barleute wundern sich immer wieder.", 20) 
	
	
	--cron path
	NODE(5)
		SAY("Nat�rlich habe ich davon. Ist das Beste hier.")
		TAKEMONEY(70)
		GIVEITEM(812)
		ANSWER("Ohhhhh, das ist wirklich k������hl, was f�r ein Genuss. Danke, Mann.", 6)
		ANSWER("Hmm, nicht kalt genug, aber OK.", 20)
	
	NODE(6)
		SAY("Kein Problem, guter Service und ein guter K�hlschrank...")
		ANSWER("Das ist was wert in so einem abgelegenen Ort.", 20)
		ANSWER("Was ist das hier eigentlich f�r ein Ort?", 25)
	
	--cola path
	NODE(7)
		SAY("Hah, eisgek�hltes Cola, ja? Sollte kein Problem sein. Ich schau gleich nach.")
		ANSWER("Ok, das nehme ich dann. Danke.", 8)
		ANSWER("Was ist das eigentlich f�r ein Club hier?", 25)
		
	NODE(8)
		SAY("Ok, ok")
		TAKEMONEY(70)
		GIVEITEM(813)
		ANSWER("Danke.", 19)
	
	--Whisky path , barman is getting drunk
	NODE(9)
		SAY("Oh, den trinke ich auch gern. Da werd ich mir auch einen einschenken.")
		TAKEMONEY(70)
		GIVEITEM(817)	
		ANSWER("Danke, Mann. Ist ein richtig guter, was meinst Du?", 10)
		
	NODE(10)
		SAY("Yeah, versuch ihn auf einen Schluck auszudrinken. Der brennt richtig gut runter.")
		ANSWER("Ich bevorzuge ihn eher langsam, aber nimm ruhig noch einen auf meine Kosten.", 11)
	
	NODE(11)
		SAY("Ok, wenn Du zahlst, nehme ich gern noch einen.")
		TAKEMONEY(70)
		ANSWER("Hmm, warum auch nicht, aber Du k�nntest mir dabei auch etwas �ber diesen Ort erz�hlen.", 12)
	
	NODE(12)
		SAY("Oh, ich kenn viele Geschichten ... aber zuerst noch einen.")
		TAKEMONEY(70)
		ANSWER("Hey, ich bin mit meinem fertig, reich mir auch noch einen.", 13)
		ANSWER("Na OK, aber das ist der letzte den ich zahle.", 14)
	
	NODE(13)
		SAY("Ok, hier ist Deiner... *hick*...")
		GIVEITEM(817)
		ANSWER("Danke, Mann. Was ist jetzt mit der Geschichte?", 30)
	
	
	NODE(14)
		SAY("Hm, OK Mann, das ist dann der Letzte ...hick... wAAs wollte ich Dir noch gleich ERz�hln?")
		ANSWER("Du wolltest mir die Geschichten �ber diesen Ort erz�hlen!", 25)
	
	
	--Preachers Choice path
	NODE(15)
		SAY("Ohh Mann, da wei� jemand bescheid, was der beste Whisky ist. Hier nimm.")
		TAKEMONEY(90)
		GIVEITEM(819)
		ANSWER("Danke, nur das Beste f�r den Besten - mich.", 16)
		ANSWER("Ah gut, dass Du welchen hast. �brigens was ist das hier f�r ein Ort? Ich bin hier das erste mal.", 25)
		ANSWER("Hmm, Devlin Jones? Wo habe ich blo� Deinen Namen schon mal gelesen? Das m�sste schon l�nger her sein.", 17)
		ANSWER("Hmm, nicht billig, aber gut.", 20)
	
	NODE(16)
		SAY("Haha, Du bist ja ziemlich von Dir �berzeugt. Ich mag das.")
		ANSWER("Hehe, warum auch nicht. Ich habe immerhin lange genug damit verbracht so gut zu werden wie ich heute bin.", 44)
		ANSWER("Warum auch nicht. Ich bin gut, also...", 20)
	
	NODE(17)
		SAY("Du hast also meinen Namen schon mal gelesen, hmm hmm... Ich kann mir schon denken wo Du das her hast. Ich erz�hl Dir eine kleine Geschichte ... aber Du musst sie f�r Dich behalten, wenn ich sie Dir erz�hle, ja?")
		ANSWER("Ok, warum denn nicht.", 30)
		ANSWER("Daf�r habe ich im Moment keine Zeit, vielleicht das n�chste mal.", 19)
		ANSWER("Erz�hl mir zuerst von diesem Ort hier.", 25)
		ANSWER("Eigentlich interessiert mich das nicht sonderlich, lass mich in Ruhe trinken.", 18)
	
		
	
	--shut up / end nodes
	NODE(18)
		SAY("Ok, dann halt ich mein Maul.")
		ENDDIALOG()
		
	NODE(19)
		SAY("Ok, dann noch eine sch�ne Zeit in unserem Club.")
		ENDDIALOG()
	
	
	--what are you doing here 
	NODE(20)
		SAY("Also was tust Du hier, so weit weg von daheim?")
		ANSWER("Oh, ich wandere nur ziellos herum, um die Welt zu sehen.", 21)
		ANSWER("Ich bin auf der Suche nach neuen Abenteuern in den Wastelands.", 44)
	
	NODE(21)
		SAY("Aha, und abgesehen vom herumwandern tust Du nichts?")
		ANSWER("Hmm, eine nette Forschungsreise ist doch etwas.", 22)
	
	NODE(22)
		SAY("Hmm, dann erz�hle ich Dir eine h�bsche, kleine Geschichte, die Dich m�glicherweise zu einem h�bschen, kleinen S�mmchen Geld auf Deinem Konto f�hren k�nnte.")
		ANSWER("Dann lass mal h�ren.", 30) 	
	
	
	--what is this place
	NODE(25)
		SAY("Das ist die Twister Bar. Sie geh�rt einem TS Typ, der dachte dieser Platz w�re ein idealer Ort f�r eine Bar, um Runner zu bewirten, die sich an den Monstern versuchen wollen.")
		ANSWER("Monster?", 26)
		ANSWER("Ah, ich habe schon geh�rt, dass man hier zu reichlich Action kommt.", 28)
		
	NODE(26)
		SAY("Ja, riesige Warbots. Riesengro�! Warum? Suchst Du Action?")
		ANSWER("Sicherlich!", 30)
		ANSWER("�berhaupt nicht. Nur einen Drink!", 19)
		
	NODE(28)
		SAY("Ok, dann werde ich dir eine Geschichte erz�hlen.")
		ANSWER("Do it", 30)
		
	
		
	
	--Devlin Jones story long 
	NODE(30)
		SAY("Ok, dann werde ich Dir mal meine Geschichte erz�hlen und warum ich hier 'gestrandet' bin. Ich war nicht immer Barmann. Es scheint schon ewig her zu sein, aber fr�her war ich mal Sicherheitsbeauftragter einer Expedition in die Wastelands.")
		ANSWER("Oh wow, und was ist passiert, dass Du jetzt hier gelandet bist?", 31)
	
	NODE(31)
	  if (node == state) then
		
		GETFACTIONSYMPATHY(3)
		if (result > 40) then
			SAY("Hmm, Du scheinst eine Getreuer NExTs zu sein, habe ich Recht?")
			ANSWER("Ja, erkennt man leicht, nicht?", 32)
			ANSWER("Na ja, eigentlich nicht...",  38) 
			
		end	
			
		SAY("Die Expedition f�r die ich zust�ndig war endete in einem totalen Desaster. Fast alle Teilnehmer ... haben es nicht geschafft.")
		ANSWER("Au, h�rt sich ja richtig b�se an. Welches Ziel hatte die Expedition eigentlich?", 38)
	
	  end
	
	-- NExT affilate path
	NODE(32)
		SAY("Na dann, hier hast Du noch einen Drink. Wei�t Du, ich war fr�her auch ein Angestellter von NExT und leitete eine Mission zu einer Einrichtung, hier in der N�he. Hast Du schon mal von Juggernauts geh�rt? Wir hatten uns aufgemacht sie zu suchen ... und fanden sie auch. Aber das brachte uns kein Gl�ck. Von den normalen NExT Datenbanken wurde dieses Ereignis wieder gel�scht, aber vielleicht hast Du Zugriff auf jene mit h�herer Sicherheitsstufe.")
		GIVEITEM(819)
		ANSWER("Also ich hab' noch nie von Juggernauts geh�rt. Also Du warst auch bei der Gesellschaft? Was ist passiert?", 33)
		ANSWER("Hmm, also ich hab schon mal mitbekommen, dass es eine Mission gab, die auch irgendwie in Zusammenhang mit Juggernauts stand, mehr wei� ich aber nicht.", 33)
		
	NODE(33)
		SAY("Wie gesagt fanden wir die Einrichtung, die Fabrik der Juggernauts - es war noch eine aus den Zeiten DOYs. Da waren sie auch noch vollst�ndig deaktiviert. Als dann aber Kaytlin ... ermm .. Dr. Morrison begann am Hauptcomputer zu arbeiten, erwachten die Bots pl�tzlich wieder zum leben. Innerhalb k�rzester Zeit hatten Sie alle get�tet!!!")
		ANSWER("Oh wow, das h�rt sich ja ziemlich schlimm an, und trotzdem hast Du �berlebt...", 34)
	
	NODE(34)
		SAY("Ja, das habe ich. Aber seit damals will ich etwas zur�ck von dort. Dr. Morrison f�hrte ein Tagebuch und das will ich zur�ck, damit ich herausfinden kann, was schief lief.")
		ANSWER("Hmmm, was w�rdest Du mir zahlen, wenn ich es Dir zur�ckbringe?", 35)
	
	NODE(35)
	  if (node == state) then
		GENDERCHECK()
		if (result == 1) then
			SAY("H�r mal mein Sohn, diese Einrichtung hat die Angewohnheit das Leben ihrer Besucher drastisch zu verk�rzen! Das �berlebst Du nicht allein. Aber ich zahle Dir gern 50 Kilocredits, wenn Du mir die Aufzeichnungen bringst.")
			ANSWER("Wow, DAS ist mal ein Batzen Geld. Daf�r d�rfen sogar Warbies versuchen mein Leben zu verk�rzen!", 36)
		else
			SAY("Gn�digste, diese Einrichtung hat die Angewohnheit das Leben ihrer Besucher drastisch zu verk�rzen! Das �berlebst Du nicht allein. Aber ich zahle Dir gern 50 Kilocredits, wenn Du mir die Aufzeichnungen bringst.")
			ANSWER("Wow, DAS ist mal ein Batzen Geld. Daf�r d�rfen sogar Warbies versuchen mein Leben zu vorzeitig zu beenden!", 36)
		end
	  end

	NODE(36)
		SAY("Ok, wenn Du willst versuch's, ist immerhin Dein Leben.")		
		ANSWER("Ok, auf geht's", 49)
		ANSWER("Hmm, na ja vielleicht ist es doch besser es bleiben zu lassen. Ich denke ich belasse es bei meinem Drink.", 19)
	
	-- normal path
	NODE(38)
		SAY("Mit meiner Mannschaft arbeitete ich f�r eine gro�e NC Gesellschaft. Wir hatten den Auftrag eine alte DOY Warbot Fabrik zu erkunden. Und das taten wir auch, doch fast alle fanden dabei den Tod.")
		ANSWER("Aha...", 39)

	NODE(39)
		SAY("Ich habe �berlebt, und seitdem bin ich hier der Barmann. Ich w�rde Dich gut entlohnen, wenn Du mir einen Gefallen tust.")
		ANSWER("Bezahlung h�rt sich gut an. Was m�sste ich denn machen?", 40)
	
	NODE(40)
		SAY("Du m�sstest mir etwas aus der Fabrik holen von der ich Dir erz�hlt habe, aber das wird nicht leicht. Sagen wir's mal so: Es wird SEHR gef�hrlich.")
		ANSWER("Hmm, die Warbots in der Einrichtung sind also aktiv?", 41)
	
	NODE(41)
		SAY("Ja, das sind sie und zu allem �berfluss sind es keine gew�hnlichen Warbots. Sie sind riesig! Gr��er und st�rker als die Titans, die man in den Wastelands antrifft. Du solltest vielleicht einen Kumpel als starken Arm rufen. Ich zahle Dir oder Euch 50 Kilocredits f�r ein Tagebuch von dort.")
		ANSWER("Ein Tagebuch? Wof�r brauchst Du ein Tagebuch, und noch dazu zu solch einem stattlichen Preis?", 42)
	
	NODE(42)
		SAY("Das Tagebuch enth�lt die Aufzeichnungen unserer Forschungsreise, die von einer der Wissenschaftler gef�hrt wurde, die dort auch ihr Leben lie�. Sie hie� Dr. Kaytlin Morrison. Finde sie und du wirst das Tagebuch finden.")		
		ANSWER("Ok, ich werde es versuchen. Ich bin richtig neugierig auf die 'riesigen' Warbots von denen Du erz�hlt hast.", 43)
		ANSWER("Ok, bin schon unterwegs.", 49)
		ANSWER("Nette Geschichte, aber ich glaub kein Wort, also halt's Maul!", 18)
	
	NODE(43)
		SAY("Die sind wirklich riesig und ziemlich aggressiv - gegen die hast du allein keine Chance.")
		ANSWER("Hmm, dann brauch ich wohl Hilfe von ein paar Kumpels. Aber ich mach's jedenfalls.", 49)
				
		
		
	--direct access to mission with small story
	NODE(44)
		SAY("Ok, dann h�r zu: Ich habe hier etwas ziemlich gef�hrliches, aber lohnenswertes f�r Dich. Bist Du interessiert?")
		ANSWER("Sicherlich! Schie� los, ich suche immer nach neuen Herausforderungen - Immer nur das H�rteste f�r den Besten." , 45)
		ANSWER("Oh, so was mag ich nicht, Dankesch�n.", 19)
		ANSWER("Schauen wir mal was Du f�r mich hast.", 45)
	
	NODE(45)
		SAY("Ok, um es kurz zu machen: Ich war einmal der Sicherheits Chef einer NExT Expedition, die das Ziel hatte Informationen �ber eine DOY Warbot Fabrik, unweit von hier, zu besorgen. Wir hatten versucht das Gebiet zu erkunden, aber letztendlich wurde fast das ganze Team von riesigen Warbots ausgel�scht. Und wenn ich riesig sage, dann meine ich auch rieeesengro�!!! Ein Mitglied der Expedition, eine Wissenschaftlerin namens Dr. Kaytlin Morrison, f�hrte ein Tagebuch �ber die Forschungsergebnisse in der Einrichtung, und das w�rde ich gerne zur�ck haben.")
		ANSWER("Hmm, h�rt sich ziemlich riskant an. Riesige Warbots, sagst Du? Hm, hm, ...", 46)
		ANSWER("Hmm, also was genau habe ich zu tun?", 47)
		
	NODE(46)
		SAY("Ja, RIESENGROSSE! Ein Titan Warbot wirkt wie ein Kind, verglichen mit einem von diesen und ist noch dazu nur halb so aggressiv. Meine Mannschaft war innerhalb weniger Minuten ausgel�scht. Wenn Du erfolg hast zahle ich Dir 50 Kilocredits!")
		ANSWER("Wow, hmm, h�rt sich so an, als w�rde ich Hilfe brauchen. Ich werde meine Kumpels zusammenrufen und dann versuchen wir es. Aber wie kommt man in diese Einrichtung?", 48)
		
	NODE(47)
		SAY("Nochmals: Es ist sehr gef�hrlich! Du wirst die ganze Anlage untersuchen m�ssen, wo unser Team ausgel�scht wurde, um das Tagebuch von Dr. Morrison zu finden. Das bringst Du dann zu mir.")
		ANSWER("Ok, Alles Roger.", 49)
		
	NODE(48) 
		SAY("Da gibt es eine alte Ruine hier in der N�he. Dort wirst Du einen Eingang finden, aber Du musst genau suchen, damit Du ihn findest.")
		ANSWER("Ok, also dann, ich bin am Weg.", 49)
	
	
	--*** starting mission here/accept mission entrance description	
	NODE(49)
		SAY("Ich w�nsche Dir viel Gl�ck, aber bring mir blo� dieses Tagebuch.")
		
		
		STARTMISSION(missionid1) ;
		SETNEXTDIALOGSTATE(50) ;
		ENDDIALOG() ;
		
	-- *** This is after he accepted everytime he returns
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(prim_goal_flag) ;
		if (result==0) then
			-- he previously did not return the encrypted
			TAKE_DIARY()
			if (result==1) then
				-- he had the encrypted with him
				ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
								
				SAY("Du hast es also wirklich bei Dir! Danke! Also es ist leider noch verschl�sselt wie ich sehe, musst es wohl noch entschl�sseln lassen so bringt es mir nix.")
				ANSWER("Ja sicher mach ich das. Erkl�rs genauer.", 52)
				ANSWER("Nein, Danke. Ich hab genug und will nicht mehr.", 51)
				
			else
				-- he did not have the encrypted
				-- maybe he has already translated it before returning
				TAKE_FINAL_DIARY()
				if (result==1) then
					-- ok, the guy already did everything
										
					-- mark all as done
					ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
					ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
					
					SAY("M�chtest du eine wertvolle alte M�nze oder einfach nur 50k credits?")
					ANSWER("Die M�nze.", 60)
					ANSWER("Das Geld.", 61) 
				else
					-- he did not bring any of the needed items yet
					SAY("Ich werde Dir solange nichts zahlen, bis ich nicht das Ding von Dir bekommen habe!") ;
					ENDDIALOG() ;
				end
			end
		else
			-- ok he was already here for the encrypted but wanted to decrypt it
			-- now test if he has done
				TAKE_FINAL_DIARY()
				if (result==1) then
					-- ok, the guy already did everything
					
					-- mark all as done
					ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
					
					SAY("M�chtest du eine wertvolle alte M�nze oder einfach nur 50k credits?")
					ANSWER("Die M�nze.", 60)
					ANSWER("Das Geld.", 61)
				else
					-- he did not finish secondary goal
					SAY("Hmm, ich habe Dir doch gesagt, dass Du es entschl�sseln sollst. So bekommst Du Deine Belohnung nicht! Versuch es noch ein mal.") ;
					ENDDIALOG() ;
				end
		end
		
		
	-- no secondary mission
	NODE(51)
		ACTIVATEDIALOGTRIGGER(sec_goal_flag)
		SAY("Ok, dann Danke vielmals, noch einen sch�nen Tag.")
		ENDDIALOG()
	
	-- secondary mission description
	NODE(52)
		SAY("Ok. Also wei�t Du, dieses Tagebuch, dass Du mir geholt hast ist ziemlich kompliziert verschl�sselt. Im Klartext: Es ist wertlos f�r mich! Du musst es f�r mich entschl�sseln lassen. Es gibt da diesen Typ, der oft in der Pepper Park Subway Station abh�ngt. Der schafft so was vielleicht. Frag ihn, ob er das tun kann.")
		ANSWER("Ok, ich suche ihn und finde heraus, ob er es entschl�sseln kann. Wie hei�t der Kerl eigentlich?", 53)
		ANSWER("Hmm, Pepper Park liegt am anderen Ende der Welt, Mann, f�r so was hab' ich keine Zeit.", 51)
	
	NODE(53)
		SAY("Er hei�t McCoy. Er ist ein wenig seltsam. Also dann, gute Reise, und komm bald wieder.") 
		REGIVE_DIARY()
		SETNEXTDIALOGSTATE(50)
		ENDDIALOG()
	
	--reward giving
	NODE(60)
		SAY("Ok hier die M�nze.")
		GIVEREWARD(2) ;
		ENDDIALOG()
	NODE(61)
		SAY("Ok hier das Geld.")
		GIVEREWARD(1) ;	
		ENDDIALOG()
				
		
	-- *** Frank McCoy - The guy that decrypts the diary
	NODE(100)
		SAY("Hey, Mann, verpiss Dich! Ich kaufe Nichts.")
		ANSWER("Ich will doch gar nichts verkaufen, sondern bin wegen Deiner besonderen Dienste hier.", 101)
		ANSWER("Entschl�ssle das und halt's Maul!", 115)
		
	NODE(101)
		SAY("Aha, ich biete also Dienste an? Wer hat Dir denn so was erz�hlt?")
		ANSWER("Der Barmann in der Twister Bar in den Wastelands.", 102)
		ANSWER("Das hat Dich nicht zu interessieren. Mach einfach Deinen Job!", 110)
	
	
	-- friendly McCoy
	NODE(102)
		SAY("Oh. Hmm. Dann hast Du wohl Recht. Ich biete Dienstleistungen im Zusammenhang mit Elektronik und dem Entschl�sseln von Daten. Was kann ich f�r Dich tun?")
		ANSWER("Wusste ich's doch, dass ich beim Richtigen gelandet bin. Ich habe ein Tagebuch, das entschl�sselt werden muss.", 103)
	
	NODE(103)
		SAY("Hmm, ok. Ich werde es mal versuchen. Verschl�sselungen knacken ist ohnehin eines meiner liebsten Hobbies. Gratis ist das aber deswegen noch nicht. Das wird Dich 2000 Credits kosten.")
		ANSWER("Das geht schon in Ordnung. ", 109)
			
	NODE(109)	
		TAKEMONEY(2000)
		SAY("Ok, kann ich es dann mal haben?")
		ANSWER("Sicher. Bittesch�n.", 120)
		
	
	-- angry mcCoy
	NODE(110)
		SAY("Ich arbeite f�r wen und wann ICH will!!!")
		ANSWER("Oh, sorry, ich war wohl etwas grob vorhin. Das hab' ich nicht so gemeint.", 111)
		ANSWER("Ich zahl Dir doch was daf�r. Also machst Du es?", 113)
		ANSWER("Du wirst es JETZT, SCHNELL und OHNE BEZAHLUNG machen! Klar, Du Freak?", 121)
		ANSWER("Mach schon!", 115)
	
	NODE(111)
		SAY("Hmm, dann kann ich es mir ja mal anschauen. Das wird Dich aber etwas kosten ... sagen wir 3000 Credits f�r Dich.")
		ANSWER("Hmm, ok.", 112)
	
	NODE(112)
		TAKEMONEY(3000)
		SAY("Ok, kann ich es dann mal haben?")
		ANSWER("Sicher.", 120)
	
	NODE(113)
		SAY("Hmm, ok. Sagen wir 5000 Credits. Daf�r mach ich es.")
		ANSWER("Ist Ok.", 114)
	
	NODE(114)
		TAKEMONEY(5000)
		SAY("Ok, kann ich es dann mal haben?")
		ANSWER("Hier nimm.", 120)
	
	NODE(115)
		SAY("Hmm, ok, aber f�r Dich wird das nicht billig. Und noch etwas: Wenn das, was Du da in H�nden h�ltst ist, was ich denke, dann bin ich der Einzige, der das entschl�sseln kann.")
		ANSWER("Hmm, das k�mmert mich nicht. Mach es doch einfach!", 116)
	
	NODE(116)
		SAY("Zuerst 7000.")
		ANSWER("WAS? Bist Du jetzt v�llig �bergeschnappt?", 117)
		ANSWER("Hm, ich hoffe mal, das ist das Geld auch wert.", 119)
		
	NODE(117)
		SAY("Nein, das bin ich sicher nicht! Ich arbeite - Du zahlst!")
		ANSWER("NIEMALS! Du arbeitest, und daf�r gibt's kein Geld! Verstanden? Hier nimm endlich und mach Dich an die Arbeit!", 121)
		ANSWER("Hmm, sagen wir 3500?", 118)
	
	NODE(118)
		TAKEMONEY(4000)
		SAY("Hmm, ich nehme 4000, aber Danke.")
		ANSWER("Ok, Du bist der Mann...", 120)
	
	
	NODE(119)
		TAKEMONEY(7000)
		SAY("Ok, kann ich es dann mal haben?")
		ANSWER("Nimm schon.", 120)
		
		
	NODE(120)	
		TAKE_DIARY()
		if (result==-1) then
			GIVEITEM(decrypted_diary) ;
			SAY("Hier hast Du es.")
			ENDDIALOG()
		else
			SAY("Hmmm. Du laberst mich voll, um f�r fast nichts f�r Dich zu arbeiten, und dann hast Du das Ding noch nicht mal bei Dir? Jetzt aber, mach Dich auf und hol' es, Mann!")
			ENDDIALOG()
		end
	
	--very angry McCoy steals his money 
	NODE(121)	
		TAKE_DIARY()
		if (result==-1) then
			GIVEITEM(decrypted_diary) ;
			TAKEMONEY(10000)
			SAY("Hier hast Du es.")
			ENDDIALOG()
		else
			SAY("Hmmm. Du laberst mich voll, um f�r fast nichts f�r Dich zu arbeiten, und dann hast Du das Ding noch nicht mal bei Dir? Jetzt aber, mach Dich auf und hol' es, Mann!")
			ENDDIALOG()
		end	
		
	-- Dr. Morrison
	
	NODE(150)
		SAY("GEH WEG! GEH WEG! - die Warbots m�gen Dich nicht - GEH WEG!")
		ANSWER("Beruhigen Sie sich Dr. Morrison. Alles ist in Ordnung.", 154)
		
	NODE(151)
		SAY("NEIN, ihr schie�t doch auf sie. Schie�t nicht auf sie - verletzt doch nicht meine lieblichen Warbots!")
		ANSWER("Was? Dr. Morrison ist etwas nicht in Ordnung mit Ihnen?", 152)
		
	NODE(152)
		SAY("Mir geht's gut, ich bin nur leicht verletzt -HUST HUST!- Besch�digt nicht meine Warbots. Sie geh�ren ALLE MIR!!!")
		ANSWER("Aha, wie Sie meinen Dr. Morrison. Wie ich sehe geht es Ihnen ... gut. Ich brauche nur etwas von Ihnen, dann bin ich gleich wieder weg.")
	
	NODE(153)
		SAY("Ok, sag mir was Du willst und dann geh.")
		ANSWER("Ich br�uchte Ihr Tagebuch. Ich nehme an Sie brauchen es nicht mehr?", 154)
	
	NODE(154)
		SAY("Warum willst Du denn -- HUST HUST -- das -- HUST -- haben?")
		ANSWER("Ich versuche nur die Daten der urspr�nglichen Mission zur�ck zu bekommen, damit wir erfahren was hier passiert ist.", 155)
		
	NODE(155)
			--checking if he already had one of the diaries		
			-- if (morrison_flag == 0) then
		SAY("Ich bin schon fast tot ... lass mir blo� meine Warbots in Ruhe - HUST - hier nimm. - HUST - Der Code zum Entschl�sseln ist Dwe44...-HUST- Jetzt verschwinde aber!")
		GIVEITEM(11000)
			--setting flag for dr morrison
			--morrison_flag = 1
		SETNEXTDIALOGSTATE(50)
--		DIE()
			--else 
			--	SAY("-HUST-ARGH-")
			--	DIE()
			--end		
		
		ENDDIALOG()
		
		
end

