--************************
--name   : csid_001.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/21
--lang   : en
--desc	 : General Faction Information
--npc    : Hacknet Broadcast Daemon v0.1.1
--************************
--changelog:
--2004/09/21(0.1): built from snows template
--************************


-- faction information
DBNAME="Crahn Sect Broadcasting Daemon v0.0.1"
FACNAME="CrahnSect"
FACSLOGAN="1. Modify, 2. Manipulate, 3. Adopt"
FACGENERAL="General Faction Information\n The sect of the Psi-Monks produces Psi-utensils which are distributed via the Yakarma Stores in Neocron. The monks reside in an ancient abbey (and in the extensive subterranean complex of laboratories beneath it, or so rumors say) in the outer district of the Outzone. They also own a smaller estate in Pepper Park. Some say that they strive for domination over Neocron. The sect is also rumored to have built up a powerful private information service and to be prepared to sell information for money to just about anyone who can offer enough."
FACHQ="Faction Headquarter\n DOY SEC 02"
FACPERS="Key Personalities\n The spiritual leader, Archbishop Neopha Kansil, 63, is obsessed with the idea of creating a superior human race. It's rumored that he personally supervises the work in the secret laboratories beneath the abbey and, in spite of setbacks, he is full of hope."
FACHISTORY="Faction History\n In 2558 the overthrown and banished Crahn and his bodyguards founded the Order of Crahn. They lay the foundation stone for a secret headquarters under the ruins of a deserted abbey, in which they mainly researched psi-enforced implants and explored new psi-applications. \n After the Psi-Monks seized power in Neocron in 2611, many members of the Order returned to the city. The intensive research activities in the abbey were continued by a minimal crew. In 2693 rumors circulated of genetically engineered specimens that had escaped the laboratories. Three years later strangely misshaped spider-people haunted the Wastelands. In 2715 Neopha developed into a brilliant and energetic strategist. That year, he was appointed archbishop and consequently leader of Neocron. Nine years later the government of the Psi-Monks was overthrown. Neopha Kansil and his followers fled back to the Crahn Abbey. In 2728 the dictator Lioon Reza relaxed the banishment of the Psi-Monks. A small delegation of the Monks returned to Neocron and set up a base of operations for the Psi-Monks in Pepper Park."
FACRUMORS="Faction Rumors\n "
FACREL="Faction Relations\n The sect provides BioTech Industries with valuable information in return for biomedical equipment. Other good customers of its information services are ProtoPharm, the Black Dragon Clan and even the Twilight Guardian, despite the latter's ideological differences. \n After the Brotherhood base is set up in Pepper Park, the territory of the Tsunami Syndicate, there are violent clashes between the Psi-Monks and members of the Syndicate. The Fallen Angels' research activities make them an interesting target for the monks spy attacks. It is rumored that the Psi-Monks use followers of the Anarchists as guinea pigs for horrible experiments, though there's no hard proof. The Psi-monks hate Neocron's government and Lioon Reza, who overthrew the Psi-Monk government in the year 2724, but they are smart enough to come to terms with CityAdmin for the time being."

-- main dialog
function DIALOG()

NODE(0)
	SAY("Broadcast system establishing link ...... Link established ...... System ready:"..DBNAME)
	ANSWER("       - Continue",10)
	ANSWER("       - Abort",25)
NODE(10)
	SAY("Information categories")
	ANSWER("       - General Faction Information",15)
	ANSWER("       - Faction Headquarter",16)
	ANSWER("       - Key Personalities",17)
	ANSWER("       - Faction History",18)
	ANSWER("       - Faction Rumors",19)
	ANSWER("       - Faction Relations",20)
	ANSWER("       - Abort",25)
NODE(15)
	SAY(""..FACGENERAL)
	ANSWER("Back",10)
NODE(16)
	SAY(""..FACHQ)
	ANSWER("Back",10)
NODE(17)
	SAY(""..FACPERS)
	ANSWER("Back",10)
NODE(18)
	SAY(""..FACHISTORY)
	ANSWER("Back",10)
NODE(19)
	SAY(""..FACPERS)
	ANSWER("Back",10)
NODE(20)
	SAY(""..FACRUMORS)
	ANSWER("Back",10)
NODE(25)
	SAY("Closing Link ...... Disconnecting ......"..FACNAME.." - "..FACSLOGAN)
	ANSWER("       - Disconnect",26)
	ANSWER("       - Cancel",0)
NODE(26)
	SAY("Disconnecting")
	ENDDIALOG()
end

