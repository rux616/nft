--**************************************************
--** special faction blueprint pool    		  **
--** Black Dragon High Security Database  	  **
--** bdhsd_001				  	  **
--**************************************************

RESULT=0
ITEMDESC=0
ITEMSLOT=0


--faction check funktion
factionid = 9

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

-- general info
-- nur namen ids anpassen. variablen nicht ver‰ndern
DBNAME="Black Dragon Clan High Security Database"
FACNAME="Black Dragon Clan"
factionid=9
FACSLOGAN="-"
CODEBREAKERID=11950
CODEBREAKER="SPINE Mark-6 Codebreaker"

-- itemgruppen mit namen definieren
-- nur namen anpassen. variablen nicht ver‰ndern. unbenutze variablen auskommentieren. gruppe 1 kann 4 subgruppen haben.
GRP1=""
SUBGRP11=""
SUBGRP12=""
SUBGRP13=""
GRP2="Drones"
GRP3="Mainenance Tools"
-- GRP4="empty"

-- item slots mit namen und item id definieren 
-- nur namen und item id anpassen. variablen nicht ver‰ndern. unbenutze variablen auskommentieren

--  GRP1 - 
-- SUBGRP11 
--DESC1=
--SLOT1=
--DESC2=
--SLOT2=
--DESC3=                    
--SLOT3=
--DESC4=
--SLOT4=
--DESC5=
--SLOT5=
--DESC6=              
--SLOT6=
--DESC7=              
--SLOT7=
--DESC8=              
--SLOT8=
--DESC9=              
--SLOT9=
--DESC10=
--SLOT10=
--DESC11=         
--SLOT11=
--DESC12=         
--SLOT12=
--DESC13=      
--SLOT13=
--DESC14=         
--SLOT14=
-- DESC15="empty"
-- SLOT15="empty"
-- DESC16="empty"
-- SLOT16="empty"
-- DESC17="empty"
-- SLOT17="empty"
-- DESC18="empty"
-- SLOT18="empty"
-- DESC19="empty"
-- SLOT19="empty"
-- DESC20="empty"
-- SLOT20="empty" 

-- SUBGRP12 
--DESC21=
--SLOT21=
--DESC22=
--SLOT22=
--DESC23=
--SLOT23=
--DESC24=
--SLOT24=
--DESC25=
--SLOT25=
-- DESC26="empty"
-- SLOT26="empty"
-- DESC27="empty"
-- SLOT27="empty"
-- DESC28="empty"
-- SLOT28="empty"
-- DESC29="empty"
-- SLOT29="empty "
-- DESC30="empty"
-- SLOT30="empty"

-- SUBGRP13 
--DESC31=
--SLOT31=
--DESC32=
--SLOT32=
--DESC33=
--SLOT33=
--DESC34=
--SLOT34=
--DESC35=
--SLOT35=
--DESC36=
--SLOT36=
--DESC37=
--SLOT37=
--DESC38=
--SLOT38=
-- DESC39="empty"
-- SLOT40="empty"
-- SLOT40="empty"

-- GRP2 
DESC41="DEVOURER"
SLOT41=464
--DESC42=
--SLOT42=
--DESC43=
--SLOT43=
--DESC44=
--SLOT44=
--DESC45=
--SLOT45=
--DESC46=
--SLOT46=
--DESC47=
--SLOT47=
--DESC48=
--SLOT48=
--DESC49=
--SLOT49=
--DESC50=
--SLOT50=
-- DESC51="empty"
-- SLOT51="empty"
-- DESC52="empty"
-- SLOT52="empty"
-- DESC53="empty"
-- SLOT53="empty"
-- DESC54="empty"
-- SLOT54="empty"
-- DESC55="empty"
-- SLOT55="empty"
-- DESC56="empty"
-- SLOT56="empty"
-- DESC57="empty"
-- SLOT57="empty"
-- DESC58="empty"
-- SLOT58="empty"
-- DESC59="empty"
-- SLOT59="empty"
-- DESC60="empty"
-- SLOT60="empty"

