-- **********************************
-- Scenario "The Juggernaut Facility"
-- v2.04
-- Author: HQuint
-- ************************

-- Basic Structure

-- Info:
-- NPC: Questgiver: NODE(0) - REWARDGIVER: NODE(50) - DECRYPTGUY: NODE(100)
-- Description IDs 11100 / 11101

missionid1 = 3804



-- Definitions
-- *** Rewards
prim_goal_reward_credits = 50000 ;	-- 150k credits
prim_goal_reward_item = -1 ;		-- no item
sec_goal_reward_credits = 0 ;		-- no credits
sec_goal_reward_item = 11002 ; 		-- old coin

-- *** FlagIDs
prim_goal_flag = 0 ;
sec_goal_flag = 1 ;
morrison_flag = 0 ;

-- *** ItemIDs
encrypted_diary = 11000 ;
decrypted_diary = 11001 ;

-- *** temp vars within one dialog
took_encrypted = 0 ;

-- functions
-- *********

function REGIVE_DIARY()
	if (state==node) then
		if (took_encrypted==1) then
			GIVEITEM(encrypted_diary) ;
			took_encrypted = 0 ;
		end
	end
end

function TAKE_DIARY()
	if (state==node) then
		TAKEITEM(encrypted_diary) ;
		if (result==1) then
			took_encrypted = 1 ;
			result = 1 ;
		else
			result = 0 ;
		end
	end
end

