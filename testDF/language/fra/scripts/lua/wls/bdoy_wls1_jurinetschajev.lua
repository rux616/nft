-- **********************************
-- Scenario "The Juggernaut Crossbow"
-- v2.05
-- Author: HQuint
-- **********************************

-- Basic Structure

-- Info:
-- NPC: Questgiver: NODE(0) - REWARDGIVER: NODE(50)
-- Description IDs 11102 / 11103

missionid1 = 3805



-- Definitions
-- *** Rewards
prim_goal_reward_credits = 150000 ;	-- 150k credits
prim_goal_reward_item = -1 ;		-- no item
sec_goal_reward_credits = 0 ;		-- no credits
sec_goal_reward_item = 11006 ; 		-- juggernaut crossbow pistol

-- *** FlagIDs
prim_goal_flag = 0 ;
sec_goal_flag = 0 ;

-- *** ItemIDs

-- "Electronical Triggerdevice v 0.1.1"
-- "Subliminal Targeting v 0.2.5"
-- "Advanced Autonome Gyroscope System v 0.1.9"
-- "Tangent Weaponpart 9"
-- "Tangent Weaponpart 10"
-- "Construction Slotenhancer v1.5"

constpart01 = 11003 ;
constpart02 = 11004 ;
constpart03 = 11005 ;
constpart04 = 5209 ;
constpart05 = 5210 ;
constpart06 = 3632 ;

-- functions
-- *********

function CHECKPARTS(missionstatus)
	if (state==node) then
		itemshere = 0 ;
		itemshere2 = 0 ;
		resultpre = 0 ;
		
		--mission part 1
		if (missionstatus==1) then
			TAKEITEM(constpart01)
			itemshere = result
			TAKEITEM(constpart02)
			itemshere = (result*2) + itemshere
			TAKEITEM(constpart03)
			itemshere = (result*4) + itemshere
			
			if (itemshere == 7) then 
				result = 1
			else
				result = 0
				-- give him his items back if not all there
				if (itemshere == 1) then
					GIVEITEM(constpart01)
				elseif (itemshere == 2) then
					GIVEITEM(constpart02)
				elseif (itemshere == 3) then
					GIVEITEM(constpart01)
					GIVEItEM(constpart02)
				elseif (itemshere == 4) then
					GIVEITEM(constpart03)
				elseif (itemshere == 5) then
					GIVEITEM(constpart01)
					GIVEITEM(constpart03)
				elseif (itemshere == 6) then
					GIVEITEM(constpart02)
					GIVEITEM(constpart03)
				end
			end
			
		end
		
		-- mission part 2
		if (missionstatus==2) then
			TAKEITEMCNT(constpart04, 1)
			itemshere = result
			TAKEITEMCNT(constpart04, 1)
			itemshere2 = result
			
			TAKEITEMCNT(constpart05, 1)
			itemshere = (result*2) + itemshere
			TAKEITEMCNT(constpart05, 1)
			itemshere2 = (result*2) + itemshere2
			
			
			TAKEITEMCNT(constpart06, 1)
			itemshere = (result*4) + itemshere
			TAKEITEMCNT(constpart06, 1)
			itemshere2 = (result*4) + itemshere2

			if (itemshere == 7) then 
				resultpre = 1
			else
				result = 0
				-- give him his items back if not all there
				if (itemshere == 1) then
					GIVEITEM(constpart04)
				elseif (itemshere == 2) then
					GIVEITEM(constpart05)
				elseif (itemshere == 3) then
					GIVEITEM(constpart04)
					GIVEItEM(constpart05)
				elseif (itemshere == 4) then
					GIVEITEM(constpart06)
				elseif (itemshere == 5) then
					GIVEITEM(constpart04)
					GIVEITEM(constpart06)
				elseif (itemshere == 6) then
					GIVEITEM(constpart05)
					GIVEITEM(constpart06)
				end
			end
			
			--check for the second items 
			if (itemshere2 == 7) then 
				resultpre = 1 + resultpre
			else
				result = 0
				-- give him his items back if not all there
				if (itemshere2 == 1) then
					GIVEITEM(constpart04)
				elseif (itemshere2 == 2) then
					GIVEITEM(constpart05)
				elseif (itemshere2 == 3) then
					GIVEITEM(constpart04)
					GIVEItEM(constpart05)
				elseif (itemshere2 == 4) then
					GIVEITEM(constpart06)
				elseif (itemshere2 == 5) then
					GIVEITEM(constpart04)
					GIVEITEM(constpart06)
				elseif (itemshere2 == 6) then
					GIVEITEM(constpart05)
					GIVEITEM(constpart06)
				end
			end
				
			--check the back result
			if (resultpre == 2) then
				result = 1
			else
				result = 0
			end
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
			if (sec_goal_reward_credits>0) then
				GIVEMONEY(sec_goal_reward_credits) ;
			end
			if (sec_goal_reward_item>-1) then
				GIVEITEM(sec_goal_reward_item) ;
			end
		end
	end
