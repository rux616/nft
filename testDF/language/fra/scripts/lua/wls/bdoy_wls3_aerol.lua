-- **********************************
-- Scenario "Herbal Hunt DOY Aerol"
-- v 1.01
-- Author: HQuint
-- ************************

--mission id

missionid1 = 3801
missionid2 = 3807

-- ids of chems to be brought

-- Auxin,Mesophyll,Cytokinin,Raw Proteine

chem0_id = 11007
chem1_id = 11011
chem2_id = 11012
chem3_id = 11014

-- Abscisinacid,Gibberellin,Petiolus,Ethylen

chem4_id = 11010
chem5_id = 11008
chem6_id = 11013
chem7_id = 11009


-- ids of reward items
-- Iceflash, Iceflash Big Pack

reward1_id = 11015
reward2_id = 11016


--##########################

function DIALOG()


NODE(0)
   if (node==state) then
		
	-- anti city id is wanted
	DOYALIGNMENT()
		if (result == 1) then
			
			SAY("Tu veux quoi? J'ai plus d'Iceflash, finito!")
			ANSWER("Juste au moment où j'en avais besoin! ", 1)
			ANSWER("C'est quoi ça? J'en ai jamais entendu parler.", 5)
			ANSWER("Tais-toi, commence pas à m'énerver!", 31)	
			
		else
			
			SAY("Dégage, saloperie de Neocronien...")
			ENDDIALOG()			
			
		end
   end

-- the normal discussion path
NODE(1) 
	SAY("Je répète : j'en ai plus! Alors lâche-moi la grappe.")
	ANSWER("Allez, quoi, il m'en faut!", 2)
	ANSWER("Et si j'allongeais le blé, ça ferait avancer les choses?", 4)

NODE(2)
	SAY("Et j'en ai plus, t'es sourdingue ou quoi? Remarque... si tu me trouvais les composants, je devrais pouvoir me débrouiller.")
	ANSWER("Tu saurais en faire? Je pourrais peut-être te donner un coup de main?", 3)
	
NODE(3)	
	SAY("Oui, tu pourrais m'être utile si tu me trouvais tous les produits chimiques nécessaires.")
	ANSWER("Dis-moi ce qu'il faut, je te dirai si c'est jouable.", 7)

NODE(4)
	SAY("C'est pas du tout une question de pognon, plutôt de produits chimiques. Le genre de trucs qu'on peut trouver que loin d'ici.")
	ANSWER("Ca me va. Il faut quoi, et où est-ce que ça se trouve?", 7)
	ANSWER("Ah, parce qu'il y a des risques? Je suis qu'un client, moi, j'ai pas envie de risquer mon cul pour un truc pareil...", 32)
	
NODE(5)
	SAY("C'est une drogue rare, que je suis le seul à vendre. Elle améliore la constitution, c'est la meilleure drogue du genre. Si tu réussis à me trouver les composants, ça pourrait te rapporter gros. Mais pour rien te cacher, c'est plutôt risqué d'aller chercher ces machins.")
	ANSWER("Moi ça me plaît, je tente le coup.", 7)
	ANSWER("Risquer ma peau pour ça, non merci.", 32)
	
NODE(7)
-- description hunt 1
	SAY("Parfait. Alors voilà, j'ai besoin de produits chimiques qui se trouvent sur certaines plantes. Il m'en faudrait au moins deux de chaque.")
	ANSWER("Quel genre de plantes?", 8)

NODE(8)
	SAY("Ces plantes sont : Herbalis Aurora Carnivoris, Herbalis Natura Carnivoris, Herbalis Agrimonia Carnivoris.")	
	ANSWER("Noté. Et où est-ce que je trouve ça?", 9)

NODE(9)
	SAY("Le dernier type que j'ai envoyé en chercher en a trouvé dans Crystal Cave 3 , Swamp Cave 1 and Worm Tunnel 6. Par contre, il m'a pas dit quelle plante il avait trouvé à quel endroit.")
	ANSWER("Ca suffira, je me débrouillerai. Deux plantes de chaqueau moins, c'est ça?", 10)

NODE(10)
	SAY("Oui, deux de chaque.")
	ANSWER("C'est payé combien?", 11)
	
NODE(11)
	SAY("Ah oui, le paiement. Tu auras en échange une partie de l'Iceflash que je pourrai fabriquer avec ça. Tu le vends, tu le consommes, c'est ta vie, je m'en fiche.")
	ANSWER("Ca vaut le coup. J'y vais.", 20)



	
NODE(20)
	SAY("Ok, alors voyon ce que ça va donner. Oublie pas, deux plantes de chaque!")
	-- start mission 1
	
	STARTMISSION(missionid1)
	SETNEXTDIALOGSTATE(21)	
	ENDDIALOG()

