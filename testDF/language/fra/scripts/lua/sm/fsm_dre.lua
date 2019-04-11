--************************
--Faction supply manager
--v1.00
--************************

--DRE
factionid = 2

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
		result = factionsymp[factionid][targetfac] ;
	end
end

function DIALOG()

	NODE(0)
	  if (node == state) then
		INFACTION(factionid)
		if (result == 1) then
			GETFACTIONSYMPATHY(factionid)
			if (result >= 90) then 
				SAY("Bonjour et bienvenue. J'ai ce que vous cherchez.")
				ANSWER("Bonjour, qu'est ce que vous proposez?", 1)
				ANSWER("Je sais, montrez-moi votre liste s'il vous plaît.", 2) 
				ANSWER("Désolé, je me suis trompé de personne.", 10)
			else
				if (result >= 0) then
					SAY("Navré, vous n'êtes pas assez apprécié ici. Veuillez partir.")
					ENDDIALOG()		
				end
				if (result < 0) then
					SAY("VOUS ETES MORT!")
					ATTACK()
					ENDDIALOG()		
				end
			end
		else
			GETRELATION() ;
			if (result==3) then
				SAY("UN INTRUS!!")
				ATTACK()
				ENDDIALOG()
			else
				SAY("Il n'y a rien ici pour vous. Maintenant, si faites-moi le plaisir de partir, il y a des gens qui attendent.") ;
				ENDDIALOG() ;
			end
		end
	  end
	
	NODE(1)
		SAY("Je vous propose les produits réservés à notre faction.")
		ANSWER("Ah ok, montrez-moi ce que vous avez alors. Je peux avoir une liste?", 2)
	NODE(2)
		SAY("Tenez.")
		TRADE()
		ENDDIALOG()
		
	
	NODE(10)
		SAY("Pas de problème. Peut-être à une prochaine fois...")
		ENDDIALOG()
		
end