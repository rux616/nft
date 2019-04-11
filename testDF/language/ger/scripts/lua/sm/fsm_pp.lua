--************************
--Faction supply manager
--v1.00
--************************

--PP
factionid = 6

function CANDOEPICRUN( factionid, missionid)
	if (node==state) then
		SendScriptMsg("candoepicrun", dialogclass, factionid, missionid)
	end
end


function INFACTION(factionid)
	CANDOEPICRUN(factionid, 0)
	if (result ~= -1) then
		result = 1
	else 
		result = 0	
	end
end


function CREATEFACTABLE() 
	factionsymp = {}	
	-- Angaben in 0, CA, DRE, NXT, TT, BT, PP, 0, TS, BD, CS, CM, DoY, AB, FA, TG
	-- 1 = allied, 2= neutral, 3= Hostile
	factionsymp[1] = { 0,1,1,1,1,1,1,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[2] = { 0,1,1,1,1,2,2,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[3] = { 0,1,1,1,1,2,2,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[4] = { 0,1,1,1,1,2,2,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[5] = { 0,1,2,2,2,1,1,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[6] = { 0,1,2,2,2,1,1,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[7] = { 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 } ;
	factionsymp[8] = { 0,3,3,3,3,3,3,0,1,2,2,2,0,0,1,1 } ;
	factionsymp[9] = { 0,3,3,3,3,3,3,0,2,1,1,2,0,0,2,1 } ;
	factionsymp[10] = { 0,3,3,3,3,3,3,0,2,1,1,2,0,0,2,1 } ;
	factionsymp[11] = { 0,2,2,2,2,2,2,0,2,2,2,1,0,0,2,2 } ;
	factionsymp[12] = { 0,3,3,3,3,3,3,0,1,1,1,2,0,0,2,2 } ;
	factionsymp[13] = { 0,3,3,3,3,3,3,0,2,2,3,3,0,0,2,2 } ;
	factionsymp[14] = { 0,3,3,3,3,3,3,0,1,2,2,2,0,0,1,1 } ;
	factionsymp[15] = { 0,3,3,3,3,3,3,0,1,1,1,3,0,0,1,1 } ;
	factionsymp[16] = {} ;
end

function GETFACTION() 
	for i = 1,16,1 do
		INFACTION(i)
		if (result==1) then 
			return i
		end
	end
end 

-- output: 0 = unknown, 1=allied to own fac, 2= neutral to own, 3= hostile
function GETRELATION()
	if (state==node) then
		CREATEFACTABLE() ;
		targetfac = GETFACTION() ;
		result = factionsymp[factionid][targetfac+1] ;
	end
end

function DIALOG()

	NODE(0)
	  if (node == state) then
		INFACTION(factionid)
		if (result == 1) then
			GETFACTIONSYMPATHY(factionid)
			if (result >= 90) then 
				SAY("Hallo und Willkommen.")
				ANSWER("Hallo, was verkaufst Du?", 1)
				ANSWER("Ich weiß, zeigst Du mir bitte die Liste", 2) 
				ANSWER("Verzeihung das war wohl der Falsche", 10)
			else
				if (result >= 0) then
					SAY("Verzeihung Du hast zu wenig Faction Sympathy. Ich kann Dir nicht helfen.")
					ENDDIALOG()		
				end
				if (result < 0) then
					SAY("Verrecke!")
					ATTACK()
					ENDDIALOG()		
				end
			end
		else
			GETRELATION() ;
			if (result==3) then
				SAY("EINDRINGLING!!")
				ATTACK()
				ENDDIALOG()
			else
				SAY("Hier gibts nichts zu sehen für Dich. Mach Platz für meine Kumpels.") ;
				ENDDIALOG() ;
			end
		end
	  end
	
	NODE(1)
		SAY("Ich habe hier die besonderen Produkte unserer Fraktion.")
		ANSWER("Okay lass mal sehen was Du hast - kann ich die Liste haben?", 2)
	NODE(2)
		SAY("Hier ist sie")
		TRADE()
		ENDDIALOG()
		
	NODE(10)
		SAY("Ist doch egal, vielleicht kommen wir nächstes mal überein.")
		ENDDIALOG()
		
end