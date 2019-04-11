--************************
--name   : ttid_001.lua
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
DBNAME="TangentTechnologies Broadcasting Daemon v0.0.1"
FACNAME="TangentTechnologies"
FACSLOGAN="In guns we trust"
FACGENERAL="General Faction Information\n Tangent develops weapons, basic technologies for weapon systems and other (mainly military) high-tech equipment."
FACHQ="Faction Headquarter\n Located in ViaRosso 2"
FACPERS="Key Personalities\n Hester Gabun, founder and former manager of Biotech Industries, founded Tangent in the year 2658 as an arms development department of Biotech. It was founded mainly to improve the poor financial situation of the parent company. \n Robert Jordan (92 years old, manager of Biotech Industries from 2691 to 2748 and still owner of the whole enterprise) is an old-line business man who enjoys watching his sons, Seymour and Damion compete each other as division managers since the splitting of the company in 2746. \n Manager: Damion Jordan, 30 years old and ambitious, suffers a little from absent-mindedness which is rumored to have been caused by the excessive use of badly prepared illegal substances in his youth. He does however have a feeling for business and this is why he leads by a hair's breadth in the competition with his brother. \n SysAdmin Chester Cohor, who is also known and respected as 'Rubik' in the virtual world, is 18 years old and a total computer addict."
FACHISTORY="Faction History\n  In 2658 Hester Gabun, one of the managers and founders of Biotech Industries, founded a special department named Tangent.\n Tangent's purpose was the development of highly effective new weapon systems. Due to the tense political situation in 2722, Tangent Technologies produced more weapons than ever. In 2746 Tangent Technologies branched off from Biotech Industries and became an independent company. Damion Jordan was appointed manager. Two years later, Robert Jordan presented the key to the headquarters of Tangent Technologies Incorporated to his son Damion and retired to enjoy his old age. \n In his will he stipulated that whichever of his two sons (Seymour and Damion) could show higher sales for his enterprise (Biotech Industries and Tangent Technologies), would inherit both companies. Since then, Damion and Seymour have been engaged in a vehement struggle. The companies' balance sheets are almost equal, but Damion is slightly in the lead. In 2750 Tangent Technologies suffers severely from researchers and technicians opting out and leaving the company to join the idealistic Fallen Angels. This in turn does not really improve Damion's attitude towards the scientists. "
FACRUMORS="Faction Rumors\n Not all of the weapons in Neocron are manufactured by Tangent. This, of course, is a situation with which Tangent is less than pleased. Tactics employed by Tangent to correct this are rumored to include contracted strikes by the CityMercs on these competing manufacturers and distributors. \n A less believable rumor suggests that Tangent also uses the Black Dragon Clan for more shady dealings. The connection is expanded by a rumored drug problem plagueing Tangent CEO, Damion Jordan. It is unclear how an addict could run a major corporation as well as Damion does, but the rumor suggests that the Black Dragon Clan has been quietly supplying Damion for most of his adult life. \n It may also be worth noting that information has surfaced regarding the 'in development' load out for the CityAdmin CopBots. The numbers associated with the new load out are a tenfold increase in CopBot speed and a hundredfold increase in their lethality. Hackers have noted an increase in Tangent's network security, suspecting that this implies that Tangent's network was recently compromised. For this reason, the CopBot information is being taken very seriously. Chester Cohor, Tangent's SysAdmin, has stated that the increased security is simply 'routine upgrading'."
FACREL="Faction Relations\n Tangent has taken over a cooperation agreement with NEXT Systems Inc. from former BioTech Industries. Together they develop combat mechs, tanks and other mobile arms systems. A similar contract with Diamond Real Estate in the fields of security systems and building security has only shortly been established. The CityMercs often carry out protection, guard, and also sabotage jobs for Tangent and belong to Tangent's best customers. As Tangent is one of the largest arms suppliers for the STORM- and CopBot squads, relations between the company and the administrative institutions of the city are naturally very good. \n Damion's arch enemy is his own brother Seymour, manager of Biotech Industries. Over the years, a deep hatred has evolved out of an old family dispute and the fierce rivalry with his brother. Damion accuses the Fallen Angels of malevolently harming his business, not least by luring his most talented researchers away. Although direct contact between Tangent and the Anarchy Breed is seldom, Damion is the main weapons supplier of the Breed's enemies. As Damion's profits considerably depend on the stability of the present order, he has no sympathy for the Twilight Guardian rebels."

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

