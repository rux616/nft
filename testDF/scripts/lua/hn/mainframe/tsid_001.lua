--************************
--name   : tsid_001.lua
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
DBNAME="Tsunami Syndicate Broadcasting Daemon v0.0.1"
FACNAME="TsunamiSyndicate"
FACSLOGAN="Our business is your pleasure"
FACGENERAL="General Faction Information\n The Syndicate is in absolute control of prostitution, gambling and the extortion of protection money. In Pepper Park it controls the red-light district and the stores on all levels of the district and the dome."
FACHQ="Faction Headquarter\n DOY SEC 07"
FACPERS="Key Personalities\n  At the moment, Veronique Duchamps, 27, controls Neocron's red-light world. This graceful high-class prostitute with the dreamy gaze of a drug-addicted angel had the sense to save some of her money and open her own establishment as soon as she could. The tragic unsolved death of her pimp together with three of his colleagues in a terrible sex crime helped her career a great deal. It made her a respected member of the scene. Her bad experiences with drugs made her become a fierce enemy of any kind of medication, which is what saved her from the effects of the 'Spirula' scandal. \n Reginald 'Flux' Axom, 45, is a Psi-Monk blessed with curing abilities. Because of his sympathy for Madame Veronique, he decided to turn his back on the Brotherhood and become SysAdmin and advisor for the Syndicate."
FACHISTORY="Faction History\n  Neocron is not much different than anywhere else. There is an endless chain of fraternization and disputes, trade and blackmailing, arrangement and fraud. \n That's why in 2750 the 'Pussy Club' is one of the oldest clubs in Pepper Park. It specializes in fulfilling the exclusive wishes of rich men and women and is often the meeting point for conversations that are not for public ears. Absolute discretion is Madame Veronique's credo. Even though Veronique doesn't want to have anything to do with drugs, the Syndicate is far from harmless: Without any doubt, the Tsunami Syndicate belongs to the most brutal and unscrupulous factions in Neocron."
FACRUMORS="Faction Rumors\n  "
FACREL="Faction Relations\n  BioTech Industries has good connections with Neocron's red-light district, which it provides with medical equipment and implants in exchange for certain favors on the part of the mafia. \n The Anarchists are amongst the best clients of the Syndicate and, in addition, many recruits of the Syndicate come from the Anarchy Breed. It is rumored in Neocron that the Tsunami maintains contact with some mutants, although nobody can conceive of a plausible reason for that, as the mutants have nothing to offer to the established society. \n Madame Veronique hates drugs, withdrawal medication and everything that has anything thing to do with pharmaceuticals. It's obvious why the Black Dragon and ProtoPharm are at the top of the list in her black book. Tsunami accepts missions from BioTech Industries that are directed against the Clan. There are often bloody clashes between the two factions and an end to the war is not in sight. \n CityAdmin / NCPD: Cooperation between the government and the Syndicate is not completely unimaginable. Most of the Tsunami activities are basically harmless for the population and even very profitable. On the other hand, the Tsunami are a mafia organization ... which doesn't pay taxes."

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

