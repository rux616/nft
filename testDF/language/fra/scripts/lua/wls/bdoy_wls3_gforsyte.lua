-- **********************************
-- Scenario "Herbal Hunt NC Gerald Forsyte"
-- v 1.01
-- Author: HQuint
-- ************************


--mission id

missionid1 = 3800



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
-- Amphidextrine, Amphidextrine Big Pack

reward1_id = 11017
reward2_id = 11018

--functions#################





--##########################

function DIALOG()


NODE(0)
   if (node==state) then
		
	-- pro city id is wanted
	DOYALIGNMENT()
		if (result == -1) then
			
			GETFACTIONSYMPATHY(6)
			pp_symp = result 
			
			if (pp_symp > 50) then
				SAY("Tiens, un employ� de ProtoPharm... Qu'est-ce que vous me voulez?")
				SAY("Wow, c'est la premi�re fois que je vous vois depuis que j'ai quitt� ProtoPharm!")
				ANSWER("Je voulais justement passer voir ce que devenait un de nos meilleurs assistants. Vous m'avez l'air de bien vous d�brouiller depuis votre renvoi de la compagnie. Pour quel motif, d�j�? Des drogues que vous aviez fabriqu�es � partir de leurs stocks? J'ai l'impression que maintenant vous avez fait votre petit stock personnel pour �viter ce genre d'ennuis...", 15)
				ANSWER("Je n'ai besoin de rien, je me demandais juste ce que vous faisiez ici...", 32)
			end 
			
			SAY("Bonjour, je peux vous aider?")
			ANSWER("Hmm... Je pensais que c'�tait vous qui aviez besoin d'aide?", 1)
			ANSWER("D�gage!", 31)	
			
		else
			
			SAY("Va te faire foutre, salet� du D�me..")
			ENDDIALOG()			
			
		end
   end

-- the normal discussion path
NODE(1) 
	SAY("Ah, vous cherchez du travail, on dira�t? ")
	ANSWER("En effet. Vous pensez que je pourrais vous rendre service? ", 2)
	ANSWER("Peut-�tre, si vous payez bien...? ", 4)

NODE(2)
	SAY("Je fabrique des drogues de combat un peu particuli�res. J'ai l�ch� ProtoPharm et j'ai mont� ma propre bo�te, j'ai beaucoup plus de libret� que dans une compagnie aussi �troite d'esprit. ")
	ANSWER("Et vous avez besoin de gens pour vous fabriquer des produits chimiques? ", 3)
	ANSWER("Et vous voulez que je vous apporte des produits chimiques pour fabriquer votre drogue? ", 4)

NODE(3)	
	SAY("En fait, je vous voyais m'aider � rassembler ces produits, justement. ")
	ANSWER("Dites-moi ce que je dois faire, et je vous dirai si �a me convient. ", 7)

NODE(4)
	SAY("On va bien bosser ensemble, vous avez l'air de comprendre plus rapidement que les autres. ")
	ANSWER("Merci. Alors dites-moi, comment �a se passe pour la suite? ", 7)
	
NODE(7)
-- description hunt 1
	SAY("Alors... Vous devez en fait cueillir certaines plantes, qui donnent des substances particuli�res. Il vous faut au moins 6 produits chimiques diff�rents. ")
	ANSWER("Quel genre de plantes? ", 8)

NODE(8)
	SAY("Herbalis Aurora Carnivoris, Herbalis Natura Carnivoris et Herbalis Agrimonia Carnivoris. ")	
	ANSWER("Compris. Et o� est-ce qu'on en trouve? ", 9)

NODE(9)
	SAY("Le dernier type que j'ai envoy� en chercher m'en a ramen� de Swamp Cave 2, The Grave et Swamp Cave 3. Mais je ne sais plus quelle plante se trouve � tel ou tel endroit. ")
	ANSWER("Ca me suffira, je vais voir �a par moi-m�me. Au moins six produits chimiques diff�rents, on est bien d'accord? ", 10)

NODE(10)
	SAY("Exact. ")
	ANSWER("Et �a paie combien? ", 11)
	
NODE(11)
	SAY("Ah oui, la paie... Vous pourrez prendre une partie de la production pour votre usage personnel, ou bien pour la vendre si �a vous chante. C'est de l'Amphedextrine, la meilleure drogue de constitution du monde entier. Et je suis le seul � conna�tre la recette!")
	ANSWER("Alors �a vaut le coup. Je pars vous trouver �a. ", 20)


--the PP discussion path
NODE(15)
	SAY("Nan, j'ai QUITTE ProtoPharm, personne ne m'a jamais vir�! Et je me d�brouille tr�s bien sans cette compagnie � la con. Maintenant, j'ai ma propre entreprise! ")
	ANSWER("Int�ressant... Et vous... euh... vous vous d�brouillez comment pour les produits chimiques, maintenant? ", 16)

NODE(16)
	SAY("Je paie des runners pour qu'ils me les r�coltent sur certaines plantes. C'est directement de la source, donc c'est la meilleure qualit� possible! ")
	ANSWER("Etant donn� que vous vous �tes sp�cialis�, c'est pas b�te du tout en effet. ", 17)
	ANSWER("Et vous cherchez des runners pour vous approvisionner, si je comprends bien...? ", 18)

NODE(17)
	SAY("Oui, et �a tourne tr�s bien, je suis mon propre patron. Au fait, si vous allez dans les Terres Br�l�es � l'occasion... ")
	ANSWER("Oui je compte y aller prochainement. Qu'est-ce que vous pourriez me payer si je vous ramenais quelques produits chimiques? ", 19)
	ANSWER("Pas vraiment, mais si la paie �tait bonne, je pourrais me forcer. ", 19)
	ANSWER("Non, ne le prenez pas mal mais je n'ai pas envie de travailler pour vous. ", 33)
	