NODE(21)
   if (node == state) then
	
	ISMISSIONTARGETACCOMPLISHED(0) 
	target0 = result
	ISMISSIONTARGETACCOMPLISHED(1)
	target1 = result
	ISMISSIONTARGETACCOMPLISHED(2)
	target2 = result
	

	if ( target0 == 1 and target1 == 1 and target2 == 1 ) then
		
		TAKEITEM(chem0_id)
		gotchem0 = result
		
		TAKEITEM(chem1_id)
		gotchem1 = result
		
		TAKEITEM(chem2_id)
		gotchem2 = result
		
		TAKEITEM(chem4_id)
		gotchem4 = result

		TAKEITEM(chem5_id)
		gotchem5 = result

		TAKEITEM(chem6_id)
		gotchem6 = result

				
		if (gotchem0 == 1 and gotchem1 == 1 and gotchem2 == 1 and gotchem4 == 1 and gotchem5 == 1 and gotchem6 == 1)  then
		-- killed all	
			-- and has chems in inv
			
			-- gives first reward
			
			GIVEITEM(reward1_id)
			ACTIVATEDIALOGTRIGGER(0)
			ACTIVATEDIALOGTRIGGER(1)
			ACTIVATEDIALOGTRIGGER(2)		
			
			SAY("Ok merci. J'y pense, tu en veux peut-être plus? Je pourrais en faire davantage si j'avais un autre produit chimique. On trouve ça dans les Terres Brûlées également. Ca te tente?")
			ANSWER("Si c'est pour avoir plus d'Iceflash, ça me tente.", 25)
			ANSWER("Non merci, j'en ai déjà assez.", 24)
		
		else
		
			--give items he had back to him
			if (gotchem0 == 1) then
				GIVEITEM(chem0_id)
			end
			if (gotchem1 == 1) then
				GIVEITEM(chem1_id)
			end
			if (gotchem2 == 1) then
				GIVEITEM(chem2_id)
			end
			if (gotchem4 == 1) then
				GIVEITEM(chem4_id)
			end
			if (gotchem5 == 1) then
				GIVEITEM(chem5_id)
			end
			if (gotchem6 == 1) then
				GIVEITEM(chem6_id)
			end
					
		end
		
		-- all killed, but not all chems in inv  
		
		SAY("Il me faut TOUS les produits chimiques, pas juste quelques uns. Ramène-moi tout d'un coup si tu veux qu'on fasse des affaires!")
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
		
		
			
	
	else
	
		SAY("T'as pas tout ce qu'il faut. Reviens quand tu as tout.")
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()

	
	end



   end
   
--it ends with the first mission
NODE(24)
	SAY("Ok tant pis, reviens plus tard si ça t'intéresse de bosser pour moi.")
	ACTIVATEDIALOGTRIGGER(3)
	ENDDIALOG()
	
   
--mission part 2
NODE(25)
	
	SAY("Ok Il me faut de l'l'ethylen, que tu trouveras sur 2 Herbalis Melaleuca Carnivoris, dans la Canyon Cave 6. Je te donnerai un gros tas d'Iceflash si tu m'en rapportes.")
	ANSWER("Je m'en occupe. Je commence à prendre la main à tuer ces plantes.", 26)
	ANSWER("Non merci, j'en ai ma claque.", 41)
	
	-- end mission part 1
	ACTIVATEDIALOGTRIGGER(3)
	
		        
        -- start mission part 2
        STARTMISSION(missionid2)
        
       	SETNEXTDIALOGSTATE(28)
	ENDDIALOG()

NODE(28)
	
   if (node == state) then
	
	ISMISSIONTARGETACCOMPLISHED(0) 
	target3 = result
	

	if (target3 == 1 ) then
		
		TAKEITEM(chem3_id)
		gotchem3 = result
		TAKEITEM(chem7_id)
		gotchem7 = result
		
		
		-- killed all
		
		if (gotchem3 == 1 and gotchem7 == 1) then
			
			SAY("Ok, merci et à la prochaine.")
			-- and has chems in inv  2
			
			--gives second reward
			GIVEITEM(reward2_id)
			ACTIVATEDIALOGTRIGGER(3)
			ENDDIALOG()
			
		else
			--give items he had back to him
			if (gotchem3 == 1) then
				GIVEITEM(chem3_id)
			end
			if (gotchem7 == 1) then
				GIVEITEM(chem7_id)
			end
				
		end
		
		
		-- all killed, but not all chems in inv 
		
		SAY("Où sont les produits chimiques? Tu étais pas censé me ramener tout d'un coup?")
		SETNEXTDIALOGSTATE(28)
		ENDDIALOG()
		
			
	
	else
	
		SAY("J'en ai vraiment besoin, ne reviens pas tant que tu n'as pas ce que j'ai demandé.")
		SETNEXTDIALOGSTATE(28)
		ENDDIALOG()

	
	end



   end


-- no answers mission part 1
NODE(30)
	SAY("Arrête avec tes grands airs...")
	ANSWER("Tu cherche les emmerdes?", 31)
	
NODE(31)
	SAY("J'ai rien dit...")
	ENDDIALOG()

NODE(32)
	SAY("Alors fous-moi la paix!")
	ENDDIALOG()

NODE(33)
	SAY("Dommage, je paie en drogues top qualité. Allez, au revoir, je dois me trouver un nouvel employé.")
	ENDDIALOG()





-- no answers mission part 2	
NODE(40)
	SAY("Si vous voulez pas...")
	ENDDIALOG()

NODE(41)
	SAY("Laissez tomber...")
	ENDDIALOG()




end