-- **************************************
-- * Missionscript for                  *
-- * Scenario �Guardian Recon Stations�	*
-- **************************************

-- NPCs: 
--   Agent Foster	Briefing: 0, Checking 50,
mission_id = 3802		-- index to missionbase.def

--   Signal Intelligence Officer Gordon Herald
dogtag1_id = 11019
--   Signal Intelligence Officer Isabelle Renard
dogtag2_id = 11020
--   Signal Intelligence Officer Morten Ludvigsen
dogtag3_id = 11021
--   Signal Intelligence Officer Lambros Theodorou
dogtag4_id = 11022

-- Mission Targets:
--   1. Gain Dogtags of NPCs b-e
prim_goal_flag = 0
--   2. Kill all TG Guards inside. 16x
sec_goal_flag = 1
-- both targets are done ... last flag so that mission is not finished 
-- before he talked to Agent Foster again
final_goal_flag = 2

-- *** Rewards:
-- primary =>
prim_goal_reward_credits = 150000
prim_goal_reward_symp = 5 -- still need sthg so i can add factionloyality of not main faction
prim_goal_reward_item = -1
-- secondary =>
sec_goal_reward_credits = 0
sec_goal_reward_symp = 0
sec_goal_reward_item = 10500 -- Golden Eagle Medal (CA Medal lvl 1)

-- Anforderungen:
faction_id = 1
min_symph = 10

function CHECK_REQS()
	if (node==state) then
		DOYALIGNMENT()
		if (result==1) then
			-- DoYler ist ok
		else
			result = -2
			return
		end
		GETFACTIONSYMPATHY(faction_id)
		if (result >= min_symph) then
			result = 1
		elseif (result<0) then
			result = -1
		else
			result = 0
		end
	end
end

function CHECK_DOGTAGS()
	if (node==state) then
		TAKEITEM(dogtag1_id) ;
		took1 = result ;
		TAKEITEM(dogtag2_id) ;
		took2 = result ;
		TAKEITEM(dogtag3_id) ;
		took3 = result ;
		TAKEITEM(dogtag4_id) ;
		took4 = result ;
		count = took1+took2+took3+took4 ;
		if (count<4) then
			-- not all dogtags here
			commata = 0 ;
			missingtext = "Mes sources m'ont signal� que"
			if (took1==1) then 
				GIVEITEM(dogtag1_id) ;
			else
				missingtext = missingtext.." Gordon Herald"
				commata = 1 ;
			end
			if (took2==1) then
				GIVEITEM(dogtag2_id) ;
			else
				if (commata==1) then
					missingtext = missingtext..","
				end
				missingtext = missingtext.." Isabelle Renard"
				commata = 1 ;
			end
			if (took3==1) then
				GIVEITEM(dogtag3_id) ;
			else
				if (commata==1) then
					missingtext = missingtext..","
				end
				missingtext = missingtext.." Morten Ludvigsen"
				commata = 1 ;
			end
			if (took4==1) then
				GIVEITEM(dogtag4_id) ;
			else
				if (commata==1) then
					missingtext = missingtext..","
				end
				missingtext = missingtext.." Lambros Theodorou"
				commata = 1 ;
			end
			if (count>1) then
				missingtext = missingtext.." sont encore en vie"
			else
				missingtext = missingtext.." est encore en vie"
			end
			-- tell mainscript that fact
			result = 0 ;
		else
			result = 1 ;
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

	-- ToDo
	-- Tell of possible reward of change faction

	-- **************************** Briefing

	NODE(0)
		CHECK_REQS()
		if (result==0) then
			-- Ist nicht geeignet, also ein bissle belangloser text ... immer
			-- sch�n unauff�llig :p
			SAY("Il fait beau aujourd'hui, vous trouvez pas?",1) ;
			ANSWER("Ouais... Allez, � la prochaine.",1) ;
			ANSWER("La ferme, ou je t'�clate!",1) ;
			ANSWER("Fiche-moi la paix.",1) ;
		elseif (result==-1) then 
			-- Char ist feindlich gesinnt (neg. Faction Symp)
			SAY("Tu vas devoir me tuer, aucune chance que je te dise quoi que ce soit.\nVa te faire foutre!") ;
			ATTACK() ;
			ENDDIALOG() ;
		elseif (result==-2) then
			-- Char ist bereits pro NC
			SAY("Vive Neocron!") ;
			ENDDIALOG() ;
		else 
			-- Der Char hat alle Anforderungen
			SAY("*chuchote* Hep, toi...") ;
			ANSWER("Oui l'ami, qu'est-ce qu'il y a?",2) ;
			ANSWER("OUI?",2) ;
			ANSWER("Fiche-moi la paix.",1) ;
		end
	NODE(1)
		-- hat keine interesse oder darfs nicht h�ren => m�glichst unauff�llig ausm staub machen
		SAY("Oh mon dieu, je viens de me rendre compte que j'ai oubli� d'�teindre mon four! *s'enfuit en courant*") ;
