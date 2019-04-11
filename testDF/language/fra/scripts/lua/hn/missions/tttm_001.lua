-- delivery missions hacknet

ICEBREAKER = "SPINE Mark-6 Codebreaker"
ICEBREAKERID = 11950 ;

factionid 	= 4 ;		-- faction
missionbaseid 	= 4948 ;	-- erster eintrag in der missionbase f�r diese Faction
missionnpcbase 	= 5012 ;	-- erster mission npc dieser faction

-- data
missionpool = {}
missionpool.count = 0 

-- mission levels
easy		= 0
medium		= 1
hard		= 2

function AddMission(level,target1,target2,target3,missionid)
	current = missionpool.count+1 ;
	missionpool.count = missionpool.count + 1
	missionpool[current] = {}
	missionpool[current].level = level
	missionpool[current].target1 = target1
	missionpool[current].target2 = target2
	missionpool[current].target3 = target3
	missionpool[current].mID = missionid
end

function CreateMissionPool()
	if (state==node) then
		AddMission(easy,missionnpcbase+0,0,0,missionbaseid) ;
		AddMission(easy,missionnpcbase+1,0,0,missionbaseid+1) ;
		AddMission(easy,missionnpcbase+2,0,0,missionbaseid+2) ;
		
		AddMission(medium,missionnpcbase+0,missionnpcbase+1,0,missionbaseid+3) ;
		AddMission(medium,missionnpcbase+0,missionnpcbase+2,0,missionbaseid+4) ;
		AddMission(medium,missionnpcbase+1,missionnpcbase+0,0,missionbaseid+5) ;
		AddMission(medium,missionnpcbase+1,missionnpcbase+2,0,missionbaseid+6) ;
		AddMission(medium,missionnpcbase+2,missionnpcbase+1,0,missionbaseid+7) ;
		AddMission(medium,missionnpcbase+2,missionnpcbase+0,0,missionbaseid+8) ;
		
		AddMission(hard,missionnpcbase+0,missionnpcbase+1,missionnpcbase+2,missionbaseid+9) ;
		AddMission(hard,missionnpcbase+0,missionnpcbase+2,missionnpcbase+1,missionbaseid+10) ;
		AddMission(hard,missionnpcbase+1,missionnpcbase+0,missionnpcbase+2,missionbaseid+11) ;
		
	end
end

function bitvalue(pos)
	if (pos==-1) then return 0 end
	if (pos==0) then return 1 end
	if (pos==1) then return 2 end
	if (pos==2) then return 4 end
	if (pos==3) then return 8 end
	if (pos==4) then return 16 end
	if (pos==5) then return 32 end
	if (pos==6) then return 64 end
	if (pos==7) then return 128 end
	if (pos==8) then return 256 end
	if (pos==9) then return 512 end
	if (pos==10) then return 1024 end
	if (pos==11) then return 2048 end
	if (pos==12) then return 4096 end
	if (pos==13) then return 8192 end
	if (pos==14) then return 16384 end
	if (pos==15) then return 32768 end
end

-- makes ordinal out of float (positive only)
function trunc(val)
	testval = 0 ;
	testbit = 0 ;
	while (testval<val) and (testval+1<val) do
		if (testval+bitvalue(testbit)>val) then
			testval = testval + bitvalue(testbit-1) 
			testbit = 0
		else
			testbit = testbit + 1
		end
		if (testbit>15) then
			return -1
		end
	end
	return testval
end

-- makes modular
function mod(val,divider)
	return val - (trunc(val/divider) * divider)
end

function GetMissionName(pos)
	if  (pos>missionpool.count) then 
		return
	end
	local name
	name = "ROUTE-"								-- routing = delivery
	if (missionpool[pos].level==easy) then
		name = name.."SH#" 						-- short
		else if (missionpool[pos].level==medium) then
			name = name.."NR#" 					-- near
			else if (missionpool[pos].level==hard) then
				name = name.."FR#" 				-- far
			end
		end
	end

	-- do some code out of the mission target ids				-- letzten beide stellen des targets
	if (missionpool[pos].target1>0) then
		name = name..mod(missionpool[pos].target1,100)
	else
		name = name.."xx"						-- oder xx
	end
	if (missionpool[pos].target2>0) then
		name = name..mod(missionpool[pos].target2,100)
	else
		name = name.."xx"
	end
	if (missionpool[pos].target3>0) then
		name = name..mod(missionpool[pos].target3,100)
	else
		name = name.."xx"
	end
	return name
end


-- the missions currently provided
m1,m2,m3 = 0

function MissionSelector()
	if (state==node) then
		result = 0
		RAND(missionpool.count)
		m1 = result +1
		RAND(missionpool.count)
		m2 = result +1
		RAND(missionpool.count)
		m3 = result +1
		
		ANSWER(GetMissionName(m1),20)
		ANSWER(GetMissionName(m2),21)
		ANSWER(GetMissionName(m3),22)
		ANSWER("Abandonner les liaisons indisponibles",23)
	end
end

function CANDOEPICRUN( factionid, missionid)
	if (node==state) then
		SendScriptMsg("candoepicrun", dialogclass, factionid, missionid)
	end
end

function INFACTION(facid)
	CANDOEPICRUN(facid,0)
	if (result~=-1) then
		result = 1
	else
		result = 0
	end
end