function TAKE_FINAL_DIARY()
	if (state==node) then
		TAKEITEM(decrypted_diary) ;
		if (result==1) then
			result = 1 ;
		else
			result = 0 ;
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
	-- *** this on his first contact
	NODE(0)
		-- normal barkeeper behavior
		-- First only speak with him
		SAY("Je vous sers quelque chose?") 
		ANSWER("Un lait synthétique je vous prie.",  2)
		ANSWER("Une Cron55. Une fraîche.", 5)
		ANSWER("Vous avez du Warbot Cola glacé?", 7)
		ANSWER("Je ne bois que du Jack Whisky, vous en avez?", 9)
		ANSWER("Un Preachers Choice", 15) 
	
	--milk path
	NODE(2)
		SAY("Du lait? Oh putain, un buveur de lait a réussi à arriver jusqu'ici! Attendez, je regarde si j'en ai.")
		ANSWER("Qu'est-ce que vous avez contre le lait? C'est la meilleure boisson du monde, et ça maintient en bonne santé.", 3)
		ANSWER("Si vous n'en avez pas, donnez-moi un Warbot Cola à la place.", 7)
		ANSWER("Fermez-la et donnez-moi mon lait.", 18)
	
	NODE(3)
		SAY("On fait attention à sa petite santé? Ok je vois le genre...")
		TAKEMONEY(70)
		GIVEITEM(811)
		ANSWER("Dans les Terres Brûlées, oui ça faut mieux...", 4)
	
	NODE(4)
		SAY("En effet c'est pas faux.")
		ANSWER("Tous les barmans me disent la même chose.", 20) 
	
	
	--cron path
	NODE(5)
		SAY("Evidemment, c'est la meilleure du coin!")
		TAKEMONEY(70)
		GIVEITEM(812)
		ANSWER("Ahhh ça c'est frais! Quel pied, merci mon gars!", 6)
		ANSWER("J'ai connu plus frais, mais ça ira.", 20)
	
	NODE(6)
		SAY("C'est bonnard. J'ai un sacré bon frigo ici.")
		ANSWER("Plutôt utile dans un coin perdu comme celui-ci.", 20)
		ANSWER("Les affaires marchent bien dans ce trou?", 25)
	
	--cola path
	NODE(7)
		SAY("Un Warbot Cola glacé... Ca devrait pas poser de problème, attendez que je regarde.")
		ANSWER("Si vous en avez, j'en prends un.", 8)
		ANSWER("Les affaires marchent bien dans ce trou?", 25)
		
	NODE(8)
		SAY("Et voilà.")
		TAKEMONEY(70)
		GIVEITEM(813)
		ANSWER("Merci.", 19)
	
	--Whisky path , barman is getting drunk
	NODE(9)
		SAY("C'est ce que je préfère aussi. Allez, je trinque avec vous.")
		TAKEMONEY(70)
		GIVEITEM(817)	
		ANSWER("Merci mon gars. C'est quand même une sacrée bonne gnôle, y a pas à dire!", 10)
		
	NODE(10)
		SAY("Ouaip. Ca arrache la tronche quand on boit ça cul sec, ouah!")
		ANSWER("Je suis plus du genre à savourer. Mais tenez, payez-vous en un autre, c'est ma tournée.", 11)
	
	NODE(11)
		SAY("Si c'est vous qui payez, je suis partant.")
		TAKEMONEY(70)
		ANSWER("Pourquoi pas... mais vous allez en profiter pour me parler de ce trou perdu.", 12)
	
	NODE(12)
		SAY("Ah ça, j'ai plein de choses à raconter... Mais d'abord, buvons!")
		TAKEMONEY(70)
		ANSWER("J'ai fini mon verre aussi, versez-moi un autre godet.", 13)
		ANSWER("Ok mais c'est le dernier que je paie.", 14)
	
	NODE(13)
		SAY("Et voilà l'vôtre... *hips*")
		GIVEITEM(817)
		ANSWER("Merci mon gars. Alors, qu'est-ce qu'il se passe d'intéressant ici?", 30)
	
	
	NODE(14)
		SAY("C'est l'dernier, alors... *hips* bon, quoi qu'c'est qu'vous voulez qu'j'vous raconte?")
		ANSWER("J'aimerais savoir s'il se passe des choses dans ce trou paumé!", 25)
	
	
	--Preachers Choice path
	NODE(15)
		SAY("Je vois qu'on a affaire à un connaisseur en whisky! Tenez!")
		TAKEMONEY(90)
		GIVEITEM(819)
		ANSWER("Merci beaucoup. L'alcool des braves!", 16)
		ANSWER("Ca fait du bien par où ça passe. Dites-moi, il se passe des choses ici? C'est la première fois que je viens...", 25)
		ANSWER("Devlin Jones... Je crois que je vous ai déjà croisé, mais ça doit faire des lustres.", 17)
		ANSWER("C'est pas donné, mais ça fait du bien!", 20)
	
	NODE(16)
		SAY("Haha, j'aime les gens dans votre genre!")
		ANSWER("J'ai passé du temps pour arriver là où j'en suis, vous savez?", 44)
		ANSWER("J'ai un talent inné, alors vous savez...", 20)
	
	NODE(17)
		SAY("Alors vous connaissez mon nom... J'ai un petit truc à vous raconter, mais jurez-moi que vous en parlerez à personne. Promis?")
		ANSWER("Pourquoi pas. J'écoute.", 30)
		ANSWER("J'ai pas le temps, peut-être une prochaine fois.", 19)
		ANSWER("Parlez-moi d'abord de l'endroit.", 25)
		ANSWER("Pas pour l'instant, laissez-moi boire tranquille.", 18)
	
		
	
	--shut up / end nodes
	NODE(18)
		SAY("Ok, compris.")
		ENDDIALOG()
		
	NODE(19)
		SAY("Ok, amusez-vous bien dans notre club.")
		ENDDIALOG()
	
	
	--what are you doing here 
	NODE(20)
		SAY("Alors, qu'est-ce que vous fichez ici, loin de tout?")
		ANSWER("Oh moi... je voyage, je visite le monde.", 21)
		ANSWER("Je cherche l'aventure dans les Terres Brûlées.", 44)
	
	NODE(21)
		SAY("Aha, et à part visiter le monde, vous faites autre chose?")
		ANSWER("En fait je suis une sorte d'explorateur.", 22)
	
	NODE(22)
		SAY("Alors j'ai peut-être quelque chose qui pourrait vous faire gagner un paquet de pognon.")
		ANSWER("Dites-moi ça.", 30) 	
	
	
	--what is this place
	NODE(25)
		SAY("Ce trou paumé, c'est le Twister Bar. Le proprio est un gars Tsunami qui s'est imaginé que c'était un coin sympa, et il a décidé d'y planter un bar pour abreuver tous les chasseurs des environs.")
		ANSWER("Les chasseurs? Ils chassent des monstres?", 26)
		ANSWER("Oui j'ai entendu dire que l'action ne manquait pas dans le coin.", 28)
		
	NODE(26)
		SAY("Ouais, de sacrés gros warbots, mais vraiment énormes hein! Pourquoi? Vous voulez vous y frotter?")
		ANSWER("Et comment!", 30)
		ANSWER("Pas du tout, je viens ici pour boire!", 19)
		
	NODE(28)
		SAY("Alors j'ai une histoire pour vous.")
		ANSWER("J'écoute...", 30)
		
	
	
	
	
	--Devlin Jones story long 
	NODE(30)
		SAY("Alors je vais vous raconter pourquoi je suis coincé dans ce trou paumé. Vous savez, je faisais autre chose avant d'être barman. J'étais responsable d'une expédition dans les Terres Brûlées.")
		ANSWER("Ah ouais! Et comment est-ce que vous avez fini ici?", 31)
	
	NODE(31)
	  if (node == state) then
		
		GETFACTIONSYMPATHY(3)
		if (result > 40) then
			SAY("Euh... Vous bossez pour NExT, vous, non?")
			ANSWER("En effet, c'était pas dur à deviner. ", 32)
			ANSWER("Pas vraiment...",  38) 
			
		end	
			
		SAY("L'exploration que j'ai menée a été un fiasco complet, on a presque tous été tués.")
		ANSWER("Navré de l'entendre... En quoi consistait l'expédition?", 38)
	
	  end
	
	-- NExT affilate path
	NODE(32)
		SAY("Alors on va trinquer tous les deux avec cette excellente picole. Vous voyez, moi aussi je suis un ancien de NExT. Je menais une mission d'exploration d'un site pas très loin d'ici. Vous avez entendu parler des Juggernauts? On est partis à leur recherche, et on a fini par mettre la main dessus. Mais on aurait pas dû. Je pense que ça a été effacé de la base de données de NExT, mais ça doit encore se trouver dans certains fichiers bien protégés.")
		GIVEITEM(819)
		ANSWER("Jamais entendu parler de ces Juggernauts. Qu'est-ce qui s'est passé ensuite?", 33)
		ANSWER("J'ai entendu quelques rumeurs au sujet d'une mission et de Juggernauts, mais c'est tout.", 33)
		
	NODE(33)
		SAY("C'est nous qu'on a trouvé l'usine de Juggernauts. C'était une vieille usine du Dôme, en fait. Ils étaient tous désactivés. Et là, Kaytlin... le docteur Morrison a commencé à farfouiller dans le gros ordinateur qui se trouvait là, et d'un coup ils se sont mis en branle. Ils ont trucidé presque tout le monde!!")
		ANSWER("Sale histoire... Heureusement que vous avez survécu!", 34)
	
	NODE(34)
		SAY("Ouaip, comme vous dites. Mais depuis ce jour, je cherche à récupérer quelque chose qui est resté là-bas. Le docteur Morrisson a écrit un journal au sujet de ses recherches. Si je pouvais le récupérer, je comprendrais pourquoi ça s'est mal passé.")
		ANSWER("Et si je vous rapportais ça, vous seriez prêt à me payer combien?", 35)
	
	NODE(35)
	  if (node == state) then
		GENDERCHECK()
		if (result == 1) then
			SAY("L'ami, dans ce genre de coin votre espérance de vie chute à zéro si vous y allez seul. Mais si vous me rapportez ce journal, je vous paierai 150.000 crédits.")
			ANSWER("On va voir, mais je pense que mon espérance de vie est en sécurité.", 36)
		else
			SAY("Ma petite dame, dans ce genre de coin votre espérance de vie chute à zéro si vous y allez seule. Mais si vous me rapportez ce journal, je vous paierai 150.000 crédits.")
			ANSWER("On va voir, mais je pense que mon espérance de vie est en sécurité.", 36)
		end
	  end

	NODE(36)
		SAY("Si vous voulez y aller... C'est votre vie que vous risquez, pas la mienne.")
		ANSWER("Alors allons-y.", 49)
		ANSWER("Je ferais peut-être mieux de ne pas y aller. Je crois que je vais rester là avec mon verre.", 19)
	
	-- normal path
	NODE(38)
		SAY("Moi et ma team, on bossait pour une grosse compagnie de Neocron. Ils nous ont dit de fouiller une vieille usine de fabrication de Warbots du Dôme. On y est allés, mais on est presque tous morts.")
		ANSWER("Eh ben...", 39)

	NODE(39)
		SAY("J'ai réussi à m'en tirer, et depuis je suis barman dans le coin. Tenez, si vous voulez me rendre un petit service, je pourrais vous payer en conséquence.")
		ANSWER("Me payer? Ca m'intéresse. Qu'est-ce que je dois faire?", 40)
	
	NODE(40)
		SAY("Il faudra aller me chercher quelque chose qui se trouve à l'endroit dont je viens de vous parler. Mais ça ne sera pas facile. C'est un coin vraiment dangereux.")
		ANSWER("Les Warbots de l'usine sont encore actifs.", 41)
	
	NODE(41)
		SAY("Oui, et on ne parle pas des Warbots habituels. Ils sont encore plus grands et plus puissants qu'un Titan, pour vous donner une idée. Vous feriez mieux d'emmener du monde avec vous. Je vous paierai 150.000 crédits si vous me ramenez un journal qui se trouve là-bas.")
		ANSWER("Un journal? Qu'est-ce qu'il a de si spécial pour valoir une somme pareille?", 42)
	
	NODE(42)
		SAY("Il détaille la mission d'exploration. Il a été écrit par le docteur Kaitlin Morrison. Trouvez-la, vous trouverez le journal.")
		ANSWER("Je vais tenter le coup, les Warbots géants ça m'intrigue.", 43)
		ANSWER("Ok, j'y vais.O", 49)
		ANSWER("Belle histoire, mais j'en crois pas un mot, alors arrêtez votre cinéma.", 18)
	
	NODE(43)
		SAY("Ils sont vraiment énormes et vraiments violents, vous ne vous en tirerez jamais en solo.")
		ANSWER("Alors je vais devoir demander de l'aide... Mais c'est d'accord, je m'en occupe.", 49)
				
		
		
	--direct access to mission with small story
	NODE(44)
		SAY("Voyons voir... J'ai quelque chose pour vous, mais qui risque de raccourcir votre espérance de vie, ça vous intéresse?")
		ANSWER("Evidemment! Plus c'est violent, plus ça me plaît." , 45)
		ANSWER("Ca n'est pas trop mon truc. Sans façons.", 19)
		ANSWER("Voyons voir ça, dites-moi ce quoi il retourne.", 45)
	
	NODE(45)
		SAY("Pour faire simple : j'étais le responsable de sécurité d'une équipe d'exploration NExT qui tentait de rassembler des informations au sujet d'une usine de Warbots du Dôme pas très loin d'ici. On a exploré un peu l'endroit, on a réussi la mission à moitié et la plus grande partie de mon équipe s'est fait aplatir par de gigantesques Warbots. Et quand je dis gigantesques, je pèse mes mots! Un des membres de l'équipe, le docteur Kaytlin Morrison, a rédigé un journal, et j'aimerais le récupérer. Il se trouvait sur elle au moment où elle a été tuée par les Warbots de l'usine.")
		ANSWER("Ca m'a plutôt l'air risqué, votre affaire.", 46)
		ANSWER("Et qu'estèce que vous voulez que je fasse?", 47)
		
	NODE(46)
		SAY("Un titan, on diraît un nain à côté de ces trucs. On s'est fait massacrer en quelques minutes. Si vous réussissez, je vous paie 150.000 crédits!")
		ANSWER("Je vais avoir besoin d'aide, je préviendrai des amis. Où se trouve l'entrée de l'usine?", 48)
		
	NODE(47)
		SAY("Je vous le répète, c'est vraiment dangereux. Vous devez fouiller le site du massacre et me rapporer le journai du docteur Morrison.")
		ANSWER("Compris.", 49)
		
	NODE(48) 
		SAY("Vous trouverez de vieilles ruines pas loin d'ici. L'entrée est là-dedans, mais elle est un peu cachée, vous devrez fouiller.")
		ANSWER("Ok, je vais voir ce que je trouve.", 49)
	
	
	--*** starting mission here/accept mission entrance description	
	NODE(49)
		SAY("Bonne chance à vous. Et n'oubliez pas le journal!")
		
		
		STARTMISSION(missionid1) ;
		SETNEXTDIALOGSTATE(50) ;
		ENDDIALOG() ;
		
	-- *** This is after he accepted everytime he returns
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(prim_goal_flag) ;
		if (result==0) then
			-- he previously did not return the encrypted
			TAKE_DIARY()
			if (result==1) then
				-- he had the encrypted with him
				-- so he did the prim goal
				GIVEREWARD(0) ;
				ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
								
				SAY("Vous l'avez trouvé? Merci infiniment! Tenez, pendant que vous êtes dans le coin, j'ai un autre truc à vous demander si vous voulez. J'aurai pour vous une vieille pièce de monnaie, quelque chose de très rare.")
				ANSWER("Pourquoi pas. C'est à quel sujet?", 52)
				ANSWER("Non merci, j'en ai assez fait pour aujourd'hui.", 51)
								
				
				
			else
				-- he did not have the encrypted
				-- maybe he has already translated it before returning
				TAKE_FINAL_DIARY()
				if (result==1) then
					-- ok, the guy already did everything
					-- give him both rewards
					GIVEREWARD(0) ;
					GIVEREWARD(1) ;
					-- and mark all as done
					ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
					ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
					SAY("Bien joué, merci beaucoup.") ;
					ENDDIALOG() ;
				else
					-- he did not bring any of the needed items yet
					SAY("Tant que je n'ai pas ce que je vous ai demandé, c'est inutile de revenir ici!") ;
					ENDDIALOG() ;
				end
			end
		else
			-- ok he was already here for the encrypted but wanted to decrypt it
			-- now test if he has done
				TAKE_FINAL_DIARY()
				if (result==1) then
					-- ok, the guy already did everything
					-- give him only sec reward, he previously got primary already
					GIVEREWARD(1) ;
					-- and mark all as done
					ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
					SAY("Bien joué, merci beaucoup.") ;
					ENDDIALOG() ;
				else
					-- he did not finish secondary goal
					SAY("Je vous ai demandé de le décrypter, alors faites-le, sinon pas de récompense.") ;
					ENDDIALOG() ;
				end
		end
		
		
	-- no secondary mission
	NODE(51)
		ACTIVATEDIALOGTRIGGER(sec_goal_flag)
		SAY("Alors merci beaucoup, à la prochaine.")
		ENDDIALOG()
	
	-- secondary mission description
	NODE(52)
		SAY("Voyez-vous, ce journal est protégé par un cryptage de haut niveau. Pour l'instant il ne me sert à rien, il me faut le code. Je connais un gars à la station de métro Pepper Park qui pourrait me donner un coup de main. Allez le voir, demandez-lui ce qu'il en pense.")
		ANSWER("Je vais aller voir ça. Quel est le nom de votre type?", 53)
		ANSWER("Pepper Park est à l'autre bout du monde, et j'ai pas le temps.", 51)
	
	NODE(53)
		SAY("Il s'appelle McCoy. C'est un gars un peu déjanté. Bonne route, et revenez vite!") 
		REGIVE_DIARY()
		SETNEXTDIALOGSTATE(50)
		ENDDIALOG()
		
				
			
		
	-- *** Frank McCoy - The guy that decrypts the diary
	NODE(100)
		SAY("Je n'achète rien, du vent!")
		ANSWER("Je n'ai rien à vendre, je viens vous demander de l'aide", 101)
		ANSWER("La ferme et décryptez-moi ça!", 115)
		
	NODE(101)
		SAY("De l'aide? Qui vous a dit que je pouvais vous aider?")
		ANSWER("Un barman du Twister Bar, dans les Terres Brûlées.", 102)
		ANSWER("Peu importe, je vous demande juste de décrypter ça!", 110)
	
	
	-- friendly McCoy
	NODE(102)
		SAY("Ah oui, je vois qui c'est. En effet, l'électronique et le cryptage, c'est mon domaine. Qu'est-ce que je peux faire pour vous?")
		ANSWER("Je savais que j'avais raison. J'ai ici un journal que j'ai besoin de faire décrypter.", 103)
	
	NODE(103)
		SAY("Je me lance. Mais ça sera pas gratuit. Il me faut 2000 crédits.")
		ANSWER("C'est d'accord. ", 109)
			
	NODE(109)	
		TAKEMONEY(2000)
		SAY("Ok, passez-moi le colis.")
		ANSWER("Voilà.", 120)
		
	
	-- angry mcCoy
	NODE(110)
		SAY("Je travaille pour QUI je veux, QUAND je veux!!")
		ANSWER("Pardon d'avoir été désagréable, je ne voulais pas.", 111)
		ANSWER("Je paie, alors vous allez le faire, compris?", 113)
		ANSWER("Vous allez le faire TOUT DE SUITE, et RAPIDEMENT, et SANS RIEN DEMANDER, c'est compris, petite tête?", 121)
		ANSWER("Faites-le, c'est tout...", 115)
	
	NODE(111)
		SAY("Je vais voir ça, mais ça sera pas gratuit. Je vous le fait à 5000 crédits, c'est ok?")
		ANSWER("Mouais.", 112)
	
	NODE(112)
		TAKEMONEY(3000)
		SAY("Ok, passez-moi le colis.")
		ANSWER("Voilà.", 120)
	
	NODE(113)
		SAY("Je vous fais ça pour 5000 crédits.")
		ANSWER("Ok.", 114)
	
	NODE(114)
		TAKEMONEY(5000)
		SAY("Ok, passez-moi le colis.")
		ANSWER("Voilà.", 120)
	
	NODE(115)
		SAY("Ok, mais je vous ferai pas de cadeau. Au fait, il faut que vous le sachiez, je suis le seul à pouvoir faire ce genre de boulot, si c'est ce à quoi je pense.")
		ANSWER("Je m'en fiche, faites-le, c'est tout.", 116)
	
	NODE(116)
		SAY("D'abord 7000 crédits.")
		ANSWER("QUOI? Vous êtes malade?", 117)
		ANSWER("J'espère que ça vaut son prix.", 119)
		
	NODE(117)
		SAY("Je suis pas malade. Mon travail = Votre pognon!")
		ANSWER("JAMAIS! Votre travail = pas de pognon! Compris? Maintenant, au travail!", 121)
		ANSWER("Euh... disons 3500 crédits?", 118)
	
	NODE(118)
		TAKEMONEY(4000)
		SAY("Va pour 4000.")
		ANSWER("C'est vous le boss.", 120)
	
	
	NODE(119)
		TAKEMONEY(7000)
		SAY("Ok, passez-moi le colis.")
		ANSWER("Voilà.", 120)
		
		
	NODE(120)	
		TAKE_DIARY()
		if (result==1) then
			GIVEITEM(decrypted_diary) ;
			SAY("Tenez, c'est décrypté.")
			ENDDIALOG()
		else
			SAY("Ouais ouais, vous me demandez de décrypter un machin, et vous l'avez même pas sur vous? C'est pas un programmeur qu'il vous faut, c'est un devin!")
			ENDDIALOG()
		end
	
	--very angry McCoy steals his money 
	NODE(121)	
		TAKE_DIARY()
		if (result==1) then
			GIVEITEM(decrypted_diary) ;
			TAKEMONEY(10000)
			SAY("Et voilà.")
			ENDDIALOG()
		else
			SAY("Ouais ouais, vous me demandez de décrypter un machin, et vous l'avez même pas sur vous? C'est pas un programmeur qu'il vous faut, c'est un devin!")
			ENDDIALOG()
		end	
		
	-- Dr. Morrison
	
	NODE(150)
		SAY("PARTEZ, PARTEZ, LES WARBOTS VONT VOUS ATTAQUER, PARTEZ TOUT DE SUITE!!")
		ANSWER("Du calme, Morrison, tout va bien...", 154)
		
	NODE(151)
		SAY("Non, vous les attaquez, ne leur faites pas de mal, ce sont mes Warbots!")
		ANSWER("Quoi? Euh... Ca va, vous êtes sûre?", 152)
		
	NODE(152)
		SAY("Ca va très bien, j'ai juste quelques contusions *tousse* Ne faites pas de mal à mes warbots! ILS SONT A MOI!!!")
		ANSWER("Je vois... Dites, docteur, j'ai juste besoin de vous demander quelque chose, et ensuite je m'en vais. D'accord?")
	
	NODE(153)
		SAY("Dites-moi ce que c'est et partez immédiatement!")
		ANSWER("Il me faut votre journal. Je crois que vous n'en avez plus l'utilité...?", 154)
	
	NODE(154)
		SAY("Quoi? Vous voulez *tousse* me prendre *tousse* mon journal?")
		ANSWER("J'essaie seulement de rassembler des données pour comprendre ce qui s'est passé ici.", 155)
		
	NODE(155)
			--checking if he already had one of the diaries		
			-- if (morrison_flag == 0) then
		SAY("Je suis en train de mourir, laissez mes Warbots tranquilles *tousse* Tenez, le voilà... *tousse* La clé de décryptage est Dwe44... *tousse* Maintenant, allez-vous en!")
		GIVEITEM(11000)
			--setting flag for dr morrison
			--morrison_flag = 1
		SETNEXTDIALOGSTATE(50)
--		DIE()
			--else 
			--	SAY("*tousse* AARRRGhhhhh...")
			--	DIE()
			--end		
		
		ENDDIALOG()
		
		
end

