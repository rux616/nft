--************************
--Faction supply manager
--v1.00
--************************

--CS
factionid = 10

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
				SAY("Hello and welcome.")
				ANSWER("Hello, what do you sell?", 1)
				ANSWER("I know, show me the list please", 2) 
				ANSWER("Oh sorry i got the wrong person", 10)
			else
				if (result >= 0) then
					SAY("Sorry but you dont have enough sympathy. I can not serve you.")
					ENDDIALOG()		
				end
				if (result < 0) then
					SAY("YOUR ARE DEAD!")
					ATTACK()
					ENDDIALOG()		
				end
			end
		else
			GETRELATION() ;
			if (result==3) then
				SAY("INTRUDER!!")
				ATTACK()
				ENDDIALOG()
			else
				SAY("Nothing to see here for you. Make place for my loyal mates") ;
				ENDDIALOG() ;
			end
		end
	  end
	
	NODE(1)
		SAY("I have here our special faction products.")
		ANSWER("Ah ok lets see what do you have, can i have the list?", 2)
	NODE(2)
		SAY("Here it is")
		TRADE()
		ENDDIALOG()
		
	NODE(10)
		SAY("Never mind, maybe next time you are right with me.")
		ENDDIALOG()
		
end