--************************
--name   : cmid_001.lua
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
DBNAME="CityMercs Broadcasting Daemon v0.0.1"
FACNAME="CityMercs"
FACSLOGAN="Solving almost all your problems"
FACGENERAL="General Faction Information\n The CityMercs offer military services, carry out commissioned assassinations and are hired as personal protection or escorts by whoever can afford an appropriate payment for the assigned mission. Basically they have a certain moral conscience, but if in doubt the mercenary soul is stronger and for the right price (almost) everything is feasible."
FACHQ="Faction Headquarter\n Military Base in J01"
FACPERS="Key Personalities\n Tarok 'The Eye' Cajun, 53, leader of the CityMercs, is not only a powerful warrior but also a strategic genius with a brilliant eye for detail. He is always careful to keep the risks for his men as small as possible. \n Kim 'Sushi' MaWong, 31 is the SysAdmin of the mercenaries. This close-combat expert turned his back on his former employers, a criminal organization, after losing all hope of ever becoming SysAdmin there. The CityMercs have promised to protect Kim from possible attacks by his former friends."
FACHISTORY="Faction History\n In 2588, the GenTanks who survived the Neocron-York-War - as well as some humanoid veterans - built a sanctuary (the so-called bunker). This contained training facilities, an infirmary, living areas, a canteen, assembly rooms and a bar. Weapons were repaired and traded in the basement, and medikits and stimulants were sold. The facilities were free to all members of the troops. Under a normal contract mercenaries were obligated to fight until they are wounded. Under the conditions that prevailed in Neocron, CityMercs were not paid killers. Almost all jobs that the bunker arranges for its members were legal. The troops only accepted liquidation missions aimed at criminals or at people who, according to their moral sentiments, deserved to die. Over the years some traditions have developed regulating the affiliation of newbies and the relationships of mercenaries of different ranks (White, Red and Black Ribbons). In 2750 under the leadership of the Black Ribbons, the mercenary troops have good connections to all public institutions, the large companies and the underground. Most missions are based on long-term arrangements and are at most times a matter of routine."
FACRUMORS="Faction Rumors\n "
FACREL="Faction Relations\n A 'protection for equipment' agreement exists between BioTech Industries and Tangent Technologies Inc. The CityMercs also accept sabotage jobs but not against one of these companies. Tasks commissioned by NEXT Systems Inc are mainly directed against ProtoPharm. Interestingly, the opposite is also true. The mercenaries are called in by Diamond Real Estate for protection jobs, for example during when special events are held within the company's buildings. \n Sometimes there are minor clashes between the CityMercs and members of Brotherhood of Crahn and the Anarchists in the Wastelands, but generally they avoid each other. Mutant hordes in the Wastelands are a popular target of the CityMercs' clients. The mercenaries also accept missions against the Twilight Guardian rebels."

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

