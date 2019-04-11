-- **************************************
-- * Missionscript for                  *
-- * Dome of York Quest 		*
-- * „Danger from the Desert“		*
-- **************************************

-- special edittion - testserver

-- NPCs: 
--   Sandra Lacroix	Briefing: 0, Checking 50,
mission_id = 3803		-- index to missionbase.def

--   CityAdmin, 44th Special Forces Division, Commanding Officer
dogtag1_id = 11023
--   CityAdmin, 44th Special Forces Division, Corporal 
dogtag2_id = 11024

-- Mission Targets:
--   1. Gain Dogtags of NPCs b-c
prim_goal_flag = 0
--   2.4 Groups of the Corporals = 4x	
sec_goal_flag = 1
-- both targets are done ... last flag so that mission is not finished 
-- before he talked to Agent Foster again
final_goal_flag = 2

-- *** Rewards:
-- primary =>
prim_goal_reward_credits = 150000
prim_goal_reward_symp = 5
prim_goal_reward_item = -1
-- secondary =>
sec_goal_reward_credits = 0
sec_goal_reward_symp = 0
sec_goal_reward_item = 10521 -- Medal: 'Guardian Democrat'

-- Anforderungen:
faction_id = 15		-- TG
min_symph = 30		

function CHECK_REQS()
	if (node==state) then
		GETFACTIONSYMPATHY(faction_id)
		if (result >= min_symph) then
			result = 1
		else
			result = 0
		end
	end
end

function CHECK_DOGTAGS()
	if (node==state) then
		TAKEITEM(dogtag1_id)
		if (result==1) then
			TAKEITEM(dogtag2_id)
			if (result==1) then
				-- all items found
				result = 1
			else
				GIVEITEM(dogtag1_id)
				result = 0 
			end	
		else
			-- kein Dogtag gehabt => nix zurück
			result = 0 
		end
	end
end

function REWARD_PRIM()
	if (state==node) then
		if (prim_goal_reward_credits>0) then
			GIVEMONEY(prim_goal_reward_credits) ;
		end
		if (prim_goal_reward_symp>0) then
		end
		if (prim_goal_reward_item>0) then
			GIVEITEM(prim_goal_reward_item) ;
		end
	end
end

function REWARD_SEC()
	if (state==node) then
		if (sec_goal_reward_credits>0) then
			GIVEMONEY(sec_goal_reward_credits) ;
		end
		if (sec_goal_reward_symp>0) then
		end
		if (sec_goal_reward_item>0) then
			GIVEITEM(sec_goal_reward_item) ;
		end
	end
end

function DEBUGMSG(text)
	_ERRORMESSAGE(text) ;
end

-- **************************************************************
-- **************************************************************
-- **************************************************************

function DIALOG()
	-- **************************** Briefing

	NODE(0)
		CHECK_REQS()
		if (result==0) then
			-- Ist nicht geeignet, also ein bissle belangloser text ... immer
			-- schön unauffällig :p
			SAY("Circulez, il n'y a rien à voir.",1) ;
			ENDDIALOG()
		else 
			-- Der Char hat alle Anforderungen
			SAY("Bonjour, qu'est-ce que je peux faire pour vous?") ;
			ANSWER("Je cherche de l'action.",3) ;
			ANSWER("Vous avez du boulot pour moi?",2) ;
			ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre.",1) ;
		end
	NODE(1)
		SAY("Allez en paix.") ;
		ENDDIALOG() ;
	NODE(2)
		SAY("Du boulot? Vous êtes tombé sur la bonne personne. On pourrait vous confier quelque chose de consistant, si vous voulez.") ;
		ANSWER("Ca m'a l'air intéressant. Ca parle de quoi?",3) ;
	NODE(3)
		SAY("Après les dernières attaques, CityAdmin a renforcé sa pression sur le Dôme. Plusieurs unités S.T.O.R.M. se rassemblent, et constituent une menace à prendre au sérieux.") ;
		ANSWER("Je confirme, j'en ai vu qui patrouillaient pas loin d'ici.",4)
	NODE(4)
		SAY("Certains runners ont remarqué que dans certains de ces groupes, il y avait des officiers spéciaux. On pense que lorsque chacun de ces groupes aura un officier, ils tenteront d'envahir le Dôme.") ;
		ANSWER("Continuez.",5) ;
	NODE(5)
		SAY("Nos troupes sont soit sur d'autres fronts, soit en récupération avant de partir pour une nouvelle mission. Il nous faut quelqu'un pour s'occuper du problème. Si vous nous aidez, soyez certains que nous ne vous oublierons pas.") ;
		ANSWER("Mouais... Trop gros pour moi.",7) ;
		ANSWER("Considérez le problème résolu.",6)
	NODE(6)
		SAY("Bonne chasse, et à bientôt j'espère.")	;
		STARTMISSION(mission_id)			-- ok accepted
		SETNEXTDIALOGSTATE(50)				-- next time just check if he has done the missions
		ENDDIALOG()			
	NODE(7)
		SAY("C'est comme vous voulez. Quelqu'un d'autre saisira l'opportunité, et les honneurs qui vont avec.") ;
		ENDDIALOG()			
		
	-- ************************* Checking 
	
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(prim_goal_flag)
		if (result==1) then
			CHECK_DOGTAGS()
			if (result==1) then
				-- all DogTags were there, all were taken
				SAY("Je vois que vous avez fait du bon travail.") ;
				REWARD_PRIM() ;
				ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
				ANSWER("C'était pas facile, mais j'ai réussi. Je crois que maintenant vous êtes tranquilles.",51) ;
				ANSWER("je n'ai pu tuer que les officiers. Mais je vais continuer sur les autres groupes.",52) ;
			else
				-- not all Dogtags
				SAY("Ils sont costauds, hein?") ;
				ENDDIALOG()
			end	
		else
			-- prim goal was done previous
			-- not repeatable within one run
			state = 51 ;
			-- = continue with node 51 (only works if node 51 is defined after this node)
		end
	NODE(51)
		ISMISSIONTARGETACCOMPLISHED(sec_goal_flag) ;
		if (result==1) then
			-- secondary goal accomplished
			SAY("Beau travail.") ;
			ANSWER("What now, don't you think you should pay me some extra ? I mean comeon, i killed them all!",53) 
		else
			-- failed on the secondary goal.
			SAY("Ils sont costauds, hein?") ;
			ENDDIALOG()
		end
	NODE(52)
		SAY("Je ne bouge pas.") ;
		ENDDIALOG()
	NODE(53)
		SAY("Du calme, allons... J'ai quelque chose pour vous. Aujourd'hui, vous avez montré à la rébellion que vous agissiez dans son sens. J vais parler de vous en haut lieu. Que diriez-vous de rejoindre les Gardiens du Crépuscule ?") ;
		ANSWER("Pas question!",54) ;
		ANSWER("Je pourrais? Ca serait extraordinaire!",55) ;
	NODE(54)
		-- he does not want to change faction
		SAY("Alors tirez-vous, et en vitesse!") 
		ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
		ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
	NODE(55)		
		SAY("Bienvenue chez les Gardiens du Crépuscule. Permettez-moi de vous décerner cette médaille.") ;
		CHANGEFACTION(faction_id) ;	-- make him CityAdmin (will fail if clanned) then he cant give the medal
		if (result==0) then
			sec_reward_item = -1 ;  -- no item in this if hes now not CA
		end
		REWARD_SEC() ;
		-- finish this quest
		ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
		ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
end