-- CAUTION! CRASHES SERVER!		REMOVE() ;	-- disappear (till he respawns)
		ENDDIALOG() ;
	NODE(2)
		-- ok he showed interest, but is attrackting other ppl
		SAY("psssst. *regarde � gauche et � droite*  Pas si fort...") ;
		ANSWER("Je parle comme je veux parler!",3) ;
		ANSWER("Ok, ok... C'est mieux?",4) ;
		ANSWER("*regarde aux alentours d'un air d�tach�* Beau temps pour la saison, non?",5) ;
	NODE(3)
		-- ouch, that aint a good agent ... too egocentric
		-- sch�n unauff�llig :p
		SAY("Beau temps pour la saison, hein?",1) ;
		ANSWER("Ouais... Allez, � la prochaine.",1) ;
		ANSWER("La ferme, ou je t'�clate!",1) ;
		ANSWER("Fiche-moi la paix.",1) ;
	NODE(4)
		-- asks if he wants to earn a bit
		SAY("Vous voulez gagner de l'argent rapidement?") ;
		ANSWER("Ca d�pend, il faut faire quoi?",6) ;
		ANSWER("Je dois tuer qui?",13) ;
		ANSWER("Je me fiche de l'argent. Je veux quelque chose de sp�cial.",8) ;	
	NODE(5)
		-- detailed story
		SAY("Je vais vous dire plus, mais avant il faut me promettre de ne rien dire � personne. Promis?") ;
		ANSWER("Pas question!",3) ;
		ANSWER("Promis.",9) ;
	NODE(6)
		--ok the right guy
		SAY("Il faudra parler de �a � personne. CityAdmin saura retrouver votre trace, sinon.") ;
		ANSWER("Jamais je ne causerai de tort au gouvernement.",13)
	NODE(8)
		-- false reasons to help
		SAY("Laissez tomber... A la prochaine.") ;