-- GRP 3 -  15 slots frei
DESC61="Recycler Machina Glove"
SLOT61=2354
--DESC62=
--SLOT62=
--DESC63=
--SLOT63=
--DESC64=
--SLOT64=
--DESC65=
--SLOT65=
--DESC66=
--SLOT66=
--DESC67=
--SLOT67=
--DESC68=
--SLOT68=
--DESC69=
--SLOT69=
--DESC70=
--SLOT70=
-- DESC71="empty"
-- SLOT71="emtpy"
-- DESC72="empty"
-- SLOT72="emtpy"
-- DESC73="empty"
-- SLOT73="emtpy"
-- DESC74="empty"
-- SLOT74="emtpy"
-- DESC75="empty"
-- SLOT75="emtpy"
-- DESC76="empty"
-- SLOT76="emtpy"
-- DESC77="empty"
-- SLOT77="emtpy"
-- DESC78="empty"
-- SLOT78="emtpy"
-- DESC79="empty"
-- SLOT79="emtpy"
-- DESC80="empty"
-- SLOT80="emtpy"

-- vordefinierte leere gruppe 20 slots
-- GRP4 - empty 20 slots
-- DESC81="empty"
-- SLOT81="empty"
-- DESC82="empty"
-- SLOT82="empty"
-- DESC83="empty"
-- SLOT83="empty"
-- DESC84="empty"
-- SLOT84="empty"
-- DESC85="empty"
-- SLOT85="empty"
-- DESC86="empty"
-- SLOT86="empty"
-- DESC87="empty"
-- SLOT87="empty"
-- DESC88="empty"
-- SLOT88="empty"
-- DESC89="empty"
-- SLOT89="empty"
-- DESC90="empty"
-- SLOT90="empty"
-- DESC91="empty"
-- SLOT91="empty"
-- DESC92="empty"
-- SLOT92="empty"
-- DESC93="empty"
-- SLOT93="empty"
-- DESC94="empty"
-- SLOT94="empty"
-- DESC95="empty"
-- SLOT95="empty"
-- DESC96="empty"
-- SLOT96="empty"
-- DESC97="empty"
-- SLOT97="empty"
-- DESC98="empty"
-- SLOT98="empty"
-- DESC99="empty"
-- SLOT99="empty"

-- blueprint name und item id definieren
BPID=11992
BPDESC="High Capacity Blueprint TL-90"

--*****************************************************************************************
-- Hauptdialog
function DIALOG()

NODE(0)
	if (node == state) then
	INFACTION(factionid)
	if (result == 1) then
		state=5
	else
		TAKEITEM(CODEBREAKERID)
			if (result==1) then 
			SAY("\n"..CODEBREAKER.." loaded ...... Decryption process initiated ...... Decryption process successfull ......")
			ANSWER("       - Continue",5)
			else
				GETRELATION()
				if (result==3)
					SAY("\nij42o3jk2oirjfeijr3oj3ifjipdjpse4343323k2orjeo2jwe20wk12e39djwqﬂ9edj29jd29k29ks92je29ej39ej3\nij42o3jk2oirjfeijr3oj3ifjipdjpse4343323k2orjeo2jwe20wk12e39djwqﬂ9edj29jd29k29ks92je29ej39ej3\n*ERROR 440* ...... ICMP initiated")
					ATTACK()
					HELP()
					ENDDIALOG() 
				else
					SAY("\nij42o3jk2oirjfeijr3oj3ifjipdjpse4343323k2orjeo2jwe20wk12e39djwqﬂ9edj29jd29k29ks92je29ej39ej3\nij42o3jk2oirjfeijr3oj3ifjipdjpse4343323k2orjeo2jwe20wk12e39djwqﬂ9edj29jd29k29ks92je29ej39ej3\n*ERROR 441* ...... ACL not verified ")
					ENDDIALOG() 
				end
			end
	end
	end

NODE(5)
	SAY("Requesting Database Access ...... succesfull ....... Preparing Database ...... successfull ...... Sytem ready ......\n"..DBNAME);
	ANSWER("       - Continue",10);
	ANSWER("       - Abort",70);

NODE(10)
	SAY("\nHigh Capacity Blueprint categories:");
--	ANSWER("       - "..GRP1,50);
	ANSWER("       - "..GRP2,93);
	ANSWER("       - "..GRP3,94);