NODE(18)
	SAY("Bien vu, il m'en faut. Si vous m'en rapportez, la paie sera bonne. ")
	ANSWER("Je ne travaillerai pas pour vous, m�me si vous me payez. Je connais trop vos habitudes. ", 33)
	ANSWER("Dites-moi la paie, que j'y r�fl�chisse. ", 19)
	
NODE(19)
	SAY("Ca sera la m�me paie que pour tout le monde : de la drogue. On parle d'Amphedextrine, la meilleure drogue de constitution du monde. J'esp�re que �a fait avancer les n�gociations dans le bon sens? ")
	ANSWER("Je ne me drogue pas, donc �a ne me servira � rien, mais je pourrai au moins le revendre. Dites-moi ce que je dois faire. ", 7)
	ANSWER("Je ne veux pas toucher � vos drogues, pas question que je vous aide.  ", 32)
	ANSWER("Ouah de l'amphedextrine! Vous �tes quelqu'un de bien, dites-moi ce que je dois faire! ", 7) 	
	
	
NODE(20)
	SAY("Voyons ce que vous allez me rapporter. N'oubliez pas, au moins six produits chimiques diff�rents! ")
	-- start mission 1
	
	STARTMISSION(missionid1)
	SETNEXTDIALOGSTATE(21)	
	ENDDIALOG()

NODE(21)
   if (node == state) then
	
	ISMISSIONTARGETACCOMPLISHED(0) 
	target0 = result
	--ISMISSIONTARGETACCOMPLISHED(1)
	--target1 = result
	--ISMISSIONTARGETACCOMPLISHED(2)
	--target2 = result
	

	--if (target0 == 1 and target1 == 1 and target2 == 1) then
	if (target0 == 1) then
		
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

				
		if (gotchem0 == 1 and gotchem1 == 1 and gotchem2 == 1 and gotchem4 == 1 and gotchem5 == 1 and gotchem6 == 1) then
		-- killed all	
			-- and has chems in inv
			
			-- gives first reward
			
			GIVEITEM(reward1_id)
			ACTIVATEDIALOGTRIGGER(0)
			ACTIVATEDIALOGTRIGGER(1)
			--ACTIVATEDIALOGTRIGGER(2)
			-- start mission part 2
        		STARTMISSION(missionid2)		
			
			SAY("Merci beaucoup. Au fait, vous en voulez d'autres? Je pourrais en produire plus, mais il me faudrait un autre produit, qui se trouve aussi dans les Terres Br�l�es. Ca vous dirait d'aller me chercher �a? ")
			ANSWER("Si �a permet d'obtenir plus de drogue, je suis pour. ", 25)
			ANSWER("Non merci, j'en ai suffisamment pour l'instant. ", 24)
		
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
		
		SAY("Il me faut tous les produits chimiques, pas seulement quelques uns. Ramenez-moi tout d'un coup si vous voulez que je vous paie. ")
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
		
		
			
	
	else
	
		SAY("Il en manque encore. Revenez quand vous aurez tout ce que je vous ai demand�. ")
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()

	
	end



   end
   
--it ends with the first mission
NODE(24)
	SAY("Pas grave, repassez plus tard si �a vous int�resse � nouveau. ")
	ACTIVATEDIALOGTRIGGER(0)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
	
   
--mission part 2
NODE(25)
	
	SAY("Il me faut les prot�ines contenues dans deux Herbalis Melaleuca Carnivoris. On les trouve dans le Worm Tunnel 3. Je vous donnerai en �change de l'Amphedextrine. ")
	ANSWER("Je vais m'en occuper, je connais bien le coin, avec ces esp�ces de trucs �nerg�tiques... ", 26)
	ANSWER("Non merci, j'en ai assez. ", 41)
		        
        -- end mission part 1
	--ACTIVATEDIALOGTRIGGER(3)
	
		        
        --start mission part 2
        --STARTMISSION(missionid2)
        
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
			
			-- and has chems in inv
			
			--gives second reward
			GIVEITEM(reward2_id)
			ACTIVATEDIALOGTRIGGER(0)
			ACTIVATEDIALOGTRIGGER(1)
			
			
			SAY("Ok, thx and bye.")
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
		
		SAY("O� sont les produits chimiques? Vous n'�tiez pas sens� tout m'apporter d'un coup? ")
		SETNEXTDIALOGSTATE(28)
		ENDDIALOG()
		
			
	
	else
	
		SAY("Il me faut tout d'un coup, ne revenez pas tant que �a n'est pas le cas. Sinon je ne peux rien en faire. ")
		SETNEXTDIALOGSTATE(28)
		ENDDIALOG()

	
	end



   end


-- no answers mission part 1
NODE(30)
	SAY("Si vous voulez continuer � vous la p�ter... ")
	ANSWER("Vous cherchez les ennuis ? ", 31)
	
NODE(31)
	SAY("Ok ok j'ai rien dit... ")
	ENDDIALOG()

NODE(32)
	SAY("Alors fichez-moi la paix et allez-vous en! ")
	ENDDIALOG()

NODE(33)
	SAY("Dommage, c'est pourtant une belle drogue. Bien, laissez-moi tranquille, j'ai du monde � recruter. ")
	ENDDIALOG()





-- no answers mission part 2	
NODE(40)
	SAY("Comme vous voulez... ")
	ENDDIALOG()

NODE(41)
	SAY("Ok tant pis ... ")
	ENDDIALOG()




end