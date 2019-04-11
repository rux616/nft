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
	
	NODE(1)	SAY("Encore vous? J'ai quelques petites choses à disposition, en arrière-boutique : \n ######## Optical systems - 24300nc ## precision timer EZ-1000 - 12499nc ## hightech energyweapon trigger device EX-3000 - 33900nc ## basic weapon handle HX-1000 - 12199nc ## basic mechanical trigger system MX-1000 - 19100nc ## advanced mechanical firing device MY-2000 - 63000nc ## electronical triggerdevice MK-33 - 11300nc ## subliminal autotargeting device SX-1 - 43999nc ## advanced autonome gyroscope system H-12 - 69000nc ## third level barrel BX-3000 - 45000nc \n ###########") 
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
		ANSWER("Eh ben, c'est pas donné...", 10)
		ANSWER("Rien, merci... Vous avez de chouettes trucs ici.", 11)
		ANSWER("J'ai jamais vu certains trucs ailleurs... A quoi est-ce que ça sert?", 12)
	
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
		SAY("Désolé, je n'en ai plus en stock.")
		ANSWER("Pas très grave. J'en voulais un pour l'étudier, je n'en ai jamais trouvé autre part qu'ici.", 11)
		ANSWER("Vous savez où je pourrais en trouver?", 13)
		
	NODE(9)
		SAY("Désolé, je n'en ai plus. A une prochaine fois.")
		ENDDIALOG()
	
	NODE(10)
		SAY("Oui, mais si vous n'avez pas d'argent vous me faites perdre mon temps. Au revoir.")
		ENDDIALOG()
	
	NODE(11)
		SAY("Oui, et je suis très fier d'être le seul du coin à en vendre. Mais il y a certaines choses que je ne peux pas vendre.")
		ANSWER("Vous voulez dire que vous ne les avez pas, ou que vous n'en avez pas l'autorisation?", 17)
	
	NODE(12)
		SAY("Ce sont des runners qui m'apportent ça de temps en temps, je sais pas trop à quoi ça peut servir. Parfois ils m'apportent des trucs intéressants, et je sais quoi en faire. Et comme je suis le seul à vendre ces machins, je les vends au prix que je veux.O")
		ANSWER("Et d'où proviennent ces trucs?", 13)
	
	--path 1 of mission getting	
	NODE(13)
		SAY("D'un endroit à ma connaissance, un endroit très dangereux. Si vous voulez y aller, vous voudrez peut-être me rendre un petit service en passant?")
		ANSWER("Nous y voilà, vous voulez que je vous refasse votre stock! Il faut que je risque ma peau, donc?", 14)
	
	NODE(14)
		SAY("Rapide en déduction, dites! En effet, c'est de ça que j'ai besoin. Pour 150.000 Nc, vous allez bien me rendre ce petit service, non?")
		ANSWER("Pas question, c'est pas assez.", 15)
		ANSWER("Ca m'a l'air bien. Topez la!", 16)
	
	NODE(15)
		SAY("Alors arrêtez de me faire perdre mon temps.")
		ENDDIALOG()
	
	NODE(16)
		SAY("Attendez, attendez, c'est plutôt dangereux! Là-bas, il y a des warbots plus grands que les modèles Titan, et si vous faites pas attention, vous allez crever comme un chien...")
		ANSWER("Je me débrouille pas trop mal, et je connais des gens qui pourront me donner un coup de main.", 45)
		ANSWER("Plus gros qu'un Titan? Ca existe? Ok, je lâche l'affaire alors.", 15)
	
	
	--path 2 of mission getting
	NODE(17)
		SAY("Pas le droit? Vous déraillez, dans les terres brûlées on peut tout faire! Nan, si j'en vends pas, c'est simplement parce que j'en ai pas. D'ailleurs, vous pourriez me donner un coup de main, tant que vous êtes là. Ca vous tenterait?")
		ANSWER("Possible, mais j'ai jamais vraiment fait ce genre de boulot avant.", 18)
		
	NODE(18)
		SAY("C'est pas très difficile à trouver, à part qu'il va falloir combattre pour. Ah au fait, la paie est bonne.")
		ANSWER("Combattre? Ca me plaît.", 19)
		
	NODE(19)
		SAY("Ouais, et ça paie bien, je vous dis. Vous allez vous taper les plus gros machins qu'on a jamais vu sur cette pauvre terre.")
		ANSWER("Je connais les Titans, je m'en fais en claquant des doigts...", 20)
		ANSWER("Plus gros qu'un Titan?", 20)
		
	NODE(20)
		SAY("Hahaha, c'est beaucoup plus gros qu'un Titan, et ça fait beaucoup plus mal. Vous allez en baver, c'est moi qui vous le dis.")
		ANSWER("Hmm c'est peut-être un peu trop gros alors.", 21)
		ANSWER("Super, j'ai envie d'essayer ça et de toucher mon pognon, alors dites-moi où je peux les trouver, et ce que vous allez me payer pour ça.", 22)
	
	NODE(21)
		SAY("Si vous êtes pas assez doué pour vous les taper, pas la peine de rester là à me pomper à l'air.")
		ENDDIALOG()
	
	NODE(22)
		SAY("Ok, écoutez un peu ça. Je vous offre 150.000 Nc si vous me ramenez 1 electronical triggerdevice v 0.1.1 , 1 subliminal targeting v 0.2.5 et 1 advanced autonome gyroscope system v 0.1.9")
		ANSWER("Pourquoi pas. Allez, c'est parti.",  45)
	
	
	
	
	
	
	
	
	
	
	
	--entrance description	
	NODE(45)	
		SAY("Les warbots que vous devez descendre se trouvent dans l'ancienne usine de warbots du Dôme, dans les ruines là-bas. L'entrée est cachée. Attention, préparez-vous avant d'y aller, c'est très dangereux.")
		ANSWER("Oui c'est bon j'ai compris, vous allez pas le répéter cent fois. J'y vais!!", 49) 	
	
	
	
	--*** starting mission here/accept mission 
	NODE(49)
		SAY("Bonne chance à vous.")
		
		
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
								
				SAY("Oh quelle merveille! Merci beaucoup. Dites, ca vous intéresse, une arme un peu spéciale?")
				
				ANSWER("Bien sûr, quel genre d'arme?", 52)
				ANSWER("Non merci, j'ai besoin de rien.", 51)
								
			else
				-- he did not have the parts with him 
				SAY("Il vous manque quelque chose.")
				ENDDIALOG()
			end
		
		else
			--he has done the first mission already
			SAY("Une arme un peu spéciale, ça vous tente?")
			ANSWER("Bien sûr, quel genre d'arme?", 52)
			ANSWER("Non merci, j'ai besoin de rien.", 51)
								
		
		end
		
		
	-- no secondary mission
	NODE(51)
		ACTIVATEDIALOGTRIGGER(sec_goal_flag)
		SAY("Ok merci, amusez-vous bien.")
		ENDDIALOG()
	
	-- secondary mission description
	NODE(52)
		SAY("A la bonne heure. Je peux vous fabriquer un pistolet spécial, mais il vous faut des composants et aussi du pognon.")
		
		ANSWER("Quel genre de pistolet?", 53)
		ANSWER("J'ai pas le temps, l'ami...", 51)
	
	NODE(53)
		SAY("On l'appelle le Juggernaut Crossbow pistol. Il a un système de lunette intégrée, c'est un pistolet à longue portée.") 
		ANSWER("Ca m'a l'air pas mal du tout, il m'en faut un! De quoi est-ce que vous avez besoin?", 54)
		ANSWER("Les pistolets c'est pas mon truc.", 51)
	
	NODE(54)
		SAY("Il me faut 2 Construction Slotenhancer v1.5 en paiement, et 2 Tangent Weaponpart 9 et 10 pour la construction en elle-même.")
		ANSWER("Dites, c'est pas donné, j'espère au moins que ça vaut le coup!",  55)
		ANSWER("Trop cher...", 51) 
		
	NODE(55)
		SAY("Ah ça, pour valoir le coup...! Je suis le seul à construire cette arme!")
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
								
				SAY("Merci. Voilà le pistolet.")
				ENDDIALOG()
								
			else
				-- he did not have the parts with him 
				SAY("Vous n'avez pas tout ce qu'il faut.")
				ENDDIALOG()
			end
		
		else
			SAY("Désolé, j'ai plus besoin de vous...")
			ENDDIALOG()					
		
		end
		
end