--	ANSWER("       - "..GRP4,95);
	ANSWER("       - Abort",70);

NODE(50)
	SAY("\n"..GRP1.." - Available High Capacity Blueprints:");
--	ANSWER("       - "..SUBGRP11,90);
--	ANSWER("       - "..SUBGRP12,91);
--	ANSWER("       - "..SUBGRP13,92);
	ANSWER("       - Cancel",10);

NODE(70)
	SAY("Database Connection closing...");
	ANSWER("       - Disconnect",80);
	ANSWER("       - Cancel",0);

NODE(75)
	SAY("Cancelled .......")
	ANSWER("       - Return to Blueprint selection",10)
	ANSWER("       - Disconnect",80)

NODE(80)
	SAY("Connection closed ......."..FACNAME.." - "..FACSLOGAN);
	ENDDIALOG()

-- *****************************************************************************
-- item slots

NODE(90)
--	SAY(""..SUBGRP11.." - Available High Capacity Blueprints:");
--	ANSWER("       - "..DESC1,101);		
--	ANSWER("       - "..DESC2,102);
--	ANSWER("       - "..DESC3,103);
--	ANSWER("       - "..DESC4,104);
--	ANSWER("       - "..DESC5,105);
--	ANSWER("       - "..DESC6,106);
--	ANSWER("       - "..DESC7,107);
--	ANSWER("       - "..DESC8,108);
--	ANSWER("       - "..DESC9,109);
--	ANSWER("       - "..DESC10,110);
--	ANSWER("       - "..DESC11,111);
--	ANSWER("       - "..DESC12,112);
--	ANSWER("       - "..DESC13,113);
--	ANSWER("       - "..DESC14,114);
--	ANSWER("       - "..DESC15,115);
--	ANSWER("       - "..DESC16,116);
--	ANSWER("       - "..DESC17,117);
--	ANSWER("       - "..DESC18,118);
--	ANSWER("       - "..DESC19,119);
--	ANSWER("       - "..DESC20,120);
--	ANSWER("       - Cancel",10);

NODE(91)
--	SAY(""..SUBGRP12.." - Available High Capacity Blueprints:");
--	ANSWER("       - "..DESC21,121);
--	ANSWER("       - "..DESC22,122);
--	ANSWER("       - "..DESC23,123);
--	ANSWER("       - "..DESC24,124);
--	ANSWER("       - "..DESC25,125);
--	ANSWER("       - "..DESC26,126);
--	ANSWER("       - "..DESC27,127);
--	ANSWER("       - "..DESC28,128);
--	ANSWER("       - "..DESC29,129);
--	ANSWER("       - "..DESC30,130);
--	ANSWER("       - Cancel",10);

NODE(92)
--	SAY(""..SUBGRP13.." - Available High Capacity Blueprints:");
--	ANSWER("       - "..DESC31,131);
--	ANSWER("       - "..DESC32,132);
--	ANSWER("       - "..DESC33,133);
--	ANSWER("       - "..DESC34,134);
--	ANSWER("       - "..DESC35,135);
--	ANSWER("       - "..DESC36,136);
--	ANSWER("       - "..DESC37,137);
--	ANSWER("       - "..DESC38,138);
--	ANSWER("       - "..DESC39,139);
--	ANSWER("       - "..DESC40,140);
--	ANSWER("       - Cancel",10);

NODE(93)
	SAY("\n"..GRP2.." - Available High Capacity Blueprints:");
	ANSWER("       - "..DESC41,141);
--	ANSWER("       - "..DESC42,142);
--	ANSWER("       - "..DESC43,143);
--	ANSWER("       - "..DESC44,144);
--	ANSWER("       - "..DESC45,145);
--	ANSWER("       - "..DESC46,146);
--	ANSWER("       - "..DESC47,147);
--	ANSWER("       - "..DESC48,148);
--	ANSWER("       - "..DESC49,149);
--	ANSWER("       - "..DESC50,150);
--	ANSWER("       - "..DESC51,151);
--	ANSWER("       - "..DESC52,152);
--	ANSWER("       - "..DESC53,153);
--	ANSWER("       - "..DESC54,154);
--	ANSWER("       - "..DESC55,155);
--	ANSWER("       - "..DESC56,156);
--	ANSWER("       - "..DESC57,157);
--	ANSWER("       - "..DESC58,158);
--	ANSWER("       - "..DESC59,159);
--	ANSWER("       - "..DESC60,160);
	ANSWER("       - Cancel",10);
	
