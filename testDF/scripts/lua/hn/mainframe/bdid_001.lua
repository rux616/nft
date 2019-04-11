--************************
--name   : bdid_001.lua
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
DBNAME="BlackDragon Broadcasting Daemon v0.0.1"
FACNAME="Black Dragon"
FACSLOGAN="Can you refuse our offer?"
FACGENERAL="General Faction Information\n The Clan controls almost the entire illegal drug market in Neocron. Furthermore, it is very actively involved in the real estate business controlling apartments and carrying out more or less violent 'dispossessions'. It does not flinch from eliminating unwanted tenants, either. The Black Dragon Clan is based in Pepper Park. Expansion into the prostitution business is planned."
FACHQ="Faction Headquarter\n DOY SEC 08"
FACPERS="Key Personalities\n  Maximillian Trond, 54, is a distinguished businessman with... style. He rules his organization like a patriarch and everyone around him knows that whatever he orders is best for the Clan. It is said that Trond's enemies tend to end up in deep holes out in the Wastelands, though no one has ever found any evidence to prove it. \n Leading accountant Torben 'Gecko' Manquist, 37, is Trond's right hand. Trond's wish is Manquist's command. Within the Clan, many believe that he will seize Trond's throne as soon as he has an opportunity."
FACHISTORY="Faction History\n In 2680, in the seething swamp of crime, the two criminals Nico 'Furry' Manecci and Jerry 'Dragon' Tosca merged their small and rather unimportant organizations to become the Black Dragon Clan. Soon, Nico Manecci's incompetence made it easy for Jerry to grab control of the drug empire for himself. In 2710 the young Max Trond joined the organization and drew attention to himself with his determination and cold-bloodedness. When Jerry Tosca fell victim to an attack by a STORM-Bot run amok in 2727, Maximillian Trond became his successor. In 2741 the organization profited cleverly from market turbulences following the discovery of Irata III and became the owner of entire streets and city districts. In 2750 Trond is still trying to expand into the business areas of the Tsunami Syndicate which often leads to conflict. Open war seems to be merely a question of time."
FACRUMORS="Faction Rumors\n "
FACREL="Faction Relations\n Many members of the Anarchy Breed are good customers of the Clan or part-time drug dealers - or both. Keeping up good relations with ProtoPharm and Diamond Real Estate is advantageous to the Clan's two main 'business units': drugs and real estate. The Brotherhood of Crahn is a valuable source of information. \n The Tsunami Syndicate, the second Mafia organization in Neocron, is the Clan's 'natural enemy', especially as it teams up with its legal counterpart (and victim) in the biotech branch: BioTech Industries. \n The Clan's hostility against the CityMercs stems from the 'treason' of one of the Clan's more important members. This man turned his back on the Black Dragons to become the SysAdmin of the mercenaries, who offer their protection services to many legal companies. The Fallen Angels disapprove of the Dragon's business habits, but are a tempting target for their expertise in medical research. Although the organization's relationship to the government and CityAdmin is naturally not very good (besides its social effects, its activities on the real estate sector decrease public income), the mafia's business still depends on the current political order, which is endangered by revolutionaries like the Twilight Guardian."

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

