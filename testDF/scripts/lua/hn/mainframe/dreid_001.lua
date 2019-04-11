--************************
--name   : dreid_001.lua
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
DBNAME="Diamond Real Estate Broadcasting Daemon v0.0.1"
FACNAME="Diamond Real Estate"
FACSLOGAN="It's where you live."
FACGENERAL="General Faction Information\n Diamond Real Estate is a privatized former department of the CityAdministration. Services include administration of and trade with real estate as well as the provision of security systems. Furthermore, a license system is used: Diamond entrusts buildings and streets to independent estate agents to some extent. "
FACHQ="Faction Headquarter\n Located in Plaza 3"
FACPERS="Key Personalities\n DRE's Manager, Eric Danmund, 36, is a shark - which is exactly what you have to be if you want to deal in real estate. His system of licensing streets and apartment blocks to small agencies produces considerable profits. "
FACHISTORY="Faction History\n Founded in 2746 by Lioon Reza, Diamond Real Estate served as a communal real estate company under the management of Eric Danmund. The company objective was to administrate and sell municipal real estate and regulate the seemingly anarchistic real estate market. In 2750 rumors circulate about external influences on Diamond by a large criminal organization."
FACRUMORS="Faction Rumors\n Generally speaking, any friend of CityAdmin is a friend of Diamond Real Estate. You will not find Diamond CEO Eric Danmund singing the praises of anti-establishment ruffians such as the Anarchy Breed or Twilight Guardian. Diamond has a vested interest in seeing that CityAdmin stays in control of the city. Diamond's business still depends on it and will continue to do so for a long time. Apart from that Diamond is on good terms whith the CityMercs. Though it's not too common that the real estate agency has work for the mercenaries, both parties are always satisfied when working whith each other."
FACREL="Faction Relations\n  Eric and Craig Diggers, manager of NEXT Systems, are personal friends. The CityMercs are called in by Diamond for protection jobs, for example, when special events are held in the company's buildings. Recently Tangent Technologies Inc has begun providing Diamond with security systems in return for cheap real estate. Since Diamond Real Estate is a privatized former CityAdmin division, relations are naturally very good. \n The Anarchists threaten the ruling order in the city, and what is even worse, they don't care about real estate. If Danmund had his way, the whole mob would be wiped out as quickly as possible. The same is true for the Twilight Guardian."

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