NODE(94)
	SAY("\n"..GRP3.." - Available High Capacity Blueprints:");

	ANSWER("       - "..DESC61,161);
--	ANSWER("       - "..DESC62,162);
--	ANSWER("       - "..DESC63,163);
--	ANSWER("       - "..DESC64,164);
--	ANSWER("       - "..DESC65,165);
--	ANSWER("       - "..DESC66,166);
--	ANSWER("       - "..DESC67,167);
--	ANSWER("       - "..DESC68,168);
--	ANSWER("       - "..DESC69,169);
--	ANSWER("       - "..DESC70,170);
--	ANSWER("       - "..DESC71,171);
--	ANSWER("       - "..DESC72,172);
--	ANSWER("       - "..DESC73,173);
--	ANSWER("       - "..DESC74,174);
--	ANSWER("       - "..DESC75,175);
--	ANSWER("       - "..DESC76,176);
--	ANSWER("       - "..DESC77,177);
--	ANSWER("       - "..DESC78,178);
--	ANSWER("       - "..DESC79,179);
--	ANSWER("       - "..DESC80,180);
	ANSWER("       - Cancel",10);	

-- vordefinierte leere gruppe
--NODE(95)
--	SAY("\n"..GRP4.." - Available High Capacity Blueprints:");
--	
--	ANSWER("       - "..DESC81,181);
--	ANSWER("       - "..DESC82,182);
--	ANSWER("       - "..DESC83,183);
--	ANSWER("       - "..DESC84,184);
--	ANSWER("       - "..DESC85,185);
--	ANSWER("       - "..DESC86,186);
--	ANSWER("       - "..DESC87,187);
--	ANSWER("       - "..DESC88,188);
--	ANSWER("       - "..DESC89,189);
--	ANSWER("       - "..DESC90,190);
--	ANSWER("       - "..DESC91,191);
--	ANSWER("       - "..DESC92,192);
--      ANSWER("       - "..DESC93,193);
--      ANSWER("       - "..DESC94,194);
--      ANSWER("       - "..DESC95,195);
--	ANSWER("       - "..DESC96,196);
--	ANSWER("       - "..DESC97,197);
--	ANSWER("       - "..DESC98,198);
--	ANSWER("       - "..DESC99,199);
--	ANSWER("       - Cancel",10);

-- state check !nichts ‰ndern!
NODE(101)
	if (state==node) then
		ITEMDESC=DESC1
		ITEMSLOT=SLOT1
		state=210
	end
NODE(102)
	if (state==node) then
		ITEMDESC=DESC2
		ITEMSLOT=SLOT2
		state=210
	end
NODE(103)
	if (state==node) then
		ITEMDESC=DESC3
		ITEMSLOT=SLOT3
		state=210
	end
NODE(104)
	if (state==node) then
		ITEMDESC=DESC4
		ITEMSLOT=SLOT4
		state=210
	end
NODE(105)
	if (state==node) then
		ITEMDESC=DESC5
		ITEMSLOT=SLOT5
		state=210
	end
NODE(106)
	if (state==node) then
		ITEMDESC=DESC6
		ITEMSLOT=SLOT6
		state=210
	end
NODE(107)
	if (state==node) then
		ITEMDESC=DESC7
		ITEMSLOT=SLOT7
		state=210
	end
NODE(108)
	if (state==node) then
		ITEMDESC=DESC8
		ITEMSLOT=SLOT8
		state=210
	end
NODE(109)
	if (state==node) then
		ITEMDESC=DESC9
		ITEMSLOT=SLOT9
		state=210
	end
NODE(110)
	if (state==node) then
		ITEMDESC=DESC10
		ITEMSLOT=SLOT10
		state=210
	end
NODE(111)
	if (state==node) then
		ITEMDESC=DESC11
		ITEMSLOT=SLOT11
		state=210
	end
