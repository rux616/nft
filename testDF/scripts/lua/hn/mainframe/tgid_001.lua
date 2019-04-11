--************************
--name   : caid_001.lua
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
DBNAME="Twilight Guardian Broadcasting Daemon v0.0.1"
FACNAME="TwilightGuardian"
FACSLOGAN="Freedom is our law!"
FACGENERAL="General Faction Information\n The group represents the political resistance against Lioon Reza and his regime. Twilight Guardian was based in a winding canyon in the Wastelands where it plans its attacks on the government."
FACHQ="Faction Headquarter\n DOY SEC 01"
FACPERS="Key Personalities\n The Twilight Guardian leader, Hagen Yager, aged 79, was once a good friend of Lioon Reza. Together they founded the rebel organization which fought against the reign of the Psi-Monks for the freedom of Neocron's citizens. Full of idealism, Hagen believed in Lioon's democratic objectives and convictions which he had shared since his youth in the suppressed city of Neocron. However, since Lioon established himself as dictator of Neocron, Hagen leads the resistance against his former comrade. \n Nineteen-year-old genius Cole 'Flash' Khan is Twilight Guardian's SysAdmin. Cole uses his knowledge to brilliantly plan the actions and calculate the risks of the Twilight Guardian. Because of his exceptional intelligence, Neocron's company networks and terminals are in grave danger."
FACHISTORY="Faction History\n Twilight Guardian was founded by Reza and Yager in 2722. The objective of the co-founders was to overthrow the government of the Psi-Monks from within the underground. The group experienced tremendous support from all parts of society. The coup was planned for the following year. Lioon, who had become more and more aggressive during the past months, planed to chase the Psi-Monks out of the city by force. \n In 2724 the Twilight Guardian managed to overthrow the government of the Psi-Monks and to drive the government members from the city. Many Psi-Monks from the former government withdrew to the old Crahn Abbey in the Wastelands. In the aftermath of the victory, a dispute evolved between Yager and Lioon. Lioon publicly declared that he planned to take over Neocron, thus betraying the mutual plan to establish a democracy in Neocron. The next morning Lioon had the CityAdmin building surrounded by black and white robot-like creatures which drove the members of the Twilight Guardian out of the building. Yager could not explain Lioon's sudden change of heart, nor did he know where the strange creatures came from. They later became known as Cop- and STORM-Bots. One year later Lioon had established himself as the new dictator of Neocron. He installed the CopBot system in the city. Laws were strongly simplified, penalties greatly increased. In 2726 Yager, feeling betrayed, knew that he had to start anew. \n He decided to continue leading the Twilight Guardians and set a new goal; to overthrow Lioon Reza. The majority of the former followers joined him. The resistance was built up again and a modern secret base built in the Wastelands. In spite of several attacks, the Guardian cannot effectively succeed in weakening Lioon's power in 2750. The army of Cop- and STORM-Bots that protects the CityAdmin 24 hours a day is too strong. Yager is now an old man, who feels that his time is running out."
FACRUMORS="Faction Rumors\n  "
FACREL="Faction Relations\n Since the rebels cannot afford to be selective in choosing their allies at the moment, they even try to stay on good terms with the Brotherhood of Crahn. After all, they do have a common enemy in the government, although it is obvious that the factions could never agree on a specific political system. The Fallen Angels, like the Anarchy Breed, are allied to the resistance fighters by their conviction that the present governmental system is not the right thing. The scientists supply medication and information to the Guardian and are in return protected by the rebels at all times. \n To say that the CityAdmin is the freedom fighters' main foe is superfluous. Consequently, all legal (and therefore pro-government) companies in Neocron are also opposed to the Twilight Guardian. These are BioTech Industries, Tangent Technologies Inc., NEXT Systems Inc and Diamond Real Estate. These companies employ the services of the CityMercs to fight the rebels. As a revolution would endanger the Black Dragon's real estate business, the Clan has no sympathies for Twilight Guardian either."

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

