--************************
--name   : dialogheader.lua
--ver    : 1.1
--author : Ferron
--date   : 
--lang   : en
--desc	 : Default dialog header
--npc    :
--************************
--changelog:
--2004/10/05(1.1): added INFACTION-, GETFACTION-, GETRELATION-fail-proof (Farril)
--2004/09/21(0.1): added INFACTION, CREATEFACTTABLE, GETFACTION, GETRELATION(Farril, Ferron)
--2004/09/21(0.1): recheck(Ferron)
--************************


dialogclass, state, result, node, counter = 0	

result = 0

function SetResult (res)  
	result = res 
end

function NODE(index)  	
	node = index 
end

function SAY(text)
	if (node==state) then
		SendScriptMsg("say", dialogclass,text)
	end
end

function SAYSPEECH(text, soundid)
	if (node==state) then
		SendScriptMsg("say", dialogclass,text, soundid, 0)
	end
end

function SAYRSC( rscid, rscsection)
	if (node==state) then
		SendScriptMsg("sayrsc", dialogclass, rscid, rscsection)
	end
end

function ANSWER(text,resultstate)
	if (node==state) then	
		counter = counter + 1
		SendScriptMsg("setanswer", dialogclass,counter,text,resultstate, 0)
	end
end

function ANSWERSPEECH(text, resultstate, soundid)
	if (node==state) then	
		counter = counter + 1
		SendScriptMsg("setanswer", dialogclass,counter,text,resultstate, soundid)
	end
end

function ENDDIALOG()
	if (node==state) then
		SendScriptMsg("enddialog", dialogclass)
	end
end

function SETGLOBALTRIGGER(name,value)
	if (node==state) then
		SendScriptMsg("settrigger",dialogclass,name,value)
	end
end

function GETGLOBALTRIGGER(name)
	if (node==state) then
		SendScriptMsg("gettrigger",dialogclass,name)
	end
end

function GETTARGETVALUE( targetid, valueid)
	if (node==state) then
		SendScriptMsg("gettargetvalue", dialogclass, targetid, valueid)
	end
end

function GIVEITEM(itemtype,quality)
	if (node==state) then
		SendScriptMsg("giveitem", dialogclass,itemtype,quality)
	end
end

function GIVEITEMWITHSLOTS(itemtype,quality,minslots)
	if (node==state) then
		SendScriptMsg("giveitemwithslots", dialogclass,itemtype,quality,minslots)
	end
end

function TAKEITEM(itemtype)
	if (node==state) then
		SendScriptMsg("takeitem", dialogclass,itemtype)
	end
end

function TAKEITEMCNT( itemtype, itemcnt)
	if (node==state) then
		SendScriptMsg("takeitemcnt", dialogclass,itemtype, itemcnt)
	end
end

-- ein spezielles item nehmen / geben
-- specialtype :   1 - blueprint
-- specialid:  bei blueprint - itemid
function TAKESPECIALITEMCNT( itemtype, specialtype, specialid, itemcnt)
	if (node==state) then
		SendScriptMsg("takespecialitemcnt", dialogclass, itemtype, specialtype, specialid, itemcnt)
	end
end

function GIVESPECIALITEM( itemtype, specialtype, specialid)
	if (node==state) then
		SendScriptMsg("givespecialitem", dialogclass, itemtype, specialtype, specialid)
	end
end

function GIVETAGGEDITEM( itemtype, tagid, newname)
	if (node==state) then
		SendScriptMsg("givetaggeditem", dialogclass, itemtype, tagid, newname)
	end
end

function GIVEQUESTITEM(itemtype)
	if (node==state) then
		SendScriptMsg("givequestitem", dialogclass,itemtype)
	end
end

function TAKEQUESTITEM(itemtype)
	if (node==state) then
		return SendScriptMsg("takequestitem", dialogclass,itemtype)
	end
end

function GIVEMONEY(amount)
	if (node==state) then
		SendScriptMsg("givemoney", dialogclass,amount)
	end
end

function TAKEMONEY(amount)
	if (node==state) then
		SendScriptMsg("takemoney", dialogclass,amount)
	end
end

function ACCEPTMISSION()
	if (node==state) then
		SendScriptMsg("acceptmission", dialogclass)
	end
end

function ACTIVATEDIALOGTRIGGER(trigger)
	if (node==state) then
		SendScriptMsg("activatedialogtrigger", dialogclass,trigger)
	end
end

function ADDDIALOGTRIGGERCNT(trigger, cnt)
	if (node==state) then
		SendScriptMsg("adddialogtriggercnt", dialogclass,trigger, cnt)
	end
end

function SETNEXTDIALOGSTATE( nextstate)
	if (node==state) then
		SendScriptMsg("setnextdialogstate", dialogclass, nextstate)
	end
end

function ISMISSIONTARGETACCOMPLISHED( target)

	if (node==state) then
		SendScriptMsg("ismissiontargetaccomplished", dialogclass, target)
	end

end

function RAND(range)

	if (node==state) then
		SendScriptMsg("rand", dialogclass, range)
	end

end

function GENDERCHECK()

	if (node==state) then
		SendScriptMsg("getgender", dialogclass, 2)
	end

	-- 0 : female
	-- 1 : male
end

function ALIGNMENT()

	-- erstmal nur zufall
	if (node==state) then
		SendScriptMsg("rand", dialogclass, 3)
	end
	-- 0 : enemy
	-- 1 : neutral
	-- 2 : friend
end

function ATTACK()

	--actions 
	-- 1 - attack
	if (node==state) then
		SendScriptMsg("npcaction", dialogclass, 1)
	end

end

function DIE()

	--actions 
	-- 2 - die
	if (node==state) then
		SendScriptMsg("npcaction", dialogclass, 2)
	end

end