NODE(112)
	if (state==node) then
		ITEMDESC=DESC12
		ITEMSLOT=SLOT12
		state=210
	end
NODE(113)
	if (state==node) then
		ITEMDESC=DESC13
		ITEMSLOT=SLOT13
		state=210
	end
NODE(114)
	if (state==node) then
		ITEMDESC=DESC14
		ITEMSLOT=SLOT14
		state=210
	end
NODE(115)
	if (state==node) then
		ITEMDESC=DESC15
		ITEMSLOT=SLOT15
		state=210
	end
NODE(116)
	if (state==node) then
		ITEMDESC=DESC16
		ITEMSLOT=SLOT16
		state=210
	end
NODE(117)
	if (state==node) then
		ITEMDESC=DESC17
		ITEMSLOT=SLOT17
		state=210
	end
NODE(118)
	if (state==node) then
		ITEMDESC=DESC18
		ITEMSLOT=SLOT18
		state=210
	end
NODE(119)
	if (state==node) then
		ITEMDESC=DESC19
		ITEMSLOT=SLOT19
		state=210
	end
NODE(120)
	if (state==node) then
		ITEMDESC=DESC20
		ITEMSLOT=SLOT20
		state=210
	end
NODE(121)
	if (state==node) then
		ITEMDESC=DESC21
		ITEMSLOT=SLOT21
		state=210
	end
NODE(122)
	if (state==node) then
		ITEMDESC=DESC22
		ITEMSLOT=SLOT22
		state=210
	end
NODE(123)
	if (state==node) then
		ITEMDESC=DESC23
		ITEMSLOT=SLOT23
		state=210
	end
NODE(124)
	if (state==node) then
		ITEMDESC=DESC24
		ITEMSLOT=SLOT24
		state=210
	end
NODE(125)
	if (state==node) then
		ITEMDESC=DESC25
		ITEMSLOT=SLOT25
		state=210
	end

NODE(126)
	if (state==node) then
		ITEMDESC=DESC26
		ITEMSLOT=SLOT26
		state=210
	end
NODE(127)
	if (state==node) then
		ITEMDESC=DESC27
		ITEMSLOT=SLOT27
		state=210
	end
NODE(128)
	if (state==node) then
		ITEMDESC=DESC28
		ITEMSLOT=SLOT28
		state=210
	end
NODE(129)
	if (state==node) then
		ITEMDESC=DESC29
		ITEMSLOT=SLOT29
		state=210
	end
NODE(130)
	if (state==node) then
		ITEMDESC=DESC30
		ITEMSLOT=SLOT30
		state=210
	end
NODE(131)
	if (state==node) then
		ITEMDESC=DESC31
		ITEMSLOT=SLOT31
		state=210
	end
NODE(132)
	if (state==node) then
		ITEMDESC=DESC32
		ITEMSLOT=SLOT32
		state=210
	end
NODE(133)
	if (state==node) then
		ITEMDESC=DESC33
		ITEMSLOT=SLOT33
		state=210
	end
NODE(134)
	if (state==node) then
		ITEMDESC=DESC34
		ITEMSLOT=SLOT34
		state=210
	end
NODE(135)
	if (state==node) then
		ITEMDESC=DESC35
		ITEMSLOT=SLOT35
		state=210
	end
NODE(136)
	if (state==node) then
		ITEMDESC=DESC36
		ITEMSLOT=SLOT36
		state=210
	end
NODE(137)
	if (state==node) then
		ITEMDESC=DESC37
		ITEMSLOT=SLOT37
		state=210
	end
NODE(138)
	if (state==node) then
		ITEMDESC=DESC38
		ITEMSLOT=SLOT38
		state=210
	end
NODE(139)
	if (state==node) then
		ITEMDESC=DESC39
		ITEMSLOT=SLOT39
		state=210
	end
NODE(140)
	if (state==node) then
		ITEMDESC=DESC40
		ITEMSLOT=SLOT40
		state=210
	end
NODE(141)
	if (state==node) then
		ITEMDESC=DESC41
		ITEMSLOT=SLOT41
		state=210
	end
NODE(142)
	if (state==node) then
		ITEMDESC=DESC42
		ITEMSLOT=SLOT42
		state=210
	end