function DIALOG()
	result = 0
	NODE(0)
		if (node==state) then
			CreateMissionPool() ;
			INFACTION(factionid)
			if (result==1) then
				state = 2
			else 
				TAKEITEM(ICEBREAKERID)
				if (result==1) then
					SAY(""..ICEBREAKER.." charg� .... Processus de d�cryptage initialis� ...... Processus de d�cryptage effectu� ......")
					ANSWER("     - Poursuivre",2) ;
				else
					SAY("\nbfgjsdgrfkjszo2qruewazr3q879	2rfjkqlfdjka�U())$U�TQ	IFD�\nbfgjsdgrfkjszo2qruewazr3q879	2rfjkqlfdjka�U())$U�TQ	IFD�\n*ERROR 440* ..... ICMP initiated")
					ATTACK()
					HELP()
					ENDDIALOG()
				end
			end
		end
	NODE(1)
		if (state==node) then
			m1,m2,m3 = 0,0,0
		end
	-- mission select
	NODE(2)
		SAY("Abandon de la file d'attente ... statut : en d�rangement") ;
		MissionSelector()
	NODE(9)
		SAY("Commande trait�e") ;
		ENDDIALOG()
	-- mission accepts
	NODE(20)
		if (m1>0) then
			STARTMISSION(missionpool[m1].mID)
			if (missionpool[m1].level==easy) then
				SAY("Nouvelle table de rediction appliqu�e ... relai suivant  \\\\%NPC_WORLD(0)\\%NPC_NAME(0)") ;
			end
			if (missionpool[m1].level==medium) then
				SAY("Nouvelle table de rediction appliqu�e ... relai suivant  \\\\%NPC_WORLD(1)\\%NPC_NAME(1)") ;
			end
			if (missionpool[m1].level==hard) then
				SAY("Nouvelle table de rediction appliqu�e ... relai suivant  \\\\%NPC_WORLD(2)\\%NPC_NAME(2)") ;
			end
		end
		ANSWER("Donn�es re�ues ... fermeture de la connexion ... effacement du journal des connexions  ...",29)
	NODE(21)
		if (m2>0) then
			STARTMISSION(missionpool[m2].mID)
			if (missionpool[m2].level==easy) then
				SAY("Nouvelle table de rediction appliqu�e ... relai suivant  \\\\%NPC_WORLD(0)\\%NPC_NAME(0)") ;
			end
			if (missionpool[m2].level==medium) then
				SAY("Nouvelle table de rediction appliqu�e ... relai suivant  \\\\%NPC_WORLD(1)\\%NPC_NAME(1)") ;
			end
			if (missionpool[m2].level==hard) then
				SAY("Nouvelle table de rediction appliqu�e ... relai suivant  \\\\%NPC_WORLD(2)\\%NPC_NAME(2)") ;
			end
		end
		ANSWER("Donn�es re�ues ... fermeture de la connexion ... effacement du journal des connexions  ...",29)
	NODE(22)
		if (m3>0) then
			STARTMISSION(missionpool[m3].mID)
			if (missionpool[m3].level==easy) then
				SAY("Nouvelle table de rediction appliqu�e ... relai suivant  \\\\%NPC_WORLD(0)\\%NPC_NAME(0)") ;
			end
			if (missionpool[m3].level==medium) then
				SAY("Nouvelle table de rediction appliqu�e ... relai suivant  \\\\%NPC_WORLD(1)\\%NPC_NAME(1)") ;
			end
			if (missionpool[m3].level==hard) then
				SAY("Nouvelle table de rediction appliqu�e ... relai suivant  \\\\%NPC_WORLD(2)\\%NPC_NAME(2)") ;
			end
		end
		ANSWER("Donn�es re�ues ... fermeture de la connexion ... effacement du journal des connexions  ...",29)
	-- mission decline
	NODE(23)
		SAY("Tentatives de connexion annul�es ... messages entrants sur le m�me port ... h�te destinataire en d�rangement ...") ;
		ANSWER("debug -n:con:7865",2)
		ANSWER("mount con:7865 /dev/null",9)
	-- close com
	NODE(29)
		SAY("Connexion : en attente") ;
		SETNEXTDIALOGSTATE(29)
		ENDDIALOG()
	
	
	-- last npc:
	NODE(50)
		SAY("... scan port 9072 ... connexion effectu�e ... r�ception ...") ;
		ANSWER("Transfer finished",51) ;
	NODE(51)
		ACTIVATEDIALOGTRIGGER(0)
		SAY("... fermeture ... ok") ;
		ENDDIALOG()
		
	-- second last npc:
	NODE(100)
		SAY("... scan port 9072 ... connexion effectu�e ... parcours des tables de donn�es ...") ;
		ANSWER("Attente de r�ponse",101) ;
	NODE(101)
		ACTIVATEDIALOGTRIGGER(1)
		SAY("... transfert d�tourn� ... relai suivant \\\\%NPC_WORLD(0)\\%NPC_NAME(0)") ;
		ENDDIALOG()
	-- third last npc:
	NODE(150)
		SAY("... scan port 9072 ... connexion effectu�e ... parcours des tables de donn�es ...") ;
		ANSWER("Attente de r�ponse",151) ;
	NODE(151)
		ACTIVATEDIALOGTRIGGER(2)
		SAY("... transfert d�tourn� ... relai suivant \\\\%NPC_WORLD(1)\\%NPC_NAME(1)") ;
		ENDDIALOG()
end