function FOLLOW()

	--actions 
	-- 3 - setowner - follow
	if (node==state) then
		SendScriptMsg("npcaction", dialogclass, 3)
	end

end

function STOPFOLLOW()

	--actions 
	-- 5 - setowner 0-  stop follow
	if (node==state) then
		SendScriptMsg("npcaction", dialogclass, 5)
	end

end

function REMOVE()

	--actions 
	-- 6 remove
	if (node==state) then
		SendScriptMsg("npcaction", dialogclass, 6)
	end

end

function HELP()

	--actions 
	-- 4 - help
	if (node==state) then
		SendScriptMsg("npcaction", dialogclass, 4)
	end

end

function SETNPCSCRIPT( scriptname, scriptparams)

	if ( node==state) then
		SendScriptMsg("setnpcscript", dialogclass, scriptname, scriptparams)
	end

end

function GETCHILDCNT()

	if ( node==state) then
		SendScriptMsg("getchildcnt", dialogclass)
	end

end

function SPAWNNPC(type, x, y, z)

	if ( node==state) then
		SendScriptMsg("spawnnpc", dialogclass, type, x, y, z)
	end

end

function SPAWNNPCEX(type, x, y, z, range, scriptname, scriptparams, customloot, customlootspecialid)

	if ( node==state) then
		SendScriptMsg("spawnnpcex", dialogclass, type, x, y, z, range, scriptname, scriptparams, customloot, customlootspecialid)
	end

end

function GETDISTANCE(x, y, z)

	if ( node==state) then
		SendScriptMsg("getdistance", dialogclass, x, y, z)
	end

end

function GETTIMER()

	if ( node==state) then
		SendScriptMsg("gettimer", dialogclass)
	end

end

function RESETTIMER()

	if ( node==state) then
		SendScriptMsg("resettimer", dialogclass)
	end

end

function GETFACTIONSYMPATHY( factionid)
	if (node==state) then
		SendScriptMsg("getfactionsympathy", dialogclass, factionid)
	end
end

function CHANGEFACTION( factionid)
	if (node==state) then
		SendScriptMsg("changefaction", dialogclass, factionid)
	end
end

function CANDOEPICRUN( factionid, missionid)

	if (node==state) then
		SendScriptMsg("candoepicrun", dialogclass, factionid, missionid)
	end
end

function EPICRUNFINISHED( factionid, missionid)

	if (node==state) then
		SendScriptMsg("epicrunaccomplished", dialogclass, factionid, missionid)
	end
end

function STARTMISSION( missionid)

	if (node==state) then
		SendScriptMsg("startmission", dialogclass, missionid)
	end
end

function DOYALIGNMENT()
	if (node==state) then
		SendScriptMsg("getdoyalignment", dialogclass)
	end
end

function TRADE()
	if (node==state) then
		SendScriptMsg("trade", dialogclass,itemtype)
	end
end

function SENDCUSTOMMSG( cmd)
	if (node==state) then
		SendScriptMsg("sendcustommsg", dialogclass, cmd)
	end
end

function SENDLEVELMSG( cmd)
	if (node==state) then
		SendScriptMsg("sendlevelmsg", dialogclass, cmd)
	end
end

function SHOWTUTORIALTEXT( textid, sectionid)
	if (node==state) then
		SendScriptMsg("showtuttext", dialogclass, textid, sectionid)
	end
end

function GetWOCLevel()
	if (node==state) then
		SendScriptMsg("getwoclevel", dialogclass,trigger)
	end
end

function GetWOCSkill()
	if (node==state) then
		SendScriptMsg("getwocskill", dialogclass,trigger)
	end
end

function AddWOCLevel(skill)
	if (node==state) then
		SendScriptMsg("addwoclevel", dialogclass,trigger, skill)
	end
end

function lSendAction (in_dialogclass, newstate)

	dialogclass = in_dialogclass
	state = newstate
	counter = 0
	
	DIALOG()
end

-------------------
-- textid/sectionid refer to text.ini/help.ini
-- should be placed in help.ini -> sectionid=8
--
-- textid   -> message subject
-- textid+1 -> message body
--
-- charid has to be a pre-defined char name, which must be added to
-- the server char database. charids [1..100] are reserved for this
-- purpose, charid 70="Personal Skill Advisor"
--
-- Result=0 -> error
-- Result=1 -> mail has been sent
-------------------
function SENDEMAIL(textid, sectionid, charid)
	if (node==state) then
		SendScriptMsg("sendemail", dialogclass, textid, sectionid, charid)
	end
end

--added by Farril and Ferron
--
-- INFACTION(factionid)
--    returns 
--      -1 if the data query failed when char is in mission
--      0  if not in faction
--      1  if in faction

function INFACTION(factionid)
	CANDOEPICRUN(factionid, 0)
 	if (result ~= -1) then
 		result = 1
 	else 
 		if (result==-6) then
 			-- If player is in mission we cant ask it that way, return an error
 			result = -1
 		else
 			result = 0	
 		end
 	end
end

-- predefines for GETRELATION
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

-- GETFACTION()
--    returns 
--      1..15 if in player faction
--      -1 if an error occured (i.e. when mission is running)

function GETFACTION()
	for i = 1,16,1 do
		INFACTION(i)
		if (result==1) then
			return i
		else
			if (result<0) then
				-- an error occured while asking for faction, result is invalid
				return -1
		  	end
		end
	end
end

-- output: 0 = unknown, 1=allied to own fac, 2= neutral to own, 3= hostile, -1 = failed to retreive that info
function GETRELATION(factionid)
	if (state==node) then
		CREATEFACTABLE() ;
		targetfac = GETFACTION() ;
		if (targetfac < 0) then
			result = -1 ;
		else
			result = factionsymp[factionid][targetfac+1] ;
		end
	end
end