-- CAUTION! CRASHES SERVER!		REMOVE() ;	-- disappear (till he respawns)
		ENDDIALOG()
	NODE(9) 
		-- customer signed the NDA for full story :p
		SAY("Selon mes informateurs, le D�me a lanc� une nouvelle op�ration contre le Monde Libre. Des rumeurs parlent d'une force d'intervention sp�ciale.") ;
		ANSWER("Et que disent ces rumeurs plus pr�cis�ment?",10) ;
	NODE(10)
		SAY("Proc�dons par ordre. Ils ont suivi quatre Gardiens du Cr�puscule qui se rendaient � une r�union secr�te pr�s des portes du D�me d'York la semaine derni�re. Ils avaient des uniformes particuliers, des insignes portant l'inscription 'Officier Espionnage Radio'.") ;
		ANSWER("Poursuivez.",11) ;
	NODE(11)
		SAY("Nous en avons conclu que ces quatre officiers sont une menace r�elle pour Neocron. Il faut les �liminer.") ;
		ANSWER("Alors pourquoi vous n'allez pas leur tirer une balle dans la t�te?",12)
	NODE(12)
		SAY("Chhh pas si fort... *regarde � gauche et � droite*") ;
		ANSWER("Alors, pourquoi?",13) ;
	NODE(13)
		-- here comes the other tree in again too ... that not so detailed desc.
		SAY("La CityAdministration a d�j� envoy� plusieurs assassins s'occuper d'eux, mais ils n'ont pas r�ussi. Nous pensons que des espions infiltr�s dans leurs rangs les pr�venaient � temps, et ont tendu des embuscades � nos escouades..") ;
		ANSWER("Vous... pensez?",14) ;
	NODE(14)
		SAY("Nous n'en sommes pas s�rs. Leurs signaux ont �t� perdus, c'est tout ce que nous savons. Mais nous avons localis� les endroits de leur disparition, afin de retrouver plus rapidement leur trace.") ;
		ANSWER("Dites-moi tout.",15) ;
	NODE(15)
		SAY("Je peux vous faire confiance...? Apr�s tout je n'ai pas le choix. Je vais tout vous dire, mais rappelez-vous, vous ne devez parler de �a � personne. Et ne mentionnez m�me pas mon nom. C'est bien compris ?") ;
		ANSWER("Oui oui c'est bon, dites-moi ce que je dois savoir.",16) ;
	NODE(16)
		SAY("Les signaux ont �t� perdus dans les zones J06, C11, F03 et *regarde autour de lui* I14. C'est tout ce que je peux vous apprendre pour l'instant. Alors d�p�chez-vous, il n'y a pas de temps � perdre. On pourrait nous surprendre ensemble.")	;
		ANSWER("Je ferai de mon mieux.") ;
	NODE(17)
		SAY("Je suis certain que l'Administration saura faire preuve de gratitude � votre �gard. Si vous r�ussissez � vous charger du probl�me dans son ensemble, je pourrai sans probl�me vous obtenir une absolution pour tous les crimes que vous avez pu commettre.")	;
		STARTMISSION(mission_id)			-- ok accepted
		SETNEXTDIALOGSTATE(50)				-- next time just check if he has done the missions

		ENDDIALOG()			
		
		
	-- ************************* Checking 
	
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(prim_goal_flag)
		if (result==0) then
			CHECK_DOGTAGS()
			if (result==1) then
				-- all DogTags were there, all were taken
				SAY("Prenez un air neutre. Ils vous ont peut-�tre suivi.") ;
				REWARD_PRIM() ;
				ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
				ANSWER("Impossible, je les ai tous tu�s, haha!",51) ;
				ANSWER("Maintenant que vous me le dites... *s'enfuit*",52) ;
			else
				-- not all Dogtags
				-- tell which dogtags are still missing
				SAY(missingtext) ;
				ENDDIALOG()
			end	
		else
			-- prim goal was done previous
			-- not repeatable within one run
			if (state==node) then
				state = 51 ;
			end
			-- = continue with node 51 (only works if node 51 is defined after this node)
		end
	NODE(51)
		ISMISSIONTARGETACCOMPLISHED(sec_goal_flag) ;
		if (result==1) then
			-- secondary goal accomplished
			SAY("Enfin, ces b�tards ont eu ce qu'ils m�ritaient! *marmonne quelque chose*") ;
			ANSWER("Et maintenant, vous pensez pas que j'ai droit � un petit extra? Faites un geste, quoi, je les ai tous tu�s!",53) 
		else
			-- failed on the secondary goal.
			SAY("Ne revenez pas tant qu'ils ne sont pas tous morts. Ils me tueront s'ils apprennent qui je suis.") ;
			ENDDIALOG()
		end
	NODE(52)
-- ToDo:
-- Ask if he wants to abort, let him decide to maybe switch faction.
		
		SAY("On ne s'est jamais parl�s, souvenez-vous! *s'�loigne discr�tement*") ;
-- CAUTION! CRASHES SERVER!		REMOVE() ;	-- disappear (till he respawns)
		ENDDIALOG()
	NODE(53)
		SAY("Allons du calme, j'ai quelque chose pour vous. Aujourd'hui, vous avez fait preuve de loyaut� envers CityAdmin. Je peux parler � des gens haut plac�s, vous savez. Ca vous dirait que je vous fasse entrer chez CityAdmin?") ;
		ANSWER("Pas question!",54) ;
		ANSWER("Vous pouvez faire �a? Ca serait g�nial!") ;
	NODE(54)
		-- he does not want to change faction
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
	NODE(55)		
		SAY("Alors bienvenue � Neocron. Laissez-moi vous d�cerner cette m�daille..") ;
		CHANGEFACTION(faction_id) ;	-- make him CityAdmin (will fail if clanned) then he cant give the medal
		if (result==0) then
			sec_reward_item = -1 ;  -- no item in this if hes now not CA
		end
		REWARD_SEC() ;
		-- finish this quest
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
end