NODE(143)
	if (state==node) then
		ITEMDESC=DESC43
		ITEMSLOT=SLOT43
		state=210
	end
NODE(144)
	if (state==node) then
		ITEMDESC=DESC44
		ITEMSLOT=SLOT44
		state=210
	end
NODE(145)
	if (state==node) then
		ITEMDESC=DESC45
		ITEMSLOT=SLOT45
		state=210
	end
NODE(146)
	if (state==node) then
		ITEMDESC=DESC46
		ITEMSLOT=SLOT46
		state=210
	end
NODE(147)
	if (state==node) then
		ITEMDESC=DESC47
		ITEMSLOT=SLOT47
		state=210
	end
NODE(148)
	if (state==node) then
		ITEMDESC=DESC48
		ITEMSLOT=SLOT48
		state=210
	end
NODE(149)
	if (state==node) then
		ITEMDESC=DESC49
		ITEMSLOT=SLOT49
		state=210
	end
NODE(150)
	if (state==node) then
		ITEMDESC=DESC50
		ITEMSLOT=SLOT50
		state=210
	end
NODE(151)
	if (state==node) then
		ITEMDESC=DESC51
		ITEMSLOT=SLOT51
		state=210
	end
NODE(152)
	if (state==node) then
		ITEMDESC=DESC52
		ITEMSLOT=SLOT52
		state=210
	end
NODE(153)
	if (state==node) then
		ITEMDESC=DESC53
		ITEMSLOT=SLOT53
		state=210
	end
NODE(154)
	if (state==node) then
		ITEMDESC=DESC54
		ITEMSLOT=SLOT54
		state=210
	end
NODE(155)
	if (state==node) then
		ITEMDESC=DESC55
		ITEMSLOT=SLOT55
		state=210
	end
NODE(156)
	if (state==node) then
		ITEMDESC=DESC56
		ITEMSLOT=SLOT56
		state=210
	end
NODE(157)
	if (state==node) then
		ITEMDESC=DESC57
		ITEMSLOT=SLOT57
		state=210
	end
NODE(158)
	if (state==node) then
		ITEMDESC=DESC58
		ITEMSLOT=SLOT58
		state=210
	end
NODE(159)
	if (state==node) then
		ITEMDESC=DESC59
		ITEMSLOT=SLOT59
		state=210
	end
NODE(160)
	if (state==node) then
		ITEMDESC=DESC60
		ITEMSLOT=SLOT60
		state=210
	end
NODE(161)
	if (state==node) then
		ITEMDESC=DESC61
		ITEMSLOT=SLOT61
		state=210
	end
NODE(162)
	if (state==node) then
		ITEMDESC=DESC62
		ITEMSLOT=SLOT62
		state=210
	end
NODE(163)
	if (state==node) then
		ITEMDESC=DESC63
		ITEMSLOT=SLOT63
		state=210
	end
NODE(164)
	if (state==node) then
		ITEMDESC=DESC64
		ITEMSLOT=SLOT64
		state=210
	end
NODE(165)
	if (state==node) then
		ITEMDESC=DESC65
		ITEMSLOT=SLOT65
		state=210
	end
NODE(166)
	if (state==node) then
		ITEMDESC=DESC66
		ITEMSLOT=SLOT66
		state=210
	end
NODE(167)
	if (state==node) then
		ITEMDESC=DESC67
		ITEMSLOT=SLOT67
		state=210
	end
NODE(168)
	if (state==node) then
		ITEMDESC=DESC68
		ITEMSLOT=SLOT68
		state=210
	end
NODE(169)
	if (state==node) then
		ITEMDESC=DESC69
		ITEMSLOT=SLOT69
		state=210
	end
NODE(170)
	if (state==node) then
		ITEMDESC=DESC70
		ITEMSLOT=SLOT70
		state=210
	end
NODE(171)
	if (state==node) then
		ITEMDESC=DESC71
		ITEMSLOT=SLOT71
		state=210
	end
NODE(172)
	if (state==node) then
		ITEMDESC=DESC72
		ITEMSLOT=SLOT72
		state=210
	end
NODE(173)
	if (state==node) then
		ITEMDESC=DESC73
		ITEMSLOT=SLOT73
		state=210
	end