end

-- DIALOG
-- ******

function DIALOG()
	-- junk dealer bla bla
	NODE(0)
		SAY("Bonjour runner, bienvenue dans mon petit campement de recyclage.")
		SETNEXTDIALOGSTATE(1)
		TRADE()
	
	NODE(1)	SAY("Encore vous? J'ai quelques petites choses � disposition, en arri�re-boutique : \n ######## Optical systems - 24300nc ## precision timer EZ-1000 - 12499nc ## hightech energyweapon trigger device EX-3000 - 33900nc ## basic weapon handle HX-1000 - 12199nc ## basic mechanical trigger system MX-1000 - 19100nc ## advanced mechanical firing device MY-2000 - 63000nc ## electronical triggerdevice MK-33 - 11300nc ## subliminal autotargeting device SX-1 - 43999nc ## advanced autonome gyroscope system H-12 - 69000nc ## third level barrel BX-3000 - 45000nc \n ###########") 
		ANSWER("Un optical systems", 2)
		ANSWER("Un precision timer EZ-1000", 3)
		ANSWER("Un hightech energyweapon trigger device EX-3000", 4)
		ANSWER("Un basic weapon handle HX-1000", 5)
		ANSWER("Un basic mechanical trigger system MX-1000", 6)
		ANSWER("Un advanced mechanical firing device MY-2000", 7)
		ANSWER("Un electronical triggerdevice MK-33", 8)
		ANSWER("Un subliminal autotargeting device SX-1", 8)
		ANSWER("Un advanced autonome gyroscope system H-12", 8)
		ANSWER("Un third level barrel BX-3000", 9)
		ANSWER("Eh ben, c'est pas donn�...", 10)
		ANSWER("Rien, merci... Vous avez de chouettes trucs ici.", 11)
		ANSWER("J'ai jamais vu certains trucs ailleurs... A quoi est-ce que �a sert?", 12)
	
	NODE(2)
		TAKEMONEY(24300)
		GIVEITEM(202)
		SAY("Tenez.")
		ENDDIALOG()
	
	NODE(3)
		TAKEMONEY(12499)
		GIVEITEM(203)
		SAY("Tenez.")
		ENDDIALOG()
		
	NODE(4)
		TAKEMONEY(33900)
		GIVEITEM(208)
		SAY("Tenez.")
		ENDDIALOG()
	
	NODE(5)
		TAKEMONEY(12199)
		GIVEITEM(215)
		SAY("Tenez.")
		ENDDIALOG()
	
	NODE(6)
		TAKEMONEY(19100)
		GIVEITEM(218)
		SAY("Tenez.")
		ENDDIALOG()
	
	NODE(7)
		TAKEMONEY(63000)
		GIVEITEM(222)
		SAY("Tenez.")
		ENDDIALOG()
	
	NODE(8)
		SAY("D�sol�, je n'en ai plus en stock.")
		ANSWER("Pas tr�s grave. J'en voulais un pour l'�tudier, je n'en ai jamais trouv� autre part qu'ici.", 11)
		ANSWER("Vous savez o� je pourrais en trouver?", 13)
		
	NODE(9)
		SAY("D�sol�, je n'en ai plus. A une prochaine fois.")
		ENDDIALOG()
	
	NODE(10)
		SAY("Oui, mais si vous n'avez pas d'argent vous me faites perdre mon temps. Au revoir.")
		ENDDIALOG()
	
	NODE(11)
		SAY("Oui, et je suis tr�s fier d'�tre le seul du coin � en vendre. Mais il y a certaines choses que je ne peux pas vendre.")
		ANSWER("Vous voulez dire que vous ne les avez pas, ou que vous n'en avez pas l'autorisation?", 17)
	
	NODE(12)
		SAY("Ce sont des runners qui m'apportent �a de temps en temps, je sais pas trop � quoi �a peut servir. Parfois ils m'apportent des trucs int�ressants, et je sais quoi en faire. Et comme je suis le seul � vendre ces machins, je les vends au prix que je veux.O")
		ANSWER("Et d'o� proviennent ces trucs?", 13)
	
	--path 1 of mission getting	
	NODE(13)
		SAY("D'un endroit � ma connaissance, un endroit tr�s dangereux. Si vous voulez y aller, vous voudrez peut-�tre me rendre un petit service en passant?")
		ANSWER("Nous y voil�, vous voulez que je vous refasse votre stock! Il faut que je risque ma peau, donc?", 14)
	
	NODE(14)
		SAY("Rapide en d�duction, dites! En effet, c'est de �a que j'ai besoin. Pour 150.000 Nc, vous allez bien me rendre ce petit service, non?")
		ANSWER("Pas question, c'est pas assez.", 15)
		ANSWER("Ca m'a l'air bien. Topez la!", 16)
	
	NODE(15)
		SAY("Alors arr�tez de me faire perdre mon temps.")
		ENDDIALOG()
	
	NODE(16)
		SAY("Attendez, attendez, c'est plut�t dangereux! L�-bas, il y a des warbots plus grands que les mod�les Titan, et si vous faites pas attention, vous allez crever comme un chien...")
		ANSWER("Je me d�brouille pas trop mal, et je connais des gens qui pourront me donner un coup de main.", 45)
		ANSWER("Plus gros qu'un Titan? Ca existe? Ok, je l�che l'affaire alors.", 15)
	
	
	--path 2 of mission getting
	NODE(17)
		SAY("Pas le droit? Vous d�raillez, dans les terres br�l�es on peut tout faire! Nan, si j'en vends pas, c'est simplement parce que j'en ai pas. D'ailleurs, vous pourriez me donner un coup de main, tant que vous �tes l�. Ca vous tenterait?")
		ANSWER("Possible, mais j'ai jamais vraiment fait ce genre de boulot avant.", 18)
		
	NODE(18)
		SAY("C'est pas tr�s difficile � trouver, � part qu'il va falloir combattre pour. Ah au fait, la paie est bonne.")
		ANSWER("Combattre? Ca me pla�t.", 19)
		
	NODE(19)
		SAY("Ouais, et �a paie bien, je vous dis. Vous allez vous taper les plus gros machins qu'on a jamais vu sur cette pauvre terre.")
		ANSWER("Je connais les Titans, je m'en fais en claquant des doigts...", 20)
		ANSWER("Plus gros qu'un Titan?", 20)
		
	NODE(20)
		SAY("Hahaha, c'est beaucoup plus gros qu'un Titan, et �a fait beaucoup plus mal. Vous allez en baver, c'est moi qui vous le dis.")
		ANSWER("Hmm c'est peut-�tre un peu trop gros alors.", 21)
		ANSWER("Super, j'ai envie d'essayer �a et de toucher mon pognon, alors dites-moi o� je peux les trouver, et ce que vous allez me payer pour �a.", 22)
	
	NODE(21)
		SAY("Si vous �tes pas assez dou� pour vous les taper, pas la peine de rester l� � me pomper � l'air.")
		ENDDIALOG()
	
	NODE(22)
		SAY("Ok, �coutez un peu �a. Je vous offre 150.000 Nc si vous me ramenez 1 electronical triggerdevice v 0.1.1 , 1 subliminal targeting v 0.2.5 et 1 advanced autonome gyroscope system v 0.1.9")
		ANSWER("Pourquoi pas. Allez, c'est parti.",  45)
	
	
	
	
	
	
	
	
	
	
	
	--entrance description	
	NODE(45)	
		SAY("Les warbots que vous devez descendre se trouvent dans l'ancienne usine de warbots du D�me, dans les ruines l�-bas. L'entr�e est cach�e. Attention, pr�parez-vous avant d'y aller, c'est tr�s dangereux.")
		ANSWER("Oui c'est bon j'ai compris, vous allez pas le r�p�ter cent fois. J'y vais!!", 49) 	
	
	
	
	--*** starting mission here/accept mission 
	NODE(49)
		SAY("Bonne chance � vous.")
		
		
		STARTMISSION(missionid1) ;
		SETNEXTDIALOGSTATE(50) ;
		ENDDIALOG() ;
		
	-- *** This is after he accepted everytime he returns
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(prim_goal_flag) ;
		if (result==1) then
			-- checking if he has the parts
			
			CHECKPARTS(1)
			if (result==1) then
				-- he has all 3 parts with him
				-- so he did the prim goal
				GIVEREWARD(0) ;
				-- ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
								
				SAY("Oh quelle merveille! Merci beaucoup. Dites, ca vous int�resse, une arme un peu sp�ciale?")
				
				ANSWER("Bien s�r, quel genre d'arme?", 52)
				ANSWER("Non merci, j'ai besoin de rien.", 51)
								
			else
				-- he did not have the parts with him 
				SAY("Il vous manque quelque chose.")
				ENDDIALOG()
			end
		
		else
			--he has done the first mission already
			SAY("Une arme un peu sp�ciale, �a vous tente?")
			ANSWER("Bien s�r, quel genre d'arme?", 52)
			ANSWER("Non merci, j'ai besoin de rien.", 51)
								
		
		end
		
		
	-- no secondary mission
	NODE(51)
		ACTIVATEDIALOGTRIGGER(sec_goal_flag)
		SAY("Ok merci, amusez-vous bien.")
		ENDDIALOG()
	
	-- secondary mission description
	NODE(52)
		SAY("A la bonne heure. Je peux vous fabriquer un pistolet sp�cial, mais il vous faut des composants et aussi du pognon.")
		
		ANSWER("Quel genre de pistolet?", 53)
		ANSWER("J'ai pas le temps, l'ami...", 51)
	
	NODE(53)
		SAY("On l'appelle le Juggernaut Crossbow pistol. Il a un syst�me de lunette int�gr�e, c'est un pistolet � longue port�e.") 
		ANSWER("Ca m'a l'air pas mal du tout, il m'en faut un! De quoi est-ce que vous avez besoin?", 54)
		ANSWER("Les pistolets c'est pas mon truc.", 51)
	
	NODE(54)
		SAY("Il me faut 2 Construction Slotenhancer v1.5 en paiement, et 2 Tangent Weaponpart 9 et 10 pour la construction en elle-m�me.")
		ANSWER("Dites, c'est pas donn�, j'esp�re au moins que �a vaut le coup!",  55)
		ANSWER("Trop cher...", 51) 
		
	NODE(55)
		SAY("Ah �a, pour valoir le coup...! Je suis le seul � construire cette arme!")
		ANSWER("Compris, je vais vous chercher ce dont vous avez besoin.", 100)
			
		
		
		
	
			
		
	-- mission part 2 
	NODE(100)
		SAY("Je bouge pas, je vous attend.")
		
		SETNEXTDIALOGSTATE(101) ;
		ENDDIALOG();
		
	NODE(101)
		ISMISSIONTARGETACCOMPLISHED(sec_goal_flag) ;
		if (result==0) then
			-- checking if he has the parts
			
			CHECKPARTS(2)
			if (result==1) then
				-- he has all 6 parts with him
				GIVEREWARD(1) ;
				ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
								
				SAY("Merci. Voil� le pistolet.")
				ENDDIALOG()
								
			else
				-- he did not have the parts with him 
				SAY("Vous n'avez pas tout ce qu'il faut.")
				ENDDIALOG()
			end
		
		else
			SAY("D�sol�, j'ai plus besoin de vous...")
			ENDDIALOG()					
		
		end
		
end