NODE(174)
	if (state==node) then
		ITEMDESC=DESC74
		ITEMSLOT=SLOT74
		state=210
	end
NODE(175)
	if (state==node) then
		ITEMDESC=DESC75
		ITEMSLOT=SLOT75
		state=210
	end
NODE(176)
	if (state==node) then
		ITEMDESC=DESC76
		ITEMSLOT=SLOT76
		state=210
	end
NODE(177)
	if (state==node) then
		ITEMDESC=DESC77
		ITEMSLOT=SLOT77
		state=210
	end
NODE(178)
	if (state==node) then
		ITEMDESC=DESC78
		ITEMSLOT=SLOT78
		state=210
	end
NODE(179)
	if (state==node) then
		ITEMDESC=DESC79
		ITEMSLOT=SLOT79
		state=210
	end
NODE(180)
	if (state==node) then
		ITEMDESC=DESC80
		ITEMSLOT=SLOT80
		state=210
	end
NODE(181)
	if (state==node) then
		ITEMDESC=DESC81
		ITEMSLOT=SLOT81
		state=210
	end
NODE(182)
	if (state==node) then
		ITEMDESC=DESC82
		ITEMSLOT=SLOT82
		state=210
	end
NODE(183)
	if (state==node) then
		ITEMDESC=DESC83
		ITEMSLOT=SLOT83
		state=210
	end
NODE(184)
	if (state==node) then
		ITEMDESC=DESC84
		ITEMSLOT=SLOT84
		state=210
	end
NODE(185)
	if (state==node) then
		ITEMDESC=DESC85
		ITEMSLOT=SLOT85
		state=210
	end
NODE(186)
	if (state==node) then
		ITEMDESC=DESC86
		ITEMSLOT=SLOT86
		state=210
	end
NODE(187)
	if (state==node) then
		ITEMDESC=DESC87
		ITEMSLOT=SLOT87
		state=210
	end
NODE(188)
	if (state==node) then
		ITEMDESC=DESC88
		ITEMSLOT=SLOT88
		state=210
	end
NODE(189)
	if (state==node) then
		ITEMDESC=DESC89
		ITEMSLOT=SLOT89
		state=210
	end
NODE(190)
	if (state==node) then
		ITEMDESC=DESC90
		ITEMSLOT=SLOT90
		state=210
	end
NODE(191)
	if (state==node) then
		ITEMDESC=DESC91
		ITEMSLOT=SLOT91
		state=210
	end
NODE(192)
	if (state==node) then
		ITEMDESC=DESC92
		ITEMSLOT=SLOT92
		state=210
	end
NODE(193)
	if (state==node) then
		ITEMDESC=DESC93
		ITEMSLOT=SLOT93
		state=210
	end
NODE(194)
	if (state==node) then
		ITEMDESC=DESC94
		ITEMSLOT=SLOT94
		state=210
	end
NODE(195)
	if (state==node) then
		ITEMDESC=DESC95
		ITEMSLOT=SLOT95
		state=210
	end
NODE(196)
	if (state==node) then
		ITEMDESC=DESC96
		ITEMSLOT=SLOT96
		state=210
	end
NODE(197)
	if (state==node) then
		ITEMDESC=DESC97
		ITEMSLOT=SLOT97
		state=210
	end
NODE(198)
	if (state==node) then
		ITEMDESC=DESC98
		ITEMSLOT=SLOT98
		state=210
	end
NODE(199)
	if (state==node) then
		ITEMDESC=DESC99
		ITEMSLOT=SLOT99
		state=210
	end

-- ****************************************************************************
-- item download !nichts ‰ndern!
NODE(210)
	TAKEITEM(BPID)
	if (result==1) then
		SAY(""..ITEMDESC.." requested ......\n"..BPDESC.." found ...... Download in progress ...")
		 if (state==node) then _ERRORMESSAGE(" †Itemslot = "..ITEMSLOT) ;
		 end
		GIVESPECIALITEM(11992,1,ITEMSLOT)
		ANSWER("       Download complete.",10)
	else
		SAY("**Error 055** No "..BPDESC.." found")
		ANSWER("       - Abort",70)
	end
end